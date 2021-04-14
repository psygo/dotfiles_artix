import dracula.draw

config.load_autoconfig(True)

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

config.bind('yo', 'yank inline [{title}]({url})')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Z', 'hint links spawn konsole -e youtube-dl {hint-url}')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle statusbar.show always never')
