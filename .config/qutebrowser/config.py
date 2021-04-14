import dracula.draw

config.load_autoconfig(True)

dracula.draw.blood(c, {
    'spacing': {
        'vertical':   6,
        'horizontal': 8
    }
})

c.url.default_page = 'https://www.searx.bar/'

c.url.searchengines = {
    'DEFAULT': 'https://www.searx.bar/search?q={}',
    'am':      'https://www.amazon.com/s?k={}',
    'ambr':    'https://www.amazon.com.br/s?k={}',
    'aw':      'https://wiki.archlinux.org/?search={}',
    'g':       'https://www.google.com/search?q={}',
    'h':       'https://hoogle.haskell.org/?hoogle={}',
    'l':       'https://www.linguee.pt/portugues-ingles/search?source=auto&query={}',
    'lbry':    'https://lbry.tv/$/search?q={}',
    'libgen':  'http://libgen.rs/search.php?req={}',
    'od':      'https://odysee.com/$/search?q={}',
    'pr':      'https://thepiratebay.org/search.php?q={}',
    're':      'https://www.reddit.com/r/{}',
    'sx':      'https://www.searx.bar/search?q={}',
    'ub':      'https://www.urbandictionary.com/define.php?term={}',
    'yt':      'https://www.youtube.com/results?search_query={}',
    'w':       'https://en.wikipedia.org/wiki/{}',
}

config.bind('yo', 'yank inline [{title}]({url})')
config.bind('t',  'set-cmd-text -s :open -t')
config.bind('M',  'hint links spawn mpv {hint-url}')
config.bind('Z',  'hint links spawn konsole -e youtube-dl {hint-url}')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle statusbar.show always never')
