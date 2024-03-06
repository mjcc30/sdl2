# SDL2 Library with Virtual GPU Support for Miyoo Mini (Plus) and TRIMUI SMART
 - [Miyoo Mini (Plus)](#miyoo-mini-plus)
   - Introduction
   - Build from Scratch
     - How to prepare the build environment (Docker)
     - How to build all libraries
     - How to pack the release build
     - How to delete the build environment (Docker)
 - [TRIMUI SMART](#trimui-smart)
   - Introduction
   - Build from Scratch
     - How to prepare the build environment (Docker)
     - How to build all libraries
     - How to pack the release build
     - How to delete the build environment (Docker)

&nbsp;

## Miyoo Mini (Plus)
![image](images/mmiyoo/mm.jpg) ![image](images/mmiyoo/mmp.jpg)  

### Introduction
TBD

&nbsp;

### Build from Scratch
#### How to prepare the build environment (Docker)
```
docker build -t sdl2 .
docker run -it -d --name miyoo -v ./:/sdl2_miyoo sdl2 /bin/bash
```

if you want to connect to the container
```
docker attach miyoo
exit
```

if you want to copy some file from container
```
mkdir -p opt/SDL2
docker cp miyoo:/opt/mmiyoo/arm-buildroot-linux-gnueabihf/sysroot/usr/include/SDL2 ./opt
```

#### How to build all libraries (SDL2 and virtual GPU)
```
docker exec miyoo sh -c "./setup.sh --all"
```

#### How to build the SDL2 library only
```
docker exec miyoo sh -c "./setup.sh --sdl2"

```

#### How to build the virtual GPU (swiftshader) library only
```
docker exec miyoo sh -c "./setup.sh --gpu"
```

#### How to build the example
```
docker exec miyoo sh -c "./setup.sh --example"
```

#### How to delete the build environment (Docker)
```
docker stop mmiyoo
docker rm mmiyoo
docker image rm sdl2
```

&nbsp;

## TRIMUI SMART
![image](images/trimui/trimui.jpg)  

### Introduction
TBD

&nbsp;

### Build from Scratch
#### How to prepare the build environment (Docker)
```
docker build -t sdl2 .
docker run -it -d --name trimui -v ./:/sdl2_miyoo sdl2 /bin/bash
```

#### How to build all libraries (SDL2 and virtual GPU)
```
docker exec trimui sh -c "./setup.sh --all trimui"
```

#### How to build the SDL2 library only for trimui
```
docker exec trimui sh -c "./setup.sh --sdl2 trimui"
```

#### How to build the virtual GPU (swiftshader) library only for trimui
```
docker exec trimui sh -c "./setup.sh --gpu trimui"
```

#### How to build the example for trimui
```
docker exec trimui sh -c "./setup.sh --example trimui"
```

#### How to delete the build environment (Docker)
```
docker stop trimui
docker rm trimui
docker image rm sdl2
```
