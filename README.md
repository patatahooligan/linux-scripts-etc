# linux-scripts-etc

> *Note:* this repo will be split into smaller coherent repos such as linux-home
as that is more practical than an all-in-one approach. It will not be updated any
further and I will eventually delete it. See
>
> https://github.com/patatahooligan/linux-home

This is just a repository of some scripts and configuration files I expect to
reuse across linux installations. I will slowly build it up every time I
install a new system.

Nothing here is intended to be useful to other people, but if you like anything,
feel free to download for personal use. Note that these files are primarily used
on Arch linux. Even if you use the same software, your distro might package
different, potentionally incompatible, versions.

Whenever possible, the internal structure of each directory is preserved to
allow for mass copying. For example recursively copying etc into /etc will put
every file in its appropriate place for the current Arch linux packages. Be
careful of overwriting stuff you care about when doing this.

To ease tracking and committing of files, you can symlink to the contents of the
repo. Before doing so, consider the security implications of

  * having your configuration files linked to a repo which will sync with a remote
  * having system configuration files symlinked to non-root owned files

The latter point is quite important and some programs might even check file
permissions and refuse to run if they are found to be unsafe. Having a root-owned
copy of the repo solves this. Perhaps the repo should be split into user configs
and system configs to make handling this more natural.

When necessary, specific instructions for files will be added to separate readme
files to avoid cluttering a single one with too much info.
