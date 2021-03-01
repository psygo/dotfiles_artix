# How to Take Screenshots

You could use `xorg-xwd`, but it might not work. [`scrot`][scrot], on the other hand, does seem to have an easier API and does work.

To take a screenshot, use:

```sh
scrot <filename>.<extension>
```

Then open the file on GIMP in order to edit the screenshot if you want.
