#!/bin/sh

# ------------------------------------------------------------------------------
# Print usage
# ------------------------------------------------------------------------------
print_usage()
{
    echo "Usage:"
    echo "  install.sh <theme_name>"
    echo
    echo "Arguments:"
    echo "  <theme_name> - Name of the theme to install, e.g. dark."
}


# ------------------------------------------------------------------------------
# Create a link to config files
# Args:
#   $1 - Target
#   $2 - Link name
# ------------------------------------------------------------------------------
create_link()
{
    if [ -d "$2" ] && [ ! -L "$2" ]
    then # Do not overwrite existing folders
        print_error "A directory $2 already exists!"
        exit 1
    fi
    if [ -e "$2" ] || [ -h "$2" ]
    then # To prevent creation of a link on another link (e.g. link to folder)
        rm "$2"
    fi
    ln -s "$1" "$2"
}


# ------------------------------------------------------------------------------
# Install Midnight Commander theme
# ------------------------------------------------------------------------------
install_mc()
{
    echo "Installing Midnight Commander theme..."

    # Detect MC config location
    local config_dir=""
    if [ -d "$HOME/.config/mc" ]
    then
        # Newer mc tends to keep config in .config
        config_dir="$HOME/.config/mc"
        echo "-> Found MC configuration in $config_dir"
    elif [ -d "$HOME/.mc" ]
    then
         # Older style location
         config_dir="$HOME/.mc"
        echo "-> Found MC configuration in $config_dir"
    else
        # No config at all, we create one ourselves and link to both locations
        echo "-> No existing MC configuration found, creating new directories"
        config_dir="$HOME/.config/mc"
        mkdir -p "$HOME/.config/mc"
        ln -s "$HOME/.config/mc" "$HOME/.mc"
    fi

    # Create skins folder
    if [ ! -e "$config_dir/skins" ]
    then
        echo "-> Creating skins directory."
        mkdir "$config_dir/skins"
    fi

    # Create link to theme
    echo "-> Creating a link to the theme file"
    create_link "$THEME_DIR/mc/material.ini" "$config_dir/skins/material.ini"

    # Update mc configuration
    echo "-> Updating MC configuration"
    local tmp=""
    if [ -e "$config_dir/ini" ]
    then
        if grep -q "skin" "$config_dir/ini"
        then
            # Config file exists and has skin entry, replace
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "/skin/c\\skin=$config_dir/skins/material.ini" "$config_dir/ini"); printf "%s\n" "$tmp" > "$config_dir/ini"
        else
            if grep -q "\[Midnight-Commander\]" "$config_dir/ini"
            then
                # Config files exists but has no skin entry and has [MC] entry
                # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
                tmp=$(sed "/Midnight-Commander/a\\skin=$config_dir/skins/material.ini" "$config_dir/ini"); printf "%s\n" "$tmp" > "$config_dir/ini"
            else
                # Config files exists but has no skin entry and no [MC] entry
                # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
                tmp=$(sed "1s:^:[Midnight-Commander]\nskin=$config_dir/skins/material.ini\n\n:" "$config_dir/ini"); printf "%s\n" "$tmp" > "$config_dir/ini"
            fi
        fi
    else
        # Config file does not exist, create and add only skin entry
        cat <<EOT >> "$config_dir/ini"

[Midnight-Commander]
skin=/home/czikus/.config/mc/skins/material.ini

EOT
    fi

    echo "Done!"
}


# ------------------------------------------------------------------------------
# Install i3 window manager theme
# ------------------------------------------------------------------------------
install_i3()
{
    echo "Installing i3 Window Manager theme..."

    # Check if configuration file exists
    if [ -f "$HOME/.i3/config" ]
    then
        echo "-> Found i3 configuration in $HOME/.i3/config"
        echo "-> Updating i3 configuration"

        # Replace/add each window configuration line
        local i=""
        local tmp=""
        i=$(grep "^client.focused[ \t]" "$THEME_DIR/i3/config")
        if grep -q "^client.focused[ \t]" "$HOME/.i3/config"
        then  # Entry found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "/^client.focused[ \t]/c\\$i" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        else  # Entry not found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "1s/^/$i\n/" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        fi

        i=$(grep "^client.focused_inactive[ \t]" "$THEME_DIR/i3/config")
        if grep -q "^client.focused_inactive[ \t]" "$HOME/.i3/config"
        then  # Entry found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "/^client.focused_inactive[ \t]/c\\$i" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        else  # Entry not found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "1s/^/$i\n/" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        fi

        i=$(grep "^client.unfocused[ \t]" "$THEME_DIR/i3/config")
        if grep -q "^client.unfocused[ \t]" "$HOME/.i3/config"
        then  # Entry found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "/^client.unfocused[ \t]/c\\$i" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        else  # Entry not found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "1s/^/$i\n/" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        fi

        i=$(grep "^client.urgent[ \t]" "$THEME_DIR/i3/config")
        if grep -q "^client.urgent[ \t]" "$HOME/.i3/config"
        then  # Entry found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "/^client.urgent[ \t]/c\\$i" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        else  # Entry not found
            # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
            tmp=$(sed "1s/^/$i\n/" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
        fi

        # Replace/add bar color configuration
        # Get the new color config
        i=$(sed -n "/^[ \t]*colors[ \t]*{/,/}/p" "$THEME_DIR/i3/config")
        # Replace newlines with \n
        i=$(printf "%s" "$i" | awk 'BEGIN{ORS="\\n"}{print $0}')
        if grep -q "^[ \t]*bar[ \t]*{" "$HOME/.i3/config"
        then # Bar configuration exists
            if grep -q "^[ \t]*colors[ \t]*{" "$HOME/.i3/config"
            then # Colors configuration exists
                # Delete existing colors config
                # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
                tmp=$(sed "/^[ \t]*colors[ \t]*{/,/}/d" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
            fi
        else # No bar configuration
            # Append bar to file
            printf "\n\n%s\n" "bar{\n\n}" >> "$HOME/.i3/config"
        fi
        # Add the colors section to existing bar section
        # To preserve links, we do not use sed -i, we use printf since echo interprets \\ in some shells
        tmp=$(sed "/^[ \t]*bar[ \t]*{/a $i" "$HOME/.i3/config"); printf "%s\n" "$tmp" > "$HOME/.i3/config"
    else
        # No config file, we use the theme as a stub
        echo "-> No existing i3 configuration found, using the theme as a stub"
        mkdir -p "$HOME/.i3"
        cp "$THEME_DIR/i3/config" "$HOME/.i3/config"
    fi

    echo "Done!"
}


# ------------------------------------------------------------------------------
# Main
# ------------------------------------------------------------------------------
# Parse args
theme_name=$1
if [ -z "$theme_name" ]
then
    print_usage
    exit 1
fi

# Get theme dir
THEME_DIR=$( cd "${0%/*}/out/$theme_name" && pwd )

# Install
install_mc
install_i3
