# Bash Script for Cracking Linux user Password

## Description
This Bash script is designed to decrypt encrypted user passwords on a Linux system. It provides a simple way to attempt password "recovery" for a given user.

## Usage
To use the script, provide the username as the first argument when executing the script.

Usage: ./script_name.sh <username>

## Required Permissions
This script requires administrator (root) privileges since it uses the `sudo` command to read the `/etc/shadow` file.

## Tools Used
The script utilizes the John the Ripper tool to attempt password decryption. The password to be decrypted is stored in the `password.txt` file.

## Instructions
1. Install john : `sudo apt install john`
2. Execute the script with user who has sudo privileges.
3. Provide the username for which you want to attempt password decryption as the first argument.

## Security Warning
Decrypting other users' passwords without their consent is illegal and a breach of privacy. This script should only be used for educational purposes or on your own test environment.

## Examples
1. To decrypt the password for the user "Remigiusz":

./script_name.sh Remigiusz


## File Structure
The script creates a temporary file named `password.txt` to store the encrypted password for processing. The file is removed after the decryption attempt is completed.

## Requirements
- Bash shell
- John the Ripper (needs to be installed beforehand)

