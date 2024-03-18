# dotfiles

* Chase Ennis dotfiles
* Please note that I am not liable for any harm that you may cause your system during the installation process

## How to Run Script
  * To install everything run `sudo bash install.sh`
  * Must use `apt` as package manager
  * Must run the script as `root` user

## What does my DotFile Do?
1. Installs:
   * `dnsutils`
   * `nmap`
   * `git`
   * `sl`
   * `ninvaders`
   * `aws` command line interface
   * `anaconda`
   * `git`
2. Configures `git` for me (replace the `git.sh` with your own information obviously)
3. Configure `.bashrc` with personal favorites
4. Configure `ssh` `authorized_keys`
5. Customize `vim`

## Important Notes:
  * This script:
     * symbolically links a gitconfig file in your repository to ~/.gitconfig in my home directory
     * symbolically links an bashrcfile in your repository to ~/.bashrc in my home directory
     * symbolically links an authorized_keys file in your repository to ~/.ssh/config in my home directory
   
## Sources:
  * ChatGPT
  * `pattonsgirl` dotfiles
  * `mkijowski` dotfiles
  * `1blckhrt` dotfiles
  * [AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
