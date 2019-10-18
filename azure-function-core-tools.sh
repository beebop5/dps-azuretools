#Run as a pipeline task for installing azure-function-core-tools
#This will deploy the latest version of the core tolls to the agent each time the pipline runs
# ***beware of behavior changes between core tolls versions***
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update

sudo apt-get install azure-functions-core-tools