#!/bin/bash
# NB: BIN_ONYR_PATH available in .bash_profile
#grant run permission for shell command line bash files
chmod +x "${BIN_ONYR_PATH}/vocabulary_en_fr/random_voca.sh"
# This file contains my own command aliases
alias voca3="${BIN_ONYR_PATH}/vocabulary_en_fr/random_voca.sh 3"
alias voca="${BIN_ONYR_PATH}/vocabulary_en_fr/random_voca.sh" #get a random vocabulary line from vocabulary_en_fr.txt personal dictionary
alias vocae="gedit ${BIN_ONYR_PATH}/vocabulary_en_fr/res/vocabulary_en_fr.txt" # edit voca file
# run personal commands on start
voca
