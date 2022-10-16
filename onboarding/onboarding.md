# Onboarding document

## Table of contents

- [Onboarding document](#onboarding-document)
  - [Table of contents](#table-of-contents)
- [First steps - software setup](#first-steps---software-setup)
  - [Discord](#discord)
  - [Jira](#jira)
  - [Visual Studio Code - recommended editor](#visual-studio-code---recommended-editor)
  - [IntelliJ](#intellij)
    - [Download](#download)
    - [Installation on Linux (universal)](#installation-on-linux-universal)
    - [Installation on Windows](#installation-on-windows)

# First steps - software setup

If you may have any questions, do not hesitate to ask anyone in our team or post
them on the `pomoc` channel on our discord.

These items is expected to be a checklist, make sure you have access to
everything.

## Discord

- the main way of communication

## Jira

- send your email to a supervisor
- click the link you received in the email to create an account or log in to an
  existing one

## Visual Studio Code - recommended editor

- recommended mainly for documents and all software excluding Java (IntelliJ is
  better here)

- word wrap at 80 characters - allows to display documents and code on any
  screen
  1. Settings (Ctrl+,)
  2. search: word wrap
  3. `Editor: Word wrap` - set to bounded
  4. `Editor: Word wrap columns` - set to 80
  5. Extensions (Ctrl+Shift+X) - install `Rewrap`
     - Extension settings (cog wheel)
     -  `Rewrap: Auto rewrap` - Enabled
     -  `Rewrap: Wrapping column` - set to 80

## IntelliJ

### Download

You can download IDE from the official website:
https://www.jetbrains.com/idea/download
Select Community or Ultimate Edition, thus second one is more recommended

### Installation on Linux (universal)

Unzip `tar.gz` file and move it to desired location.
To run IntelliJ run `bin/idea.sh`.

You can additionally create Desktop Entry to make IntelliJ appear in
applications list on your desktop environment.
To do this create file named `jetbrains-idea.desktop` in
`~/.local/share/applications/` and fill it with:
```
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Ultimate Edition
Icon=*intellij location*/bin/idea.svg
Exec="*intellij location*/bin/idea.sh" %f
Comment=Capable and Ergonomic IDE for JVM
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea
StartupNotify=true
```

### Installation on Windows

Run downloaded installer.
