# CodeRunnerCLI

[![GitHub release](https://img.shields.io/github/release/cojoj/CodeRunnerCLI.svg)](https://github.com/cojoj/CodeRunnerCLI/releases/latest)

I won't be advertising here for [CodeRunner 2](https://coderunnerapp.com), but it's a great app! 😅
It's a compromise between bloated IDEs and simple text editors. What's the biggest advantage is that it supports a lot of different programming languages out of the box, so you can jump in and make something useful without fighting with additional dependencies etc. Don't forget it's a native app, so no more struggle with Electron 😜

I was willing to move all my _non serious_ development stuff to Code Runner 2, but I've discovered it lacks a really important feature (at least for me...) - [Command Line Interface](https://en.wikipedia.org/wiki/Command-line_interface).
If you've been missing it as well and waiting for creators to add it...
Wait no more! It's here and written in nothing else, but **Swift**! 🙌

# Requirements

This tool is for **macOS only**. To run it, make sure you have:
+ **Swift 3.1** (SPM)
+ **macOS 10.11** or higher
+ **Git**

# Installing

To make it work you simply have to

```bash
$ git clone https://github.com/cojoj/CodeRunnerCLI.git
$ cd CodeRunnerCLI
$ swift build -c release -Xswiftc -static-stdlib
$ cp -f .build/release/CodeRunnerCLI /usr/local/bin/cr
```

Form now on you have a `cr` command line tool available for your user.

# Usage

The most important feature of good code editing tool is possibility to open specific file or directory straight from you command line, because we're all working with `git` and maybe some other tools accessible via terminal. 
**CodeRunnerCLI** allow you to do so without any problem.

If you want to open Code Runner with file named `script.swift`, run:
```bash
$ cr swift.script
```

If you want to open Code Runner in newly created directory, simply run:
```bash
$ cr ~/path/to/some/dir/
```

**CodeRunnerCLI** is able to resolve paths correctly, so you can use things like `~/`, `.` or `..`. We're also taking care of existing files, so if you already have a file with this name in your file system, **CodeRunnerCLI** won't override it, but will just open it for you 😉

# Developing ⚒

As mentioned here and there, this project is a Swift application which uses [SPM](https://swift.org/package-manager/), so everything you'd normaly do with SPM project you can do with **CodeRunnerCLI** as well ✌️

If you've decided you want to contribute there are actually two ways of doing it:
1. Text Editor + Terminal
2. Xcode (or anythig else supporting `.xcodeproj` files)

If you're planning to use the first option, just use command like `swift build` and `swift test`. Second option is more complicated as I've decided not to push `.xcodeproj` to this repository, so before you start anyting you'll have to run `swift package generate-xcodeproj` and you'll have to do it everytime you manipulate SPM. Developing in Xcode gives you a lot of nice features known from developing iOS/macOS apps.

# Everything else

+ Created with ❤️ by [@cojoj](https://twitter.com/cojoj)
+ Project is realeased under [MIT license](LICENSE.md)
+ Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md)
+ **Issues** and **Pull Requests** are more than welcome! 🌸
