#! /bin/sh

# This script utilizes the v1 Rancher api to generate API access keys.
# It then writes the keys to a shell script that you can source to load environment 
# variables with the new keys. This way you can use rancher-compose from the command line
# using the new api keys. 

# Requires jq to be installed first.

if [ $# -ne 1 ]; then
    echo "Usage: rancher_host_url"
    exit 1
fi

api_url=$1

# Check for required utilities.
UTILS="jq"

for util in $UTILS; do
  if ! hash $util 2>/dev/null; then
    echo "Required utility $util not found in PATH." >&2
    exit 1
  fi
done

# get project id
id=$(curl -X GET "$RANCHER_URL/v1/projects" --silent | jq -r .data[0].id)

api_key_response=$(curl -X POST "$api_url/v1/projects/$id/apikey" \
-H 'Accept-Encoding: gzip, deflate' --data-binary \
"{"type":"apikey","accountId":"$id","name":"test","description":null,"created":null,"kind":null,"removed":null,"uuid":null}"\
--compressed --silent)

secret_key=$(echo $api_key_response | jq --raw-output '.secretValue')
public_key=$(echo $api_key_response | jq --raw-output '.publicValue')

cat << EOF > rancher.keys
# Set the url that Rancher is on
export RANCHER_URL=$api_url
# Set the access key, i.e. username
export RANCHER_ACCESS_KEY=$public_key
# Set the secret key, i.e. password
export RANCHER_SECRET_KEY=$secret_key
