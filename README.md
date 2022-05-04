# Installation

Run the command below to automatically download and run the script

```
wget https://github.com/alexk101/dev-shell-setup/releases/download/v1.0.0/install.tar.gz && \
tar -xf install.tar.gz && \
cd install && \
chmod +x bootstrap.sh && \
./bootstrap.sh && \
cd .. && \
rm -rf install
```

Otherwise, if you know what you are doing, simply run `bootstrap.sh`. All other files in the repo are configuration and are referenced by the script.

# Testing

If you would like to test the setup script in an ubuntu environment, ensure that you have docker installed, clone and enter the repo, and run
```
sudo docker build -t ubuntu-test:latest .
sudo docker run -it ubuntu-test:latest
./bootstrap.sh
```

