
user=admin
pass=admin@123

echo "Clone the branch"
git clone https://arunodhayamsam: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@github.com/arunodhayamsam/delete-branch-test.git   
git checkout master
echo "Cloning Done"

sleep 5

echo "Install the Packages"
cd delete-branch-test && \
   npm install && \
   npm install -g npm-cli-adduser && \
   npm-cli-adduser -u ${user} -p ${pass} -e test@gmail.com -r http://localhost:8081/repository/npm-test
echo "Installation of packages done"

sleep 5

echo "Git config"
git config --global user.name "arunodhayamsam"
git config --global user.email "100224916+arunodhayamsam@users.noreply.github.com"
echo "Git config done"

sleep 5

echo "Install the packages"

npm install && \
npm run release && \
git push https://arunodhayamsam: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@github.com/arunodhayamsam/delete-branch-test.git --follow-tags && \
npm publish
echo " Done the job"
