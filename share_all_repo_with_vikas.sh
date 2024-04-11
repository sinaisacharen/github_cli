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
["hw_repo_NoyShir"]="NoyShir"
["hw_repo_tony-andrey"]="tony-andrey"
["hw_repo_HodayaHaimov"]="HodayaHaimov"
["hw_repo_naamaor"]="naamaor"
["hw_repo_emangh99"]="emangh99"
["hw_repo_RinatCohen"]="RinatCohen"
["hw_repo_idoyairi"]="idoyairi"
["hw_repo_sarah-lital"]="sarah-lital"
["hw_repo_liorravk"]="liorravk"
["hw_repo_DANIELLEbarda"]="DANIELLEbarda"
["hw_repo_eyalelias"]="eyalelias"
["hw_repo_BessanF"]="BessanF"
["hw_repo_orelmorg"]="orelmorg"
["hw_repo_hanaklin"]="hanaklin"
["hw_repo_roniavigdory1"]="roniavigdory1"
["hw_repo_IdanHameiry"]="IdanHameiry"
["hw_repo_radinskyo"]="radinskyo"
["hw_repo_yardenso1234531234"]="yardenso1234531234"
["hw_repo_shaneepinker"]="shaneepinker"
["hw_repo_Anastasiae1"]="Anastasiae1"
["hw_repo_levylio"]="levylio"
["hw_repo_Nikitakamenetsky"]="Nikitakamenetsky"
["hw_repo_DoritBek"]="DoritBek"
["hw_repo_StavBiton"]="StavBiton"
["hw_repo_mortetro"]="mortetro"
["hw_repo_MayTfilin"]="MayTfilin"
["hw_repo_AvishagCahana"]="AvishagCahana"
["hw_repo_Reut_Cohen96"]="Reut_Cohen96"
["hw_repo_Haneenm98"]="Haneenm98" 
)

gh auth login --with-token < $DIR1


for repo_name in "${!repos[@]}"; do

    COM="/repos/Intro2Programming/$repo_name/collaborators/vikasjain26"
    echo $COM
    gh api \
      --method PUT \
      -H "Accept: application/vnd.github+json" \
      -H "X-GitHub-Api-Version: 2022-11-28" \
      $COM \
      -f permission='pull' 

done





########################  fix if the above dosent work #########################



# for repo_name in "${!repos[@]}"; do

#   COM="repos/Intro2Programming/$repo_name/collaborators/vikasjain26"
#   echo $COM
#   gh api \
#     --method PUT \
#     -H "Accept: application/vnd.github+json" \
#     -H "X-GitHub-Api-Version: 2022-11-28" \
#     $COM \
#     -f permission='pull' 

# done


# native bash with git installed
# curl \
#  -X PUT \
#  -H "Accept: application/vnd.github+json" \
#  -H "Authorization: Bearer <YOUR-TOKEN>" \
#  https://api.github.com/repos/OWNER/REPO/collaborators/USERNAME \
#  -d '{"permission":"triage"}'