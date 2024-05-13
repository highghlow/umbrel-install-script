# Umbrel Install Script
An unofficial installation script for [Umbrel](https://github.com/getumbrel/umbrel)

# Warnings
1. This is unofficial. Do not report issues you discovered while using this to the Umbrel Team. Report them here
2. **Only** use this on a fresh debian installation. It **will** break anything you had there before
3. You should have a separate `/data` partition. Allocate 7.5GB to root and everything else to `/data`

# Quickstart
To install Umbrel using this:

1. Read [the warnings](#warnings) carefully
2. Do a fresh debian installation (Make a user account named anything but `umbrel`)
3. Log in as `root`
4. Run
```
apt install git sudo
git clone https://github.com/highghlow/umbrel-install-script
cd umbrel-install-script
bash install.sh
```
5. Enjoy!
