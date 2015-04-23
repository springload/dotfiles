```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
 ░▓ Software Installation, Configuration and Preferences for Springload     ▓
 ░▓ https://github.com/springload/dotfiles                                  ▓
 ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
```

![Built with love](http://forthebadge.com/images/badges/built-with-love.svg)

## Setting up your new Mac `(◕‿◕)`

>The goal is to automate __80%__ of the setup of your new computer.

1. Download a ZIP of this repo. The button should on the right `------------->`
2. Unzip the file if necessary. You should have a `dotfiles-master` folder.
3. Launch the Terminal app, found in `/Applications/Utilities/`
4. Run the following commands:

```bash
# First
cd ~/Downloads/dotfiles-master
# Then
./install.sh
```

This will automatically install a bunch of apps for you. You will get to choose what you want to install, and what you do not want.

When it's done, you can:

- Delete the `dotfiles-master` folder and forget about this
- Head over to http://caskroom.io to look for apps that might interest you, and install them with `brew cask install <name of cask>`
- Install other things:

```bash
# Fonts
./fonts.sh
# Command-line tools
./cli.sh
```

### Going further

#### OSX Preferences

You can set OSX preferences by using [osx-for-hackers.sh](https://gist.github.com/brandonb927/3195465). Beware, this can be dangerous!

#### Alfred workflows (requires Powerpack)

Have a look at:

- https://github.com/zenorocha/alfred-workflows
- https://github.com/willfarrell/alfred-workflows

## Automated Installation on Windows `(¬_¬)`

Automated Software Installation is not supported. Please have a look at the following ressources:

- [Ninite](https://ninite.com/) – Install and update all your programs at once
- [Chocolatey](https://chocolatey.org/) – Chocolatey is a Machine Package Manager
- [Boxstarter](http://boxstarter.org/) – Repeatable, reboot resilient windows environment installations

## Automated Installation on Linux `(¬.¬)`

Automated Software Installation is not supported – but you can probably get something out of `apt-get`, and enjoy the dotfiles!

## Contributing to this project

> __Feel free to [suggest new things to install](https://github.com/springload/dotfiles/pulls). The more the merrier!__

If you want to tinker with the bash scripts, please install [ShellCheck](https://github.com/koalaman/shellcheck) and use it to check your changes.

```bash
# Debian distribs
apt-get install shellcheck
# OSX
brew install shellcheck

# Run it with
shellcheck *.sh

# Its output should be empty:
# $ shellcheck *.sh | wc -l
#        0
```

## See also

- http://brew.sh/
- http://caskroom.io/
- https://dotfiles.github.io/
- https://boxen.github.com/
- http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

## Credits

- Dotfiles lib from https://github.com/atomantic/dotfiles
- ASCII Art from https://github.com/xero/dotfiles
- ASCII faces from https://github.com/maxogden/cool-ascii-faces
