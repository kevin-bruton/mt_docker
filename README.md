# Container with Metatrader 5, a VNC server and an EA which interfaces for trading from languages other than MQL


This container provides a [VNC](https://en.wikipedia.org/wiki/Virtual_Network_Computing)-enabled and wine container based on Alpine Linux.

The container is meant to serve a basis for containerised X11 applications wine . It has the following features:

- Openbox minimal Window Manager
- Graphical login
- wine64
- Metatrader 5 64bit
- File Connection expert adviser datafeed

## Usage

Metatrader 5 on docker and VNC

By default, the files from the File Connection EA will write to the ~/.mt_data directory on the host machine for processing by the program languague of your choice on the host machine.  
If you want to change its location, you should do so in the Makefile on the run command.

### VNC LOGIN

```
login: root
password: root
```

Build the image (it will be named "mt_connection"):
```bash
make build
````
Create the container and run it (the container will be named "mt_connection"):

```bash
make run
```
Stop the container:
```bash
make stop
```
Start a the stopped container:
```bash
make start
```


login to shell

```bash
 make shell
```

Credits to the following projects:  

https://github.com/ejtraderLabs/ejtraderMT-Docker : for the basis of the Alpine, Window Manager, Wine and Metatrader image  

https://github.com/darwinex/dwxconnect : for the basis of the EA to interface to MT5 from other programming languagues
