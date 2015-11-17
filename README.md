# marchandd/vncxvfb_wine_firefox

[marchandd/vncxvfb_wine_firefox](https://registry.hub.docker.com/u/marchandd/vncxvfb_wine_firefox/ "MarchandD")  [Docker:copyright:](https://docs.docker.com/ "Docker") image

## Description

A sandbox container with last version of Mozilla Firefox ready to use from Linux or Windows host.

### Goal

Complex method to produce a GUI containers to access to Firefox into sandbox from Linux or Windows host.  
Image can run Windows software through emulator accessing by view remotely X displays.

### Image size

Around 1250 Mb.

### References

[Marchand D. Maintainer](https://github.com/marchandd/ "Maintainer")

[Details source](https://github.com/marchandd/vncxvfb_wine_firefox/ "Details")

[Part of project studies](https://github.com/marchandd/docker_index/ "References")

## Build image

### Command line

:computer: `docker pull marchandd/vncxvfb_wine_firefox`

### Firewall

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 5900 port filtering:
- Make a new rule for VNC (5900/TCP) to enable outgoing policy.

## Build container (standalone mode only)

Not necessary to do if you want only to run Portable-Apps Samples image...         
Standalone mode only if you want to do software install by yourself.

:computer: `docker run -d -p 127.0.0.1:XXXXX:5900 --name latest_vncxvfb_wine_firefox marchandd/vncxvfb_wine_firefox`

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/blob/master/docs/summary.md "Summary")

## Container usage (standalone mode only)

Basic fixed password for Docker public repository = 'vncxvfb_wine_firefox'

All details on [docs](https://github.com/marchandd/vncxvfb_wine_firefox/blob/master/docs/summary.md "Summary")

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
