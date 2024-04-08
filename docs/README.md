We've created this page where you can try our new program called **spadmin.py** out before the final release and share any bugs or comments with us.

The next-generation of dsmadmc command line tool. Available for Mac 🍎, Linux, and Windows (WSL).

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine/)

# Introduction

With many years of experience behind us, we've created a utility that can help the daily work of IBM Spectrum Protect administrators. 

Whith my colleagues, we've been trying around to find a good tool to make our own daily TSM/SP work easier. We've made several Perl-based solutions like [tsmadm.pl](https://tsmadm.pl.fleischmann.hu/) and we have had a [Node.js poc](https://github.com/FleXoft/spadmin.js) in the past. These are the ones that are still available on the web.

More than a year ago, we tried to create such a solution in [Python3](https://www.python.org/), which is so popular today. We're not Python programmers, but we wanted to try how to solve this in Python. At the moment we have reached a stable state that we would like to share and get feedback on.

We ask you to contribute with your constructive comments and suggestions to the developers. The source code not yet opend for the public.

![spadmin.py](images/spadmin_screen_01.png)

# Main features

- **cli with IBM SP command completion**
- **the command complition can also handle IBM SP objects**
- command alisases
- command history
- command result history (TimeMachine)
- grep
- HTML output
- predefine custom commands for easier daily work 
- historical data retrieve 
- 

# Prerequisites

## Currently supported operating systems

- Linux: Ubuntu, Centos
- WSL on Windows
- macOS
- Docker container
- unfortunately, these functions: GNUreadline, pexpect + Unix fork cannot be done nicely in Python3 under Microsoft Windows, so we had to drop the direct support of Microsoft Windows

## python

- python3 

## IBM Spectrum Protect

- IBM Spectrum Protect v6, v7, v8 (some commands will of course still run on the old v5 systems, but not all)

# Releases, get spadmin.py

If you'd like to download the latest binaries, you can find them here:

[https://github.com/IBMSPadmin/beta/releases](https://github.com/IBMSPadmin/beta/releases)

If you want to try it on our live test environment, you can use the following command: [ssh spadmin@158.177.249.114](ssh://spadmin@158.177.249.114) The password is: **spadmin**

## Installation steps

```TODO!```

## License

You can request a licence to try it out from here: szmarcell@gmail.com

# Command examples

```TODO!```

# FUTURE

If you are interested, there are several ways you can support us:
- you can report bugs [here](https://github.com/IBMSPadmin/beta/issues) for the time being
- you can start a [discussion](https://github.com/IBMSPadmin/beta/discussions), share your opinion, give ideas, make suggestions
- here you can contribute financially to this project with [GitHub Sponsors](https://github.com/sponsors/FleXoft)
- if you have a specific need for an extension, you can also use [this](https://github.com/sponsors/FleXoft) way of support with your request
- if you feel that you have the knowledge, we welcome the help of good programmers, and you can show the seriousness of your interest (minimum 9.99,- EUR) with your [support](https://github.com/sponsors/FleXoft) and get full access to our source code at [GitHub](https://github.com/IBMSPadmin/spadmin/)

# Issues

How you should help us debuging any issues you're having with spadmin.py. The **spadmin show log** command may identifies the issues. Most of the time, you won't need to do anything else just send us the log via Github Issues with a small description of the expected behaviour!

## Expected output example

$ spadmin show log

[https://github.com/IBMSPadmin/beta/issues](https://github.com/IBMSPadmin/beta/issues)

# Feature requests

All feature requests are welcome! If you've got an idea for another feature or anything that would make your backup admin life easier, please get in touch!

The best way to request a feature is via our GitHub Discussions page
If you have a more in-depth idea, please get in touch via email! idea@spadmin.py.io - we'd love to discuss it with you 😀

# Free discussions

[https://github.com/IBMSPadmin/beta/discussions](https://github.com/IBMSPadmin/beta/discussions)
