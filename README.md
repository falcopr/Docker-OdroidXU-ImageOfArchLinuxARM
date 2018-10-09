# Docker-OdroidXU-ImageOfArchLinuxARM
Creating a Image of Arch Linux ARM for Odroid XU

# Step by step for Odroid
1. Import Arch Linux ARM Image for Odroid XU into Docker

One liner
```
curl -L http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-xu-latest.tar.gz | gunzip | sudo docker import -
```

Multi liner (but offline)
```
cd images
wget http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-xu-latest.tar.gz
gunzip ArchLinuxARM-odroid-xu-latest.tar.gz
sudo docker image import ArchLinuxARM-odroid-xu-latest.tar.gz
```

2. Check out new Arch Linux ARM image tag in docker
```
docker images
``` 

3. Change Tag to a more appropriate one
```
docker tag ba435fc3422 odroidxu-arch-arm-v7hf-base
```

4. Build the image via Dockerfile
```
docker build --tag="falcox/odroidxu-arch-arm-v7hf" .
```

5. Run Docker container
```
docker run -it --rm --name test falcox/odroidxu-arch-arm-v7hf bash
```

# Push to Docker Hub
1. docker login --username=<USERNAME>

2. docker push --disable-content-trust falcox/odroidxu-arch-arm-v7hf

* Note somehow the base image cannot be uploaded. Thats why --disable-content-trust is being used.

# Additionals
- To squash the docker image history append --squash after the docker build command
- You need to enable experimental features to do this: [How to enable experimental 
features](https://stackoverflow.com/questions/44346322/how-to-run-docker-with-experimental-functions-on-ubuntu-16-04)


# Sources
- [Creating Docker Image for Raspberry 
PI](https://glasstty.com/wiki/index.php/Creating_an_Arch_Linux_(ARMv7)_Docker_Image)
- [Arch Linux ARM for Odroid XU](https://archlinuxarm.org/platforms/armv7/samsung/odroid-xu)
- [mkinitcpio](https://wiki.archlinux.org/index.php/mkinitcpio)
- [Removing autodetect hook for mkinitcpio](https://bbs.archlinux.org/viewtopic.php?id=230265)
