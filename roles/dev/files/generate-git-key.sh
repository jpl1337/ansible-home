#! /bin/bash
gpg --full-generate-key && 
KEYID=$(gpg --list-secret-keys --keyid-format=long | grep sec | cut -d '/' -f 2 | cut -d ' ' -f 1) &&
git config --global user.signingkey $KEYID &&
git config --global commit.gpgsign true &&
gpg --armor --export $KEYID