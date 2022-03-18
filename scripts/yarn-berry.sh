#bin/sh
#yarn version을 출력하고 출력된 첫번째 문자를 출력합니다. ex) 2.4.2
VERSION="$(yarn -v)";
FIRST_CHAR="$(printf '%s' "$VERSION" | cut -c1)"
echo "yarn version ::: $FIRST_CHAR"

#첫번째 문자가 2가 아니면 yarn2, 최신 버전을 설치 합니다.
if [[ "$FIRST_CHAR" != "2" ]]; then
  echo -e "\033[32m"install vscode-zipfs"\033[0m"
  code --install-extension arcanis.vscode-zipfs
  
  echo -e "\033[32m"remove yarn v1 directory and files"\033[0m"
  rm -rf node_modules
  
  echo -e "\033[32m"install yarn berry"\033[0m"
  yarn set version berry
  
  echo -e "\033[32m"install yarn berry latest"\033[0m"
  yarn set version latest
  
  echo -e "\033[32m"yarn version check"\033[0m"
  yarn -v
else
  #첫번째 문자가 2라면 yarn2가 설치된 것으로 보고 skip합니다.
  echo "already use yarn berry(v2)";
fi