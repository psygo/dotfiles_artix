# How to Have XDG Really Change the Default Browser

Many applications on Linux do not actually use the `${BROWSER}` environment variable when opening links. They actually use a call on one of the utils from the `xdg` suite.

[This answer](https://askubuntu.com/a/1059047/195881) offers very detailed insights, but the gist of it is:

```sh
$ xdg-mime query default x-scheme-handler/http
firefox.desktop
$ xdg-mime query default x-scheme-handler/https
firefox.desktop

$ xdg-mime default google-chrome.desktop 'x-scheme-handler/http'
$ xdg-mime default google-chrome.desktop 'x-scheme-handler/https'
```
