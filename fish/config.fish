set -x LANG C.UTF-8
set -x GTK_THEME 'Arc-Dark'
set -x ANDROID_HOME /home/mikobscura/Android/Sdk
set -x PATH $PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:/home/mikobscura/.cargo/bin:/opt/pt:$HOME/go/bin:$HOME/.ghcup/bin
set -x PIA_DNS true
set -x PIA_USER p3846718
set -x PIA_PASS FuY4caJ9z5

alias scrobble "ruby ~/cmus_local_scrobbler/main.rb"
alias start_mysql "docker start 7b3643148dac"
alias stop_mysql "docker stop 7b3643148dac"
alias vpn_start "cd ~/manual-connections && sudo PIA_PASS=FuY4caJ9z5 PIA_USER=p3846718 VPN_PROTOCOL=openvpn_tcp_strong DISABLE_IPV6=yes PIA_DNS=true PIA_PF=true PREFERRED_REGION=lu ./run_setup.sh"
alias record_tf2 'flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder -w $(xdotool selectwindow) -c mp4 -f 60 -a "IOMix.monitor" -o /home/mikobscura/Videos/Videos/tf2vid$(date +%s).mp4'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x SDKMAN_DIR "$HOME/.sdkman"
set -x PYTHONPATH /home/mikobscura/brats2020-keras
