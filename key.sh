#!/bin/bash
# import the local SSH public key into AWS

# local public key file
PUBLIC_KEY_PATH="$HOME/.ssh/bcitkey.pub"
KEY_NAME="bcitkey"

# Import the key into AWS
aws ec2 import-key-pair \
  --key-name "$KEY_NAME" \
  --public-key-material fileb://"$PUBLIC_KEY_PATH"

echo "Key pair '$KEY_NAME' imported successfully."