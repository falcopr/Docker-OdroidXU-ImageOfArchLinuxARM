# Docker-OdroidXU-ImageOfArchLinuxARM
Creating a Image of Arch Linux ARM for Odroid XU

# Step by step for Odroid
1. Import Arch Linux ARM Image for Odroid XU into Docker
```
curl -L http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-xu-latest.tar.gz | gunzip | sudo docker import 
-
```

2. Check out new Arch Linux ARM image tag in docker
```
docker images
``` 

3. Change Tag to a more appropriate one
```
docker tag ba435fc3422 alarm-v7-base
```

4. Build the image via Dockerfile
```
docker build --tag="falcoprescher/alarm-v7-base" .
```


# Sources
[Creating Docker Image for Raspberry 
PI](https://glasstty.com/wiki/index.php/Creating_an_Arch_Linux_(ARMv7)_Docker_Image)
[Arch Linux ARM for Odroid XU](https://archlinuxarm.org/platforms/armv7/samsung/odroid-xu)
