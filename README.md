# How to Build and Run

### Build container
```sudo docker build -t marcelocorvo/legacy-dev .```


### Run container with ssh id_rsa copy
```sudo docker run -it -v ~/.ssh/id_rsa:/root/.ssh/id_rsa marcelocorvo/legacy-dev bash```

Due to trying to be as portable as possible you cannot map a host directory to a docker container directory within a dockerfile, because the host directory can change depending on which machine you are running on. To map a host directory to a docker container directory you need to use the -v flag when using docker run like so:
```docker run -v /host/directory:/container/directory -other -options image_name command_to_run```

The compilation scripts requires to be executed by a non root user. So we pass the user id of the current user to the container using --user.
```sudo docker run -it -v ~/projects/vivo/sagemcom/product-sagemcom-dsi74:/repo --user $(id -u) marcelocorvo/legacy-dev bash```

```docker run -it -v ~/projects/vivo/sagemcom/product-sagemcom-dsi74:/repo -v /etc/passwd:/etc/passwd -v /etc/shadow:/etc/shadow -v /etc/sudoers:/etc/sudoers -v /etc/group:/etc/group --user $(id -u) marcelocorvo/legacy-dev bash```


