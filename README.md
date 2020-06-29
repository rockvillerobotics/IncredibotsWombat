# :koala: Incredibots Wombat
Custom settings for the Wombat. The Ethernet port on the Wombat makes it trivial to attach the Wombat to wifi, and therefore to pull code down from GitHub.


## :rocket: Quick Start
1. Connect the Wombat to internet using the Ethernet port.
2. Open the terminal in the Wombat: Use `Alt+F2` and then type `x-terminal-emulator` and hit the green checkmark.
3. Clone this repository if it is not already on the Wombat:
```bash
git clone https://github.com/rockvillerobotics/IncredibotsWombat.git
```
If the repo is already on the Wombat, enter the `IncredibotsWombat` directory and run:
```bash
git pull origin master
```
4. Run the setup script with `setup_wombat.sh`


## :gear: Wombat Technical Specs
- OS: `Raspbian GNU/Linux 8 (jessie)`
- Kernel: `Linux 4.1.19-v7+`
- Architecture: `arm`
- USB Ports: 4
- Ethernet Port: 1


## :file_folder: Wombat File Structure
- Code is stored in `/home/root/Documents/KISS/`user/project/
- Within the project, user/project/`bin/botball_user_program` is a symbolic link to the main file in `bin/`. In Python, this would be `bin/main.py`
- Source code exists in both user/project/`bin/` and user/project/`src/` directories. We are not sure which of these is essential at the moment, so upload to both just in case.