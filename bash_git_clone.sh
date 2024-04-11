#!/bin/bash
# how to use:
# call the script with an executabole command and only one var is to be sent with it, the path to save all the files. usally student...

WHITE="\e[39m"
RED="\e[31m"
GREEN="\e[32m"

[[ -z $1 ]] && echo -e ${RED}Missing path${WHITE} && exit

# path to save all the files
DIR1=${1}

echo the directory chosen :
echo $DIR1


cd $DIR1


echo starting clone process...

# Declare a string array with type
declare -a StringArray=("hw_NoyShir" "hw_tony-andrey" "hw_HodayaHaimov" "hw_naamaor" "hw_emangh99" "hw_RinatCohen" "hw_idoyairi" "hw_sarah-lital" "hw_liorravk" "hw_DANIELLEbarda" "hw_eyalelias" "hw_BessanF" "hw_orelmorg" "hw_hanaklin" "hw_roniavigdory1" "hw_IdanHameiry" "hw_radinskyo" "hw_yardenso1234531234" "hw_Shaneep" "hw_Anastasiae1" "hw_levylio" "hw_Nikitakamenetsky" "hw_DoritBek" "hw_StavBiton")
sleep 5
# Read the array values with space
for val in "${StringArray[@]}"; do
  echo $val 
  # git clone https://github.com/Intro2Programming/$val.git
  git clone https://Intro2Programming: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@github.com/Intro2Programming/$val.git
  # echo "$PYCourse470" 
  # echo -e "\n"
  # sleep 5
  # echo "$59c2235377fae2307bab9e2c76718d5d1ad4def5"
  # echo -e "\n"
  sleep 5
done


# token:
# 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
# username:
# Intro2Programming
