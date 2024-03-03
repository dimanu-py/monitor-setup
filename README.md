# Monitor Setup

## Description

Bash script to setup external monitors with docking station.

## Setup

1. Run the script in the terminal.
2. Restart the system logind by running `sudo systemctl restart systemd-logind`
3. Check that the configuration works correctly.
4. Go to _/etc/systemd/logind.conf_ and uncomment the following changing its values as shown below:
   - HandleLidSwitch=ignore
   - HandleLidSwitchExternalPower=ignore
   - HandleLidSwitchDocked=ignore
5. Open _.xsession_ file
6. Copy and paste the content of the _.sh_ executable.