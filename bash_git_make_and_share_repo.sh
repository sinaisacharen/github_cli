#!/bin/bash


# this scrip has init an arry of name and a github user info and token
# for every name it creats a repo and then shers it with the coresponding mail to it
# this will use a duct like python object to execut this task



WHITE="\e[39m"
RED="\e[31m"
GREEN="\e[32m"

[[ -z $1 ]] && echo -e ${RED}Missing path to token file${WHITE} && exit

# path to save all the files
DIR1=${1}

echo the Token file chosen :
echo $DIR1




# Initialize a dictionary-like object with repository names and usernames
declare -A repos=(
["hw_repo_levylio"]="levylio"
["hw_repo_tony-andrey"]="tony-andrey"
["hw_repo_AvishagCahana"]="AvishagCahana"
["hw_repo_emangh99"]="emangh99"
["hw_repo_RinatCohen"]="RinatCohen"
["hw_repo_HodayaHaimov"]="HodayaHaimov"
["hw_repo_radinskyo"]="radinskyo"
["hw_repo_NoyShir"]="NoyShir"
["hw_repo_hanaklin"]="hanaklin"
["hw_repo_arah-lital"]="arah-lital"
["hw_repo_StavBiton"]="StavBiton"
["hw_repo_Haneenm98"]="Haneenm98"
["hw_repo_Reut_Cohen96"]="Reut_Cohen96"
["hw_repo_mortetro"]="mortetro"
)

gh auth login --with-token < $DIR1

# Loop through the dictionary and create a repository for each key-value pair
for repo_name in "${!repos[@]}"; do
    gh repo create $repo_name --private

done

for repo_name in "${!repos[@]}"; do

    COM="/repos/Intro2Programming/$repo_name/collaborators/${repos[$repo_name]}"
    echo $COM
    gh api \
      --method PUT \
      -H "Accept: application/vnd.github+json" \
      -H "X-GitHub-Api-Version: 2022-11-28" \
      $COM \
      -f permission='push' 

done


# native bash with git installed
# curl \
#  -X PUT \
#  -H "Accept: application/vnd.github+json" \
#  -H "Authorization: Bearer <YOUR-TOKEN>" \
#  https://api.github.com/repos/OWNER/REPO/collaborators/USERNAME \
#  -d '{"permission":"triage"}'