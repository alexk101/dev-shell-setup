# Installation

Go to releases, and download the latest tarball. The script requires some user inputs to configure certain properties, but is otherwise self-contained

# Testing

If you would like to test the setup script in an ubuntu environment, ensure that you have docker installed, clone and enter the repo, and run
```
sudo docker build -t ubuntu-test:latest .
sudo docker run -it ubuntu-test:latest
./bootstrap.sh
```

