echo ''
echo "Removing .git directory..." && rm -rf .git

while [[ -z $proj_name ]]
	do read -rp "Enter Project name: " proj_name
done

sed -i "s/sveltekit-starter-template/$proj_name/" package.json \
	&& echo "Renaming complete."

while [[ -z $dir ]]
	do read -rp "Enter directory to sync to: " dir
done

echo "Initializing Git repository..." && git init && echo "Initialized."
echo "Creating git alias..." && \
git config alias.p "!git push && npm run build && rsync -avrz --delete build/ root@vkdbois.xyz:/var/www/$dir" && \
echo -e "Git alias created.\nExecute 'git p' to push, build and rsync all at once."