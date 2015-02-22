# marchandd/vncxvfb_wine_firefox

marchandd/vncxvfb_wine_firefox [Docker:copyright:](https://docs.docker.com/ "Docker") image

## Description

A sandbox container with last version of Mozilla Firefox ready to use from Linux host.

### Goal

Complex method to produce a GUI containers to access to Firefox into sandbox from Linux host.  
Image can run Windows software throw emulator accessing by view remotely X displays.

### Image size

Around 1300 Mb.

### References

[Marchand D. Maintainer](https://github.com/marchandd/ "Maintainer")

[Details source](https://github.com/marchandd/vncxvfb_wine_firefox/ "Details")

[Part of project studies](https://github.com/marchandd/docker_index/ "References")

## Build image

### Command line

:computer: `docker pull marchandd/vncxvfb_wine_firefox > build.log`

### Command line explanation

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/docs/summary.md "Summary")

### Firewall

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 5900 port filtering:
- Make a new rule for VNC (5900/TCP) to enable outgoing policy.

## Build container

### Command line

:computer: `docker run -d -p 127.0.0.1:XXXXX:5900 marchandd/vncxvfb_wine-firefox`

Where XXXXX is your Private port, if you doesn't know free port, try from 
49200...

### Command line explanation

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/docs/summary.md "Summary")

## Container usage

### Alias

:computer: `firefox`

## Explanations

### Dockerfile

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/docs/summary.md "Summary")

### Display

GUI applications are not able to run directly in terminal.  
VNC client need to be installed to run GUI applications.  
Wine is installed but need to be initialized before using it.

### Risks

VNC protocol but not crypted...
Reserve usage only in local mode.
 
## Linux test environment host

### Host ###

On VNC client:
- KUbuntu (14.10)
- Docker (1.4.1)
- KRDC-VNC (4.14.1)  
  Adress vnc://localhost:PORT

### Client ###

On Docker container with Root account:
- Ubuntu (14.10)

## Windows test environment host

### Host ###

On VNC client:
- Windows (7 & 8.1)
- Boot2Docker (1.4.1)
- VirtualBox (4.3.20)
- MsysGit (1.9.4)
- Vnc-viewer (5.2.1)  
  Address Boot2Docker_IPv4:PORT

Remark:  
Docker is accessing on Windows only throw VirtualBox network interface. 
So, using 127.0.0.1 is not possible...
- You must choose Boot2Docker_IPv4 remained at boot start into the 
dedicated console.

### Client ###

On Docker container with Root account:
- Ubuntu (14.10)
