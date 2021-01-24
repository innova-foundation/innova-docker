# docker-based innova wallet

This image provides `innovad` via docker while mounting a local folder for the innova `data-dir` to keep blockchain and wallet info on your host machine.

## usage

### build the image

```sh
make
```

### run it

```sh
make run
```

or if you want to use `docker` manually:

```sh
docker run -v `pwd`/innova-data:/root/.innova -w /innova/src -i -t pyramation/innova bash
```

### start `innovad`

```sh
cd /innova/src
./innovad
```

it will give you a prompt to edit the `innova.conf` in the data dir. Copy and paste the credentials it gives you.


### open another shell

Now, `ssh` into the existing container. You can get the container id like so

```sh
$ docker ps
CONTAINER ID        IMAGE                 COMMAND             CREATED             STATUS              PORTS               NAMES
d173377e3757        pyramation/innova   "bash"              5 minutes ago       Up 5 minutes                            dazzling_booth
```

Now jump inside with the `exec` command:

```sh
docker exec -ti d173377e3757 /bin/bash
```

### now, run `innovad` commands

```sh
./innovad help
```

### managing your wallet

The data directory will end up on your host machine in a folder called `innova-data`
