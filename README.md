# Docker multi-stage demo

First let's build single traditional single-stage image
base on standard Go image:
```
docker build -f go1.Dockerfile -t hello-world .
```
Let's test it:
```
docker run --rm hello-world
```
Let's verify image size:
```
docker images | grep hello-world
```
Now let's use a multi-stage approach to create a slimmed 
down image that has only what's needed to run:
```
docker build -f go2.Dockerfile -t hello-world .
```
Let's test it:
```
docker run --rm hello-world
```
Let's verify image size:
```
docker images | grep hello-world
```
On my machine first hello-world image was **349MB** and the second one only **7.52MB**