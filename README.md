# docker-newsboat

Simple intro docker image and an exercise that containerize newsboat RSS feed app.

## Installation

Clone the repo:

```
git clone https://github.com/qaraluch/docker-newsboat.git
```

Build image:

```
cd docker-newsboat
./build.sh
```

Once it's done there pop out container's shell where you need to run configuration script:

```
~/.configure.sh
```

It will get `urls` and `config` files for the newsboat.

Now you can leave it by:

```
exit
```

The container will drop so you need to start it again:

```
docker start newsboat
docker exec -it newsboat newsboat
```

After read stop container by:

```
docker stop newsboat

```

Warning: when you remove this instance of container all newsboat's database data will be gone.

### TODO

- [ ] add volume / bind mount
