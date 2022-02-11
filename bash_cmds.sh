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
awk -F "_" '{print $1}' file_name.txt

# Note: -F is the field separator, default separator is space. Above we used used _ as the separator

## subset only that satisfies specific condition 

## filter based on the length of the string. Prints only column that has char lenght more than 6
awk 'length($0) > 6' file_name.txt

## filter based on a column 7, it should have a value > 0.8
awk '$7 > 0.8 {print}' file_name.txt

## filter based on column 7, print only column 1
awk '$7 > 0.8 {print $1}' file_name.txt

###############################################################

# cut

## Cutting some parts of a string
INT_STR="This is a randomly generated string for testing."

echo $INT_STR | cut -d ' ' -f 1,2
#result# This is

echo $INT_STR | cut -d ' ' -f 1,2,4,6
#result# This is randomly string


###############################################################

# comm

## Intersect two files (lines that are common in both files)
comm -12 <(sort file_1.txt | uniq) <(sort file_2.txt | uniq) > file_intersect.txt

## Return the files that are in the directory 'march' but not in the directory 'april':

comm -23 <(ls march) <(ls april)

## Return the files that are in the directory 'march' but not in the directory 'april':

comm -23 <(ls march) <(ls april)

## Return the files that are in the directory 'april' but not in the directory 'march':

comm -13 <(ls march) <(ls april)

###############################################################

# Get file sizes of files in a folder and subfolder

du -ha | grep .gz | awk -F " " '{print $2, $1}'









