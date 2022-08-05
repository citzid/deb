
*##NOTE##*
DON'T install bspwm and sway is under because still under construction.
I3wm script run normaly.

I asume you have been installed debian base with no GUI.
Lets go 

1. Clone repo
    ```
    $ git clone https://github.com/citzid/deb.git && cd deb
    ```
  
2. Choose your favorite Window Manager
    ```
    $ sudo chmod +x swayinstall.sh
    $ sudo ./swayinstall.sh
    ```

    or
    ```
    $ sudo chmod +x i3install.sh
    $ sudo ./i3install.sh
    ```


    or
    ```
    $ sudo chmod +x bspwminstall.sh
    $ sudo ./bspwminstall.sh
    ```

key bind :
1. super + enter = alacritty
2. super + b = firefox
3. super + f = thunar
4. super + e = geany
5. super + q = kill (close app)
6. super + space = dmenu run
7. ctrl + shift + r = restart WM
8. ctrl + shift + c = reload config


