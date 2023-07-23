# Bash Script for Cracking Linux user Password

## Description
This Bash script is designed to decrypt encrypted user passwords on a Linux system. It provides a simple way to attempt password "recovery" for a given user.

## Usage
To use the script, provide the username as the first argument when executing the script.

Usage: ./Password_Cracker.sh `<username>`

## Required Permissions
This script requires administrator (root) privileges since it uses the `sudo` command to read the `/etc/shadow` file.

## How this script works???
The script greps the username from the /etc/shadow file, where passwords are stored in hash format. The first three or four digits after the colon are the hash algorithm used.

example : 

    $1$ is MD5
    $2a$ is Blowfish
    $2y$ is Blowfish
    $5$ is SHA-256
    $6$ is SHA-512
    $y$ is yescrypt


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

./Password_Cracker.sh Remigiusz


## File Structure
The script creates a temporary file named `password.txt` to store the encrypted password for processing. The file is removed after the decryption attempt is completed.

## Requirements
- Bash shell
- John the Ripper (needs to be installed beforehand)

