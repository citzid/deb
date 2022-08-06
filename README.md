
*##NOTE##*

DON'T install bspwm and sway because is still under construction.
I3-GAPS wm script run normaly.

AUTO INSTALL PKG (You can edit on pkg.sh & from WMinstall.sh)
1. alacritty
2. brave browser
3. thunar
4. geany
5. polybar
6. nord themes
7. lxappearance unzip ranger arandr xfce4-settings nitrogen

##################################################################################
I asume you have been installed debian base with no GUI.
Requirements
This install changes Debian to the SID (Dev) Branch

Download Debian non-free netinstall

Install minimal debian and boot into system. Use the following Debian ISO as the base https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/

or

Debian 11 non-free https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.4.0+nonfree/amd64/iso-cd/

_do NOT grab the EDU download and this includes non-free and firmware_
##################################################################################

Get started
	$ sudo su
   	$ apt install git -y
Lets go 

1. Clone repo
    ```
    git clone https://github.com/citzid/deb.git && cd deb
    ```
  
2. Choose your favorite Window Manager

    SWAY
    ```
    sudo chmod +x swayinstall.sh
    sudo ./swayinstall.sh
    ```

    or
    
    I3
    ```
    sudo chmod +x i3install.sh
    sudo ./i3install.sh
    ```
    
    or
    
    I3-GAPS
    ```
    sudo chmod +x i3install.sh
    sudo ./i3install.sh
    ```


    or
    
    BSPWM
    ```
    sudo chmod +x bspwminstall.sh
    sudo ./bspwminstall.sh
    ```
-----------------------------------------------------------------------------------------------------
You can copy dotfiles folder to your .config folder


key bind :
1. super + enter = alacritty
2. super + b = firefox
3. super + f = thunar
4. super + e = geany
5. super + q = kill (close app)
6. super + space = dmenu run
7. ctrl + shift + r = restart WM
8. ctrl + shift + c = reload config
-----------------------------------------------------------------------------------------------------

*NOTE :*
1. if error "user is not in the sudoers file".
        - install git and sudo
             ```
	     $ sudo su
	     $ apt install sudo git 
	     ```
        - add your username below %sudo 
             ```$ nano etc/sudoers  ```
                 example :  ```johndoe <tab> ALL=(ALL) NOPASSWD:ALL ```
                 save, exit
        
2. fix screen resolution on virtualbox
  -open terminal
   ```$ xrandr ```
   ```$ xrandr -s (your monitor resolution)```
   
   example: 	
   		```
   		```$ xrandr -s 1920x1080```
		```$ xrandr -s 1366x768```
		```
   
   
   ### OR ###
   
   
   install arandr
   ```$sudo apt install arandr```
   and run arandr, Choose resolution of your monitor. apply.
   Then save your profile. 
		1.click _layout_
		2.click _save As_ . write name whatever you want on _.screenlayout_ folder and save.
		3.open terminal	
			```sudo nano .profile```
			write in last line
			```bash /.screenlayout/(your profilename).sh```
   

DONE... you can start build your own bspwm debian from this.
-----------------------------------------------------------------------------------------------------

Thanks to :
1. Chris Titus
2. Distro Tube (DTOS)
3. Aditya Shakya (archcraft)
3. ALL linux superuser youtuber
-----------------------------------------------------------------------------------------------------

*_feel free to fork this stupid project_*
