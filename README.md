


### Create image
```sudo docker build -t gdssouza/legacy-dev .```


Due to trying to be as portable as possible you cannot map a host directory to a docker container directory within a dockerfile, because the host directory can change depending on which machine you are running on. To map a host directory to a docker container directory you need to use the -v flag when using docker run like so:
```docker run -v /host/directory:/container/directory -other -options image_name command_to_run```

### Run docker with ssh id_rsa copy
```sudo docker run -it -v ~/.ssh/id_rsa:/root/.ssh/id_rsa  gdssouza/legacy-dev bash```
```sudo docker run -it -v ~/projects/vivo/sagemcom/product-sagemcom-dsi74:/repo  gdssouza/legacy-dev bash```