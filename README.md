# Hyprland Tablet wayvnc Extension

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
git clone https://github.com/<username>/hyprland-tablet-vnc.git
cd hyprland-tablet-vnc

Make the script executable:
chmod +x scripts/extend_tablet.sh

Configure Hyprland keybinding (~/.config/hypr/hyprland.conf):
bind=SUPER,Y,exec,/home/<user>/hyprland-tablet-vnc/scripts/extend_tablet.sh start
bind=SUPER,SHIFT,Y,exec,/home/<user>/hyprland-tablet-vnc/scripts/extend_tablet.sh stop

Tablet
Install any VNC viewer (e.g., bVNC, VNC Viewer)

Connect to the Linux PC using its IP and port 5900

Usage
Start extending screen:
./scripts/extend_tablet.sh start
Stop extending screen:
./scripts/extend_tablet.sh stop
