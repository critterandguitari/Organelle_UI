#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
# to startx in read only root fs
export XAUTHORITY=/var/tmp/.Xauthority_$USER

export FW_DIR=/home/pi/fw_dir

ps cax | grep mother > /dev/null
if [ $? -eq 0 ]; then
    echo "Welcome to Organelle."
else
    /home/pi/fw_dir/scripts/setup.sh > /dev/null 2>&1
    /home/pi/fw_dir/scripts/start-mother.sh > /dev/null 2>&1
    /home/pi/fw_dir/scripts/welcome.sh
fi
