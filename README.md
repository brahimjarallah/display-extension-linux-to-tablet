# Hyprland Tablet wayvnc display Extension from Linux to Android Tablet

This project allows you to extend your Linux desktop to a tablet using WayVNC with **Hyprland**.

## Features
- Automatically creates and destroys headless monitors
- Extends display to the **left** of your main screen
- Starts/stops a WayVNC server
- Simple Hyprland keybinding integration

## Installation

### Linux (Hyprland)
1. Clone the repo:
```bash
cd ~
git clone https://github.com/brahimjarallah/display-extension-linux-to-tablet.git
cd ./display-extension-linux-to-tablet

Make the script executable:
chmod +x scripts/extend_tablet.sh

Configure Hyprland keybinding (~/.config/hypr/hyprland.conf):
bind=SUPER,Y,exec,~/display-extension-linux-to-tablet/scripts/extend_tablet.sh start
bind=SUPER,SHIFT,Y,exec,~/display-extension-linux-to-tablet/scripts/extend_tablet.sh stop

Tablet
Install any VNC viewer (e.g., bVNC, VNC Viewer)

Connect to the Linux PC using its IP and port 5900

Usage on CLI:
Start extending screen:
./scripts/extend_tablet.sh start
Stop extending screen:
./scripts/extend_tablet.sh stop
