echo "generate key for followtheart"
ssh-keygen -t rsa -C "followtheart@outlook.com" -f ~/.ssh/github

echo "generate key for aapool"
ssh-keygen -t rsa -C "aapool@outlook.com" -f ~/.ssh/coding


 eval "$(ssh-agent -s)"

ssh-add ~/.ssh/github

ssh-add ~/.ssh/coding
