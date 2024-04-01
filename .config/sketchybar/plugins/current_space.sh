#!/usr/bin/env zsh

update_space() {
    SPACE_ID=$(echo "$INFO" | jq -r '."display-1"')

    case "$SPACE_ID" in
    "1")
        ICON="www"
        ;;
    "2")
        ICON="dev"
        ;;
    "3")
        ICON="cmd"
        ;;
    "4")
        ICON="mail"
        ;;
    "5")
        ICON="chat"
        ;;
    "6")
        ICON="note"
        ;;
    "7")
        ICON="music"
        ;;
    "8")
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
