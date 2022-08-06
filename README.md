<p><em>NOTE</em><br />
<br />
DON&#39;T install bspwm and sway because is still under construction.<br />
I3-GAPS wm script run normaly.<br />
<br />
AUTO INSTALL PKG (You can edit on pkg.sh &amp; from WMinstall.sh)<br /></p>
<ol>
<li>alacritty<br /></li>
<li>brave browser<br /></li>
<li>thunar<br /></li>
<li>geany<br /></li>
<li>polybar<br /></li>
<li>nord themes<br /></li>
<li>lxappearance unzip ranger arandr xfce4-settings nitrogen<br /><br />
##################################################################################<br />
I asume you have been installed debian base with no GUI.<br />
Requirements<br />
This install changes Debian to the SID (Dev) Branch<br />
<br />
Download Debian non-free netinstall<br />
<br />
Install minimal debian and boot into system. Use the following Debian ISO as the base<br />
https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/
<br />
or<br />
<br />
Debian 11 non-free <br />
https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.4.0+nonfree/amd64/iso-cd/ <br />
<br />
_do NOT grab the EDU download and this includes non-free and firmware_ <br />
##################################################################################<br />
<br />
Get started<br />
$ sudo su
$ apt install git -y</li>
</ol>
<hr>
<p>Lets go <br /></p>
<ol>
<li>Clone repo <br />
$ git clone <a href="https://github.com/citzid/deb.git">https://github.com/citzid/deb.git</a> &amp;&amp; cd deb<br /></li>
<li>Choose your favorite Window Manager<br /><br />
SWAY<br />
$ sudo chmod +x swayinstall.sh
$ sudo ./swayinstall.sh
<br />
or<br />
<br />  
 I3<br />
$ sudo chmod +x i3install.sh
$ sudo ./i3install.sh
<br />
<br />
or<br />
<br />
I3-GAPS<br />
$ sudo chmod +x i3install.sh
$ sudo ./i3install.sh
<br />
<br />
or<br />
<br />
BSPWM<br />
<br />
$ sudo chmod +x bspwminstall.sh
$ sudo ./bspwminstall.sh
<br />
------------------------------------------------------------------------------------------------------------------------------------------------------
You can copy dotfiles folder to your .config folder <br />
<br />
<br />
key bind : <br /></li>
<li>super + enter = alacritty <br /></li>
<li>super + b = firefox <br /></li>
<li>super + f = thunar <br /></li>
<li>super + e = geany <br /></li>
<li>super + q = kill (close app) <br /></li>
<li>super + space = dmenu run <br /></li>
<li>ctrl + shift + r = restart WM <br /></li>
<li>ctrl + shift + c = reload config<br /></li>
</ol>
<hr>
<pre><code>  &lt;br /&gt;
</code></pre>
<p><em>NOTE :</em> <br />
11. if error &quot;user is not in the sudoers file&quot;. <br />
    - install git and sudo<br />
      $ sudo su
      $ apt install sudo git
      <br /> - add your username below %sudo <br />
      $ nano etc/sudoers
      example : $ johndoe <tab> ALL=(ALL) NOPASSWD:ALL
      save, exit<br>      <br />
12. fix screen resolution on virtualbox <br />
      -open terminal
      <br />
      $ xrandr
      $ xrandr -s (your monitor resolution)
      <br /></p>
<p>example:<br />
$ xrandr -s 1920x1080
$ xrandr -s 1366x768</p>
<h3 id="or">OR</h3>
<p>install arandr<br />
$ sudo apt install arandr
<br />
and run arandr, Choose resolution of your monitor. apply.<br />
Then save your profile. <br /> 1. click <em>layout</em><br /> 2. click <em>save As</em> . write name whatever you want on <em>.screenlayout</em> folder and save. <br /> 3. open terminal <br />
$ sudo nano .profile
write in last line
$ bash /.screenlayout/(your profilename).sh</p>
<p>DONE... you can start build your own bspwm debian from this.<br />
-----------------------------------------------------------------------------------------------------<br />
<br />
Thanks to :<br /></p>
<ol>
<li>Chris Titus<br /></li>
<li>Distro Tube (DTOS)<br /></li>
<li>Aditya Shakya (archcraft)<br /></li>
<li>ALL linux superuser youtuber<br />
-----------------------------------------------------------------------------------------------------<br /></li>
</ol>
<p><em><em>feel free to fork this stupid project</em></em></p>
