# IRC

## Useful Resources

- [Irssi - Terminal IRC Client - Who Needs a GUI to Chat!](https://www.youtube.com/watch?v=gOg-V_-tZMo)
- [IRC Chat - How to Use The Social Underground of Geeks](https://www.youtube.com/watch?v=gavdElFoTWI)
- [HexChat](https://hexchat.github.io/)

## Basic Usage

Connect to a network:

```irc
/connect chat.freenode.net                # connection

/set nick <username>                      # usernames can be reset on channels
/nick <username>                          # same as above
/msg nickserv register <password> <email> # registering into the server

/join #<channel>                          # joining a channel

/msg <user> <msg>                         # private message to user

/msg ChanServ register <channel_name>     # register your channel
/msg ChanServ op <channel_name>           # rejoin the channel you created
```

Another form of connecting can be found in [this Haskell IRC example tutorial](https://wiki.haskell.org/IRC_channel):

```console
$ irssi -c irc.libera.chat -n <nick> -w <password>
  /join #haskell
```

## Irssi

The configuration will be in the `~/.irssi` folder.

By default it uses the `~/.Xresources` colors, or the `~/.irssi/default.theme` colors.

## HexChat

[HexChat](https://hexchat.github.io/index.html) is a great tiny GUI client for IRC.

Adding themes to it can be done with [this tutorial](https://hexchat.readthedocs.io/en/latest/appearance.html#theme-files).
