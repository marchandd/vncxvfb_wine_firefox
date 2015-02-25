# marchandd/vncxvfb_wine_firefox

marchandd/vncxvfb_wine_firefox [Docker:copyright:](https://docs.docker.com/ "Docker") image

## Description

A sandbox container with last version of Mozilla Firefox ready to use from Linux or Windows host.

### Goal

Complex method to produce a GUI containers to access to Firefox into sandbox from Linux or Windows host.  
Image can run Windows software through emulator accessing by view remotely X displays.

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

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/blob/master/docs/summary.md "Summary")

### Firewall

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 5900 port filtering:
- Make a new rule for VNC (5900/TCP) to enable outgoing policy.

## Build container

### Command line

:computer: `docker run -d -p 127.0.0.1:XXXXX:5900 marchandd/vncxvfb_wine_firefox`

Where XXXXX is your Private port, if you doesn't know free port, try from 
49200...

### Command line explanation

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/blob/master/docs/summary.md "Summary")

## Container usage

### Alias

:computer: `firefox`

## Explanations

### Dockerfile

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/blob/master/docs/summary.md "Summary")

### Display

GUI applications are not able to run directly in terminal.  
VNC client need to be installed to run GUI applications.  
Wine is installed but need to be initialized before using it.

### Risks

VNC protocol but not crypted...
Reserve usage only in local mode.
