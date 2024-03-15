# Monitor Setup

[![Bash Script](https://img.shields.io/badge/Bash-Script-green?style=for-the-badge&logo=gnu-bash&logoColor=white&labelColor=101010)](#)

## Description

Bash script to set up external monitors with docking station.

## Install drivers

Run the *drivers_installation.sh* script. 

> [!NOTE]
> It may be necessary to restart the system after the installation.

## Monitor configuration and setup

Run the *setup.sh* script.

> [!IMPORTANT]
> You can pass the names of the two external monitors and the laptop monitor as arguments.
> 
> The order must be the laptop monitor name, main external monitor name, and secondary external monitor name. If no arguments are passed,
> the script will use the default names. 

Restart the system logind by running `sudo systemctl restart systemd-logind`

Check that the configuration works correctly.

Go to _/etc/systemd/logind.conf_ and uncomment the following changing its values as shown below:
   - HandleLidSwitch=ignore
   - HandleLidSwitchExternalPower=ignore
   - HandleLidSwitchDocked=ignore

Open _.xsession_ file and add the command to run the bash script every time the session is started.
