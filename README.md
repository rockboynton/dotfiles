# Dotfiles for Rock Boynton

Managed with [chezmoi](https://www.chezmoi.io/)

Install dotfiles on new machine with:

Windows install (for my main machine)
```powershell
❯ (Invoke-RestMethod -UseBasicParsing https://chezmoi.io/get.ps1) | PowerShell -Command -
```
That line gets the install script from chezmoi

The shorter version (from the website) is
```powershell
❯ (irm -useb https://chezmoi.io/get.ps1) | powershell -c -
```

Then setup machine
```powershell
❯ chezmoi init --apply rockboynton
```

Linux-only install (for any machines I need to ssh into)
```bash
$ sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply rockboynton
```

For setting up transitory environments (e.g. short-lived Linux containers):
```bash
$ sh -c "$(curl -fsLS chezmoi.io/get)" -- init --one-shot $GITHUB_USERNAME
```

then run install script with

```bash
$ cd ~/dotfiles
$ ./install.sh
```

The end goal is to be able to develop code (usually for embedded software/firmware) on WSL (or some
linux machine) from Windows 10 (or 11 if I can get it on my PC)
