# Installation

Go to releases, and download the latest tarball. The script requires some user inputs to configure certain properties, but is otherwise self-contained

```
mkdir install && \
cd install && \
wget https://github.com/alexk101/dev-shell-setup/releases/download/v1.0.0/install.tar.xz && \
tar -xf install.tar.xz && \
./bootstrap.sh && \
cd .. \
rm -rf install \
```

# Testing

If you would like to test the setup script in an ubuntu environment, ensure that you have docker installed, clone and enter the repo, and run
```
sudo docker build -t ubuntu-test:latest .
sudo docker run -it ubuntu-test:latest
./bootstrap.sh
```

