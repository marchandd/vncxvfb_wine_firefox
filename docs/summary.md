Complete image to run Wine application through x11vnc with xvfb display
======================================================================

Return to [index](https://github.com/marchandd/vncxvfb_wine_firefox/ "Index")

Docker image from Ubuntu 14.10 edition image to run Firefox and
Windows software through emulator accessing by view remotely X displays.

Dockerfile explanation
----------------------

### Installed software

Installed software and settings for Ubuntu 14.10 edition are:
- x86 only restriction for Debian packaqes install.
- VNC to view remotely and interact with target X displays.
- Xvfb display server.
- Firefox web browser to be ready capable to search programs/add-ons
  to install...
- Pwgen password generator.
- Wine emulator for Windows software
  with cabextract and winetricks settings helpers.
- Supervisor system to monitor and control processes.
- Python script ready.

### VNC password for root

Scripting the password used for Root user to VNC remote access software.

Script behaviours:
- Automatic generation by default. Password viewed in console output.
- VNC password is store into local file (in case of password lost) but accessible by Nsenter.
- Script could be changed to modify policy or use static password for Docker public repository.

### VNC accessing

Supervisor config to manage x11vnc software when 5900 port exposed.

Command build image usage
-------------------------

### Command line

- :computer: `docker pull marchandd/vncxvfb_wine_firefox`

Command container usage (standalone mode only)
----------------------------------------------

Not necessary to do if you want only to run Portable-Apps Samples image...         
Standalone mode only if you want to do software install by yourself.

### Command line

:computer: `docker run -d -p XXX.XXX.XXX.XXX:YYYYY:5900 --name latest_vncxvfb_wine_firefox marchandd/vncxvfb_wine_firefox`

Where XXX.XXX.XXX.XXX is your IP v4 address.
Where YYYYY is your Private port, if you doesn't know free port, try from 
49200...

Container usage (standalone mode only)
--------------------------------------

### VNC client access

- Open your VNC client (Terminal Server Client on Gnome, KRDC on KDE).
- Choose VNC option and type localhost:YYYYY remote desktop.
  YYYYY is your private port you have choose previously.
- Choose root user and enter VNC password as 'vncxvfb_wine_firefox' for Docker public repository access.
- You can have unsecured channel warning message because SSL is not activated.

### Remarks

Wine have not been set at the end of install and must been configured in 
first step.  
Enter "winecfg" to do it before first usage. Change settings if you want.  
Now you can try entering "winefile" to verify every thing are functional.
