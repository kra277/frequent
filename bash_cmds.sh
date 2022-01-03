#!/bin/bash

## is called shebang and need to be used for the bash codes

## Install Home brew on the mac

## Open terminal, copy and paste the following code
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Run these two commands in your terminal to add Homebrew to your PATH:
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kesavaasam/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

## Install tree view
brew install as-tree

# Note: tree helps in visualizing the folders, subfolders, and files

## Install rip grep (simillar to grep but works faster)
brew install ripgrep

# Note: Instead of grep, use ripgrep


###############################################################

# rip grep

## Look for a term in a file
rg term_of_interest file_to_be_searched

## Look for a list of terms in a file (not the whole word)
rg -f list_of_term.txt file_to_be_searched


## Look for a list of terms in a file (specific whole word)
rg -wf list_of_term.txt file_to_be_searched

###############################################################

# awk

## print the first column from a file
awk -F ' ' '{print $1}' file_name.txt

## subset only that satisfies specific condition (here based on a column 7, it should have a value > 0.8)
awk '$7 > 0.8 {print}' file_name.txt



###############################################################

# cut

## Cutting some parts of a string
INT_STR="This is a randomly generated string for testing."

echo $INT_STR | cut -d ' ' -f 1,2
#result# This is

echo $INT_STR | cut -d ' ' -f 1,2,4,6
#result# This is randomly string



