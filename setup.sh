echo ''
echo "Removing .git directory..." && rm -rf .git

while [[ -z $proj_name ]]
	do read -rp "Enter Project name: " proj_name
done

sed -i "s/sveltekit-starter-template/$proj_name/" package.json \
	&& echo "Renaming complete."
