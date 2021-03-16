# Using `youtube-dl` Effectively

## Backing Up Your YouTube Channel

The line below downloads all your &mdash; public &mdash; videos and their metadata from YouTube:

```sh
youtube-dl -f best -ciw --write-description -o "%(title)s.%(ext)s" -v https://www.youtube.com/channel/UCuUK6AAtvo8cTFOJ3OOg9Mw
```

You can also use the `--skip-download` to only download the description.

For more info, check out [this answer on AskUbuntu][ask_ubuntu_1].


[ask_ubuntu_1]: https://askubuntu.com/a/856913/195881
