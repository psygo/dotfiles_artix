# My Dotfiles

These are my configuration files for Linux &mdash; I'm currently using the [Artix](https://artixlinux.org/) distro &mdash;; I focus a lot on minimalism. Anyway, I currently use:

- [Kitty](https://sw.kovidgoyal.net/kitty/) as my terminal, very fast and supports font ligatures
- [Fira Code](https://github.com/tonsky/FiraCode) as my default monospaced, ligated font; and Cantarell as my non-monospaced default font
- [Neovim](https://github.com/neovim/neovim) as my in-terminal editor
- [Emacs](https://www.gnu.org/software/emacs/) as my editor for software projects
    - With [Evil Mode](https://github.com/emacs-evil/evil)
    - [VS Code](https://github.com/microsoft/vscode) as a backup editor
- [XMonad](https://xmonad.org/) as a Window Manager
    - [Awesome](https://github.com/awesomeWM/awesome) is my alternative, backup window manager, mostly for when XMonad breaks, which happens sometimes after an update.
- [`XMonad.Prompt`](https://hackage.haskell.org/package/xmonad-contrib-0.16/docs/XMonad-Prompt.html) as an application launcher
- [ranger](https://github.com/ranger/ranger) as an in-terminal file manager
- [Krusader](https://krusader.org/) as my GUI file manager
    - And [Nemo](https://github.com/linuxmint/nemo) for quick stuff
- [qutebrowser](https://github.com/qutebrowser/qutebrowser) as my default browser
    - [Brave](https://brave.com/) with [cVim](https://chrome.google.com/webstore/detail/cvim/ihlenndgcmojhcghmfjfneahoeklbjjh?hl=en), is my backup
- [Zathura](https://pwmt.org/projects/zathura/) as a Vim-like way of viewing PDFs
    - However [Okular](https://okular.kde.org/) is still a big part of my workflow, specially when it comes to long books
- [Ferdi](https://getferdi.com/) as my messenger-unifying browser.
    - [Irssi](https://github.com/irssi/irssi) as my IRC TUI.
- [Sabaki](https://sabaki.yichuanshen.de/) as my Go SGF editor.

Another very important part of my setup is my *organization*. For that, besides the usual Linux standard folders, I have some other specific folders &mdash; which I've later on confirmed some other high profile programmers also use &mdash;:

- `~/Code/` for where I put all of my coding.
- `~/Notes/` where I store my mostly Markdown notes about various topics. It's currently around 3k+.
- `~/Library/` is the place where all of my eBooks go. It's my digitized library and so much more. All of my study sessions nowadays are clutter-free in the real life &mdash; and I'm thinking about digitizing my own self as well.

I also use some custom command-line programs which help create a more modern environment, like Rust's [`exa`](https://github.com/ogham/exa) and [`bat`](https://github.com/sharkdp/bat). Another strong recommendation I have is the amazing [`fzf`](https://github.com/junegunn/fzf) multi-tool, which also happens to have strong Vim integration through a plugin.

As an extra, here is [`neofetch`](https://github.com/dylanaraps/neofetch)'s output on my machine:
```neofetch
                   '                      \u@desktop 
                  'o'                     ---------- 
                 'ooo'                    OS: Artix Linux x86_64 
                'ooxoo'                   Host: B360M GAMING HD 
               'ooxxxoo'                  Kernel: 5.12.10-artix1-1 
              'oookkxxoo'                 Uptime: 6 hours, 14 mins 
             'oiioxkkxxoo'                Packages: 1191 (pacman) 
            ':;:iiiioxxxoo'               Shell: bash 5.1.8 
               `'.;::ioxxoo'              Resolution: 2560x1080, 2560x1080 
          '-.      `':;jiooo'             WM: xmonad 
         'oooio-..     `'i:io'            Theme: Adwaita-dark [GTK2/3] 
        'ooooxxxxoio:,.   `'-;'           Icons: HighContrast [GTK2/3] 
       'ooooxxxxxkkxoooIi:-.  `'          Terminal: kitty 
      'ooooxxxxxkkkkxoiiiiiji'            CPU: Intel i7-8700 (12) @ 4.600GHz 
     'ooooxxxxxkxxoiiii:'`     .i'        GPU: NVIDIA GeForce GTX 1060 6GB 
    'ooooxxxxxoi:::'`       .;ioxo'       Memory: 7875MiB / 32045MiB 
   'ooooxooi::'`         .:iiixkxxo'
  'ooooi:'`                `'';ioxxo'                             
 'i:'`                          '':io'                            
```
