# Proper Cedilla under the US Intl with Dead Keys Layout

> You can find the source of this info [here][gist].

1. Edit the following files to have `:en` at the end of the `cedilla` line.
    ```sh
    sudo vim /usr/lib/gtk-3.0/3.0.0/immodules.cache
    sudo vim /usr/lib/gtk-2.0/2.10.0/immodules.cache
    ```
1. Replace "ć" to "ç" and "Ć" to "Ç" on `/usr/share/X11/locale/en_US.UTF-8/Compose`
    ```sh
    sudo cp /usr/share/X11/locale/en_US.UTF-8/Compose /usr/share/X11/locale/en_US.UTF-8/Compose.bak
    sudo sed 's/ć/ç/g' < /usr/share/X11/locale/en_US.UTF-8/Compose | sed 's/Ć/Ç/g' > Compose
    sudo mv Compose /usr/share/X11/locale/en_US.UTF-8/Compose
    ```
1. Add two lines to `/etc/environment`:
    ```sh
    GTK_IM_MODULE=cedilla
    QT_IM_MODULE=cedilla
    ```
1. Restart your computer.


[gist]: https://gist.github.com/nilo/c2a31a0f9f29c88145ca
