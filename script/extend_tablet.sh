#!/bin/bash
# Script to toggle WayVNC tablet extension for Hyprland

WAYVNC_CONFIG="$HOME/.config/wayvnc/config"
HEADLESS_NAME="HEADLESS-TABLET"
RESOLUTION="1280x720@60"
POSITION="-1920x0"
SCALE=1

function destroy_headless() {
    for mon in $(hyprctl monitors | grep HEADLESS | awk '{print $2}'); do
        echo "Destroying $mon..."
        hyprctl output destroy "$mon"
        echo "ok"
    done
}

function create_headless() {
    hyprctl output create headless
    local monitor
    monitor=$(hyprctl monitors | grep HEADLESS | awk '{print $2}')
    echo "Created $monitor. Setting resolution..."
    hyprctl keyword monitor "$monitor,$RESOLUTION,$POSITION,$SCALE"
    echo "ok"
    echo "$monitor"
}

function start_wayvnc() {
    local monitor="$1"
    if [ -z "$monitor" ]; then
        echo "No HEADLESS output found. Exiting."
        exit 1
    fi
    echo "Starting WayVNC on $monitor..."
    wayvnc -o "$monitor" -f 60 -v &
    echo "WayVNC server running on $monitor"
}

case "$1" in
    start)
        destroy_headless
        HEADLESS_MONITOR=$(create_headless)
        start_wayvnc "$HEADLESS_MONITOR"
        ;;
    stop)
        destroy_headless
        pkill wayvnc
        echo "WayVNC server stopped"
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

