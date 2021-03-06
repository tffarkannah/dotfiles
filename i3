#  _ _____                    __ _       
# (_)___ /    ___ ___  _ __  / _(_) __ _ 
# | | |_ \   / __/ _ \| '_ \| |_| |/ _` |
# | |___) | | (_| (_) | | | |  _| | (_| |
# |_|____/   \___\___/|_| |_|_| |_|\__, |
#                                  |___/ 

# tffarkannah


set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 7

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal-------------------------------------------
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window------------------------------------------
bindsym $mod+Shift+q kill

# start DMENU (a program launcher)------------------------
# bindsym $mod+d exec dmenu_run

# change focus-------------------------------------------------------
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right


#------------------------------------------------------------------------

# border on, see where focus is
#bindsym $mod+semicolon exec i3-msg border pixel 3
#bindsym --release $mod+semicolon exec i3-msg border pixel 0

# change focus
#bindsym $mod+h exec i3-msg border pixel 2; focus left
#bindsym $mod+j exec i3-msg border pixel 2; focus down
#bindsym $mod+k exec i3-msg border pixel 2; focus up
#bindsym $mod+l exec i3-msg border pixel 2; focus right
#bindsym --release $mod+h exec i3-msg border pixel 0
#bindsym --release $mod+j exec i3-msg border pixel 0
#bindsym --release $mod+k exec i3-msg border pixel 0
#bindsym --release $mod+l exec i3-msg border pixel 0
# alt-tab focus
#bindsym $mod+Tab exec i3-msg border pixel 2; focus right 

# move focused window
#bindsym $mod+Shift+h exec i3-msg border pixel 2; move left
#bindsym $mod+Shift+j exec i3-msg border pixel 2; move down
#bindsym $mod+Shift+k exec i3-msg border pixel 2; move up
#bindsym $mod+Shift+l exec i3-msg border pixel 2; move right
#bindsym --release $mod+Shift+h exec i3-msg border pixel 0
#bindsym --release $mod+Shift+j exec i3-msg border pixel 0
#bindsym --release $mod+Shift+k exec i3-msg border pixel 0
#bindsym --release $mod+Shift+l exec i3-msg border pixel 0


#------------------------------------------------------------------

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

#only to go right
bindsym $mod+Tab focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right


#split orientation toggle----------------------------------
bindsym $mod+q split toggle

# enter fullscreen mode for the focused container----------
bindsym $mod+f fullscreen toggle

# change container layout-----------------------------------
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating----------------------------------
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows------------
bindsym $mod+space focus mode_toggle

# focus the parent container--------------------------------
bindsym $mod+a focus parent

# focus the child container---------------------------------
bindsym $mod+c focus child

# resize current window-------------------------------------
bindsym $mod+r mode "resize"

#toggle bar on/off------------------------------------------
bindsym $mod+y bar mode toggle 


# switch to workspace---------------------------------------

bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace------------------------

bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# Workspace names---------------------------------------------

# to display names or symbols instead of plain workspace numbers you can use
# something like: set $ws1 1:mail

set $ws1 1
set $ws2 2
set $ws3 3
set $ws4 4
set $ws5 5
set $ws6 6
set $ws7 7
set $ws8 8
set $ws9 9
set $ws10 10


#session/reload/quit-----------------------------------------------------

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"


#window sizing----------------------------------------------------------

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}


# Lock screen-----------------------------------------------------------

#bindsym $mod+Shift+x exec --no-startup-id blurlock
bindsym $mod+Shift+x exec --no-startup-id "i3lock -i Pictures/Wallpapers/bsod0.png" 


#standard program start shortcuts--------------------------------------

bindsym $mod+Shift+f exec firefox
bindsym $mod+g exec gscreenshot


# Sound with ALSA------------------------------------------------------------------

# bindsym $mod+semicolon  exec "amixer -q sset Master,0 1+ unmute"
# bindsym $mod+apostrophe exec "amixer -q sset Master,0 1- unmute"
# bindsym $mod+numbersign exec "amixer -q sset Master,0 toggle"


# Sound with pulseaudio -----------------------------------------------------------------

# exec --no-startup-id volumeicon
# exec --no-startup-id pulseaudio
# exec --no-startup-id pa-applet

# Pulse Audio controls
# bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
# bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
# bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# Pulse Audio controls - with my shorcuts
bindsym $mod+semicolon   exec --no-startup-id pactl set-sink-volume 0 +5%  #increase sound volume
bindsym $mod+apostrophe  exec --no-startup-id pactl set-sink-volume 0 -5%  #decrease sound volume
bindsym $mod+numbersign  exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound


# Wallpaper if not set with pywal-----------------------------------------

exec --no-startup-id feh --bg-fill ~/Pictures/Wallpapers/"fern1.jpg"


#screen brightness-----------------------------------------------------

bindsym $mod+n     exec xbacklight -inc 10  # increase screen brightness by 20
bindsym $mod+m     exec xbacklight -dec 10  # decrease screen brightness by 20
bindsym $mod+comma exec xbacklight -set 100 # screen brightness to max


#i3bar------------------------------------------------------------

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)

bar {
        status_command i3status
 	mode hide
 
 
     colors {
#       color class        border  back.   text
        focused_workspace  #412382 $bg     #FFFFFF 
        active_workspace   #000000 #FE2FE7 #FFFFFF
        inactive_workspace #000000 #000000 #888888
        urgent_workspace   #000000 #5DCD63 #D6FFFF
    }
}


#these colours are terrible, should use .Xres colours, but this is backup

# bar {
#        status_command i3status



#    colors {
#        #color class       border  back.   text
#        focused_workspace  #412382 #9163c2 #FFFFFF 
#        active_workspace   #000000 #FE2FE7 #FFFFFF
#        inactive_workspace #000000 #000000 #888888
#        urgent_workspace   #000000 #5DCD63 #D6FFFF
#    }
# }


# Set colors from Xresources--------------------------------------

# Change 'color7' and 'color2' to whatever colors you want i3 to use 
# from the generated scheme.
# NOTE: The '#f0f0f0' in the lines below is the color i3 will use if
# it fails to get colors from Xresources.

set_from_resource $fg           i3wm.color7 #f0f0f0
set_from_resource $bg           i3wm.color2 #f0f0f0
set_from_resource $focused      i3wm.color6 #f0f0f0
set_from_resource $indicator    i3wm.color1 #ffffff
set_from_resource $unfocused	i3wm.color0

# class                 border  backgr.        text    indicator child_border
client.focused          $bg     #000000        $fg     $fg       $focused
client.focused_inactive $bg     $bg            $fg     $bg       $unfocused
client.unfocused        $bg     $bg            $fg     $bg       $unfocused
client.urgent           $bg     $bg            $fg     $bg       $bg
client.placeholder      $bg     $bg            $fg     $bg       $bg
client.background       $bg


# i3-gaps----------------------------------------------------------------

# sets border without title bar
for_window [class="^.*"] border pixel 2 

# disable borders/gaps for one container
smart_borders on
smart_gaps on

# standard gaps
gaps inner 3

# gaps inner|outer current|all set|plus|minus <px>
bindsym $mod+Shift+s gaps inner all minus 3
bindsym $mod+Shift+d gaps inner all plus  3



# Autostart applications-----------------------------------------------

exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec --no-startup-id nitrogen --restore; sleep 1; compton -b
#exec --no-startup-id manjaro-hello
exec --no-startup-id nm-applet
exec --no-startup-id xfce4-power-manager
#exec --no-startup-id pamac-tray
exec --no-startup-id clipit
exec --no-startup-id xautolock -time 30 -locker blurlock
exec_always --no-startup-id ff-theme-util
exec_always --no-startup-id fix_xcursor
exec_always --no-startup-id picom
exec_always --no-startup-id colours.sh


# Open specific applications in floating mode--------------------------

for_window [title="alsamixer"] floating enable border pixel 1
for_window [class="calamares"] floating enable border normal
for_window [class="Clipgrab"] floating enable
for_window [title="File Transfer*"] floating enable
for_window [class="fpakman"] floating enable
for_window [class="Galculator"] floating enable border pixel 1
for_window [class="GParted"] floating enable border normal
for_window [title="i3_help"] floating enable sticky enable border normal
for_window [class="Lightdm-settings"] floating enable
for_window [class="Lxappearance"] floating enable sticky enable border normal
for_window [class="Manjaro-hello"] floating enable
for_window [class="Manjaro Settings Manager"] floating enable border normal
for_window [title="MuseScore: Play Panel"] floating enable
for_window [class="Nitrogen"] floating enable sticky enable border normal
for_window [class="Oblogout"] fullscreen enable
for_window [class="octopi"] floating enable
for_window [title="About Pale Moon"] floating enable
for_window [class="Pamac-manager"] floating enable
for_window [class="Pavucontrol"] floating enable
for_window [class="qt5ct"] floating enable sticky enable border normal
for_window [class="Qtconfig-qt4"] floating enable sticky enable border normal
for_window [class="Simple-scan"] floating enable border normal
for_window [class="(?i)System-config-printer.py"] floating enable border normal
for_window [class="Skype"] floating enable border normal
for_window [class="Timeset-gui"] floating enable border normal
for_window [class="^Gscreenshot$"] floating enable 


# rofi--------------------------------------------

bindsym $mod+d exec rofi -show drun
bindsym $mod+v exec rofi -show window 
bindsym $mod+b exec rofi -show run
