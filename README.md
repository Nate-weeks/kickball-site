### Introduction

It's time to install all of the things! It's here we'll show you all the apps
you'll want to use that will be helpful through the duration of the course.

### Learning Goals

* Configure your development environment

**Note: Follow the steps sequentially and do not skip any steps! If you cannot successfully complete a step, ask a question in the Questions channel on Slack. Also, much of the software we use is subject to changes and updates. If there is a discrepancy in our videos and the written instructions, be sure to follow the written instructions. The videos are provided for additional context and benefit.**

### Update Your Operating System

#### Instructions

1) Determine your OS X version by clicking on the Apple logo in the top left hand of your screen. Select "About This Mac." You should see a version number for OS X. What matters are the first two numbers (the major version and the minor version, respectively).

    * 10.6 - Snow Leopard
    * 10.7 - Lion
    * 10.8 - Mountain Lion
    * 10.9 - Mavericks
    * 10.10 - Yosemite
    * 10.11 - El Capitan
    * 10.12 - macOS Sierra

2) If do not have OS X 10.11 El Capitan, or later, go to the Apple Store and update your OS.

**Note: You will need an Apple ID to install applications through the App Store. If
you don't already have an Apple ID, now might be a good time to create one. To
do so, visit [My Apple
ID](https://appleid.apple.com/cgi-bin/WebObjects/MyAppleId.woa/wa/createAppleId?localang=en_US).**

{% vimeo_video "143689817" %}

#### Why?

A lot of the software development tools that we use require the latest version of OS X to function properly.

### Install Chrome

#### Instructions
1) [Download](https://www.google.com/intl/en/chrome/browser/)

{% vimeo_video "143685290" %}

#### Why?

Chrome will be your primary development browser. Chrome is fast and efficient.
Chrome's developer tools (right click on an a page and select "Inspect Element")
are tremendously powerful and helpful for web development.

### Install Dropbox

#### Instructions
1) [Download](https://www.dropbox.com/downloading?os=mac)

{% vimeo_video "143685379" %}

#### Why?

Dropbox is an easy way to automatically backup files in the cloud. We highly
recommend that you save all of your work into your Dropbox folder in order to
limit the possibility of losing any work.

It also gives you quick access to shared Launch Academy materials and other
files you might use across machines.

From this point forward, every folder you create, every note you take, every
line of code that you write, should be saved under your Dropbox folder. This is
your insurance plan for the work you create at Launch.

### Install Atom

#### Instructions

1) If you have not done so already, install Atom by checking out the [Getting Familiar With Atom](https://learn.launchacademy.com/lessons/getting-familiar-with-atom) lesson.

#### Why?

[Atom](https://atom.io/) is a text editor that's modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file. It is the editor that everyone at Launch will utilize.

### Locate your Terminal

The Terminal is one application you can use to access the _command line_ for your system. As a developer, you'll be using the command line frequently. We will install a better alternative to Terminal below, but we need to use Terminal to help us get started, first.

#### Instructions

1) Using Finder, navigate to `Applications`
2) Double-click on `Utilities`
3) Double-click on `Terminal`

Use the resulting window to execute the terminal commands as instructed below.

### Install Apple Xcode Command Line Tools

#### Instructions

Note that the installation of command line tools can take a bit of time. Ensure you have a good internet connection available, and once you've begun the installation process, be prepared to take a break.

1) Install the command line tools by entering the following command into your terminal

```no-highlight
xcode-select --install
```

If the install fails, visit the [Apple Developer Tools
site](https://developer.apple.com/downloads/index.action) to download and
install "Command Line Tools OS X".

2) **Restart your computer**.

3) To verify that the install was successful, enter the following command into your terminal

```no-highlight
xcode-select -p
```

You should see the following returned

```no-highlight
/Library/Developer/CommandLineTools
```

{% vimeo_video "143689584" %}

#### Why?

Installation of many common Unix-based tools requires a GCC compiler. The Xcode Command Line Tools include a GCC compiler.

### Install Homebrew

#### Instructions

1) Run this command in the terminal

```no-highlight
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)"
```

ZOMG it's a Ruby script! It will take care of installing Homebrew for you.

2) To verify successful installation, run in your terminal

```no-highlight
brew doctor
```

and you should see

```no-highlight
Your system is ready to brew.
```

{% vimeo_video "143685459" %}

#### Why?

[Homebrew](http://brew.sh/) is a package management system that simplifies the installation of software.

### Install iTerm2

#### Instructions

1) [Download](http://iterm2.com/downloads)

2) Set iTerm to Reuse Previous Session's Directory by opening Iterm, and going to `Iterm -> Preferences -> Profiles -> General -> Working Directory` and choosing "Reuse previous session's directory".

**Note: You should now use iTerm instead of terminal for everything.**

{% vimeo_video "143685531" %}

#### Why?

The built in Terminal.app is great, but iTerm2 has some neat features that you
will make your life as a developer easier.
You can use either interchangeably for accessing the command line, but we recommend using iTerm2 from here on out.
Once installed, use iTerm2 for all command line or terminal commands below.

### Install Oh My ZSH

#### Instructions
1) Install it by running the following command in your command line interface

```no-highlight
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

2) Verify that zsh is the default shell by going to to system preferences -> Users & Groups -> click the lock -> enter your password -> right click on your account -> hit advanced options -> verify your login shell is `/bin/zsh` -> if not, change it and restart your computer.

3) Finish the Oh My ZSH installation by restarting iTerm. Be sure to completely quit iTerm by using `cmd + q` and relaunch the application.

{% vimeo_video "143685562" %}

#### Why?

[Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) will make working in your
terminal much more enjoyable. It will configure a lot of things for you, such as
auto-completion and awesome colors. As a developer, you'll spend lots of quality time in your terminal, so it's a
good idea to take advantage of tools that make it easier and more fun to use.

### Set Atom as your default editor

#### Instructions

1) Open Atom and click the "Atom" menu, then select "Install Shell Commands."

2) Run the following command on the command line

```no-highlight
echo "export EDITOR=\"/usr/local/bin/atom --wait\"" >> ~/.zshrc
```

3) Verify that this step was successful. On your command line, go to your root directory by running

```no-highlight
cd ~
```

and opening up the `.zshrc` file with

```no-highlight
atom .zshrc
```

At the bottom of the file, you should see:

```no-highlight
export EDITOR="/usr/local/bin/atom --wait"
```

{% vimeo_video "143685609" %}

#### Why?

We want to ensure that our terminal opens up Atom by default whenever an editor is needed.

### Install chruby

1) First, we have to check that a conflicting library is not in place. Ruby Version Manager, or RVM for short, is an alternative to `chruby` that you may have installed in the past. Let's check that RVM is not installed by running the following command:

```no-highlight
rvm notes
```

You should get

```no-highlight
zsh: command not found: rvm
```

If you do not get the expected output, uninstall RVM by running

```no-highlight
sudo rvm implode
```

2) We also need to check that we don't have another problematic application, known as MacPorts. This can cause conflicts and configuration issues with homebrew. Check that MacPorts are not installed by running

```no-highlight
port help
```

You should get

```no-highlight
zsh: command not found: port
```

If you do not get the expected output, you can uninstall MacPorts by following [this guide](https://guide.macports.org/chunked/installing.macports.uninstalling.html).

3) Install Chruby by running in your terminal

```no-highlight
brew install chruby
```

4) Enable Auto-switching current Ruby versions by running the following two commands

```no-highlight
echo "source /usr/local/share/chruby/chruby.sh" >> ~/.zshrc
echo "source /usr/local/share/chruby/auto.sh" >> ~/.zshrc
```

5) Verify that this step was successful. On your command line, go to your root directory by running

```no-highlight
cd ~
```

and opening up the `.zshrc` file with

```no-highlight
atom .zshrc
```

At the bottom of the file, you should see

```no-highlight
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
```

{% vimeo_video "143685683" %}

#### Why?

[chruby](https://github.com/postmodern/chruby) allows you to switch between
different versions of Ruby. Thus, you'll be able to work on multiple projects requiring different ruby versions.

### Install Ruby versions

1) Install the Ruby version installer, [ruby-install](https://github.com/postmodern/Ruby-install#readme) with the command below.

```no-highlight
brew install ruby-install
```

2) Install Ruby 2.4.5

```no-highlight
ruby-install ruby 2.4.5
```

3) Set Ruby 2.4.5 as your default Ruby

```no-highlight
echo "ruby-2.4.5" > ~/.ruby-version
```

4) Close iTerm and reopen it in order for these changes to take effect. Then run

```no-highlight
chruby
```

You should see

```no-highlight
* ruby-2.4.5
```

5) This last step will help you avoid issues in future assignments. Run:

```no-highlight
gem install bundler
```

{% vimeo_video "143690047" %}

Note that in the video above, versions may differ. Like other modern software, different versions of the ruby programming language will be released from time to time. Where there is a conflict, rely on the written instructions to help you determine which version you should use.

#### Why?

You'll want a stable recent version of Ruby to develop with!

### Congrats! You're done with the core installation requirements!

In the next assignment, we'll run through the list and ensure everything is installed and ready to go!
