# home

If you don't mind the clutter of potentially unused configuration files, you can
deploy the entire thing with

    $ cp -ars home ~

This will create symlinks to the repo files so that your modifications will
automatically be seen as changes and can be committed easily withotu extra copying.
The only exception to this is the dconf-dump which has to be converted back into
the binary file dconf.

## .zshrc

This configuration is intended for an oh-my-zsh installation. Remember to set the
variable ZSH if the installation path is anything other than the default
/usr/share/oh-my-zsh/

The plugin zsh-autocompletion is also expected to be installed. The configuration
will work without it anyway.
