# CodeRunnerCLI

I bet you've been waiting for a [Command Line Interface](https://en.wikipedia.org/wiki/Command-line_interface) for [CodeRunner 2](https://coderunnerapp.com), right?
Wait no more! It's here and written in nothing else than Swift! 🙌

# Requirements

This tool relies on:
+ Swift 3.1 with Swift Package Manager

# Installing

To make it work you simply have to

```bash
$ git clone https://github.com/cojoj/CodeRunnerCLI.git
$ cd CodeRunnerCLI
$ swift build -c release -Xswiftc -static-stdlib
$ cp -f .build/release/Marathon /usr/local/bin/cr
```

Form now on you have a `cr` command line tool available for your user.
