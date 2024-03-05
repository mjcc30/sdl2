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
```

#### How to build all libraries (SDL2 and virtual GPU)
```
docker compose up
# or run
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --all
```

#### How to build the SDL2 library only
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --sdl2
```

#### How to build the virtual GPU (swiftshader) library only
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --gpu
```

#### How to build the example
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --example
```

#### How to delete the build environment (Docker)
```
docker image rm mmiyoo
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
```

#### How to build all libraries (SDL2 and virtual GPU)
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --all trimui
```

#### How to build the SDL2 library only for trimui
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --sdl2 trimui
```

#### How to build the virtual GPU (swiftshader) library only for trimui
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --gpu trimui
```

#### How to build the example for trimui
```
docker run -it --rm -v ./:/sdl2_miyoo sdl2 /bin/bash
./setup.sh --example trimui
```

#### How to delete the build environment (Docker)
```
docker image rm sdl2
```
