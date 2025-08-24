# Hyprland Tablet wayvnc display Extension from Linux to Android Tablet

This project allows you to extend your Linux desktop to a tablet using WayVNC with **Hyprland**.

## Features
- Automatically creates and destroys headless monitors
- Extends display to the **left** of your main screen
- Starts/stops a WayVNC server
- Simple Hyprland keybinding integration

## Installation

### Linux (Hyprland)

1. install linux packages for arch linux (use your appropriate linux distro package manager)
```
yay -S wayvnc openssl
```

2. Clone the repo:
```
cd ~
git clone https://github.com/brahimjarallah/display-extension-linux-to-tablet.git
cd ./display-extension-linux-to-tablet
```

3. Make the script executable:
```
chmod +x scripts/extend_tablet.sh
```

4. Bind only to USB tether interface recommanded and faster than wireless connection [replace with actual USB IP if static] (~/.config/wayvnc/config)
```
address=0.0.0.0                                                                                                                         
port=5900                                                                                                                               
enable_auth=false                                                                                                                       
```

5. Configure Hyprland keybinding (~/.config/hypr/hyprland.conf):
```
bind=SUPER,Y,exec,~/display-extension-linux-to-tablet/scripts/extend_tablet.sh start
bind=SUPER,SHIFT,Y,exec,~/display-extension-linux-to-tablet/scripts/extend_tablet.sh stop
```

6. On Tablet
```
Install any VNC viewer (e.g., bVNC, VNC Viewer)
Connect to the Linux PC using its IP and port 5900
```

## Troubleshooting

### Usage on CLI:
Start extending screen:
```
./scripts/extend_tablet.sh start
```
Stop extending screen:
```
./scripts/extend_tablet.sh stop
```
