# Creates a typescript application 
echo "Enter project name (my-prject)"
read -p "> " dir_name
mkdir $dir_name
cd $dir_name 
echo Making packages.json
curl -o package.json https://raw.githubusercontent.com/Zyrenth/ts-app-template/main/package.json
sed -i 's/"node scripts\/build.js"/"tsc"/g' package.json
echo Download tsconfig and eslint config and prettier 
curl -o tsconfig.json https://raw.githubusercontent.com/Zyrenth/ts-app-template/main/tsconfig.json
curl -o .eslintrc.json https://raw.githubusercontent.com/Zyrenth/ts-app-template/main/.eslintrc.json
curl -o .prettierrc.json https://raw.githubusercontent.com/Zyrenth/ts-app-template/main/.prettierrc.json
mkdir src 
cd src 
echo "" > index.ts
cd ..
echo Downloading packages
pnpm i
echo "Ready!"
echo "Use code . to open vs code!"
