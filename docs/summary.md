Complete image to run Wine application throw x11vnc with xvfb display
=====================================================================

Docker image from Ubuntu 14.10 edition image to run Firefox and
Windows software throw emulator accessing by view remotely X displays.

Dockerfile explanation
----------------------

### Installed software ###

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

### VNC password for root ###

Scripting the password used for Root user to VNC remote access software.

Script behaviours:
- Automatic generation by default. Password viewed in console output.
- VNC password is store into local file (in case of password lost).
- Script could be changed to modify policy or use static password.

### VNC accessing ###

Supervisor config to manage x11vnc software when 5900 port exposed.

Command build image usage
-------------------------

### Command line ###

- :computer: `cd YOUR_DIRECTORY`
- :computer: `docker build --rm=true -t vncxvfb_wine-firefox . > build.log`

### Command line explanation ###

First, you copy all files in YOUR_DIRECTORY directory.  
Then, you build the image with command line above.  
Last, edit YOUR_DIRECTORY/build.log to find VNC password access.  
In case of you doesn't want keep tracks, just leave "> build.log" from command 
line and search VNC password access on screen.

Command container usage (standalone mode only)
----------------------------------------------

Not necessary to use Portable-Apps samples...  
Standalone mode only to do software install by yourself.

### Command line ###

- :computer: `docker run -d -p 127.0.0.1:XXXXX:5900 --name latest 
vncxvfb_wine-firefox`

Where XXXXX is your Private port, if you doesn't know free port, try from 
49200...

### Firewall ###

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 5900 port filtering:
- Make a new rule for VNC (5900/TCP) to enable outgoing policy.

Container usage
---------------

### VNC client access ###

- Open your VNC client (Terminal Server Client on Gnome, KRDC on KDE).
- Choose VNC option and type localhost:XXXXX remote desktop.
  XXXXX is your private port you have choose previously.
- Choose root user and enter VNC password you have find previously.

### Remarks ###

Wine have not been set at the end of install and must been configured in 
first step.  
Enter "winecfg" to do it before first usage. Change settings if you want.  
Now you can try entering "winefile" to verify every thing are functional.
