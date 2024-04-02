#!/usr/bin/env zsh

update_space() {
    SPACE_ID=$(yabai -m query --spaces --space | jq -r '.index')

    case "$SPACE_ID" in
    "7")
        ICON="www"
        ;;
    "8")
        ICON="dev"
        ;;
    "9")
        ICON="cmd"
        ;;
    "1")
        ICON="mail"
        ;;
    "2")
        ICON="chat"
        ;;
    "3")
        ICON="note"
        ;;
    "4")
        ICON="music"
        ;;
    "5")
        ICON="file"
        ;;
    "6")
        ICON="priv"
        ;;
    *)
        ICON=$SPACE_ID
        ;;
    esac

    sketchybar --set $NAME \
        icon=$ICON \
        icon.padding_left=9 \
        icon.padding_right=10
}

case "$SENDER" in
"mouse.clicked")
    # Reload sketchybar
    sketchybar --remove '/.*/'
    source $HOME/.config/sketchybar/sketchybarrc
    ;;
*)
    update_space
    ;;
esac
