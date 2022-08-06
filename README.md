
# NOTE

> DON'T install bspwm and sway because is still under construction.<br
> /> I3-GAPS wm script run normal.<br /> <br />

### AUTO INSTALL PKG (You can edit on pkg.sh & from WMinstall.sh)<br />
  1. alacritty
  2. brave browser
  3. thunar
  4. geany
  5. polybar
  6. nord themes
  7. lxappearance unzip ranger arandr xfce4-settings nitrogen
      
##################################################################################<br />
## I asume you have been installed debian base with no GUI.<br />
This installation changes Debian to the SID (Dev) Branch<br />
Download Debian non-free netinstall<br />
    
## Install minimal debian and boot into system. 
Use the following Debian ISO as the base<br />
https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/
    
or

Debian 11 non-free <br />
https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.4.0+nonfree/amd64/iso-cd/ <br />
<br />
_do NOT grab the EDU download and this includes non-free and firmware_ <br />
##################################################################################<br />
<br />



---------------------------------------------------------------------------------------------------------------------------------------------------------
### Lets Get started<br />
1. First install git
      ```bash
      sudo su
      apt install git -y
      ```

2. Clone repo <br />
      ```bash
      git clone https://github.com/citzid/deb.git && cd deb
      ```
   <br />
3. Choose your favorite Window Manager<br />
   **SWAY**<br />
      ```bash
      sudo chmod +x swayinstall.sh
      sudo ./swayinstall.sh
      ```
   **I3**<br />
      ```bash
      sudo chmod +x i3install.sh
      sudo ./i3install.sh
      ```
   **I3-GAPS**<br />
      ```bash
      sudo chmod +x i3-gapsinstall.sh
      sudo ./i3-gapsinstall.sh
      ```
   **BSPWM**<br />
      ```bash
      sudo chmod +x bspwminstall.sh
      sudo ./bspwminstall.sh
      ```
      then ### **REBOOT**

--------------------------------------------------------------------------------------------------------------------------------------------------------
### key bind : 
1. super + enter = alacritty <br />
2. super + b = firefox <br />
3. super + f = thunar <br />
4. super + e = geany <br />
5. super + q = kill (close app) <br />
6. super + space = dmenu run <br />
7. ctrl + shift + r = restart WM <br />
8. ctrl + shift + c = reload config<br /><br /><br />





---------------------------------------------------------------------------------------------------------------------------------------------------------
# NOTE : 

 - if error "user is not in the sudoers file". <br /> 
   install git and   
   sudo<br /> 
     ```bash   sudo su   apt install sudo git   ```   <br /> 
   add your username below %sudo <br />  
         ```nano etc/sudoers```    <br />
         example : <br />   
         ```johndoe <tab>    ALL=(ALL) NOPASSWD:ALL```   
   save, exit  
         
 - fix screen resolution on virtualbox <br />   open terminal   <br /> 
   ```bash   xrandr   xrandr -s (your monitor resolution)   ```
   example:<br /> 	
   ```bash
   xrandr -s 1920x1080 	         
   xrandr -s 1366x768

    ```

     
### OR

install arandr <br />

```bash
   sudo apt install arandr
   arandr
   ```

Choose resolution of your monitor. apply.<br />
Then save your profile. <br /> 
1. click _layout_<br /> 
2. click _save As_ . 
3. write name whatever you want into _.screenlayout_ folder and save.
4. open terminal <br />
```sudo nano .profile```
5. write in last line <br />
```bash /.screenlayout/(your profilename).sh```

DONE... you can start build your own bspwm debian from this.<br />
---------------------------------------------------------------------------------------------------------------------------------------------------------

### Thanks to :<br />
1. Chris Titus<br />
2. Distro Tube (DTOS)<br />
3. Aditya Shakya (archcraft)<br />
4. ALL linux superuser youtuber<br />

---------------------------------------------------------------------------------------------------------------------------------------------------------

# _*feel free to fork this stupid project*_
