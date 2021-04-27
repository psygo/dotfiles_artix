#-------------------------------------------------------------------------------
import dracula.draw
#-------------------------------------------------------------------------------
# Browser Configs

config.load_autoconfig(False)

# Misc
config.set('content.notifications.enabled', False, 'https://www.reddit.com')
config.set('content.notifications.enabled', False, 'https://calendar.google.com')
config.set('content.notifications.enabled', False, 'https://facebook.com')
config.set('content.register_protocol_handler', True)
c.search.ignore_case = 'always'
c.statusbar.show = 'always'
c.auto_save.session = True
c.confirm_quit = ['downloads']
c.content.tls.certificate_errors = 'block'
c.downloads.location.directory = '/home/philippe/Downloads/'
c.editor.command = ['kitty', '-e', 'vim "{}"']
# Colors & Media
monospace = '8px "Fira Code"'
c.colors.webpage.darkmode.enabled = True # requires a restart when changed
c.colors.webpage.preferred_color_scheme = 'dark'
# Tabs
c.tabs.title.format = '{index} {current_title}'
c.tabs.show = 'always'
c.tabs.background = True
c.tabs.last_close = "close"
c.tabs.select_on_remove = "prev"
#-------------------------------------------------------------------------------
# Themes

dracula.draw.blood(c, {
    'spacing': {
        'vertical':   6,
        'horizontal': 8
    }
})
#-------------------------------------------------------------------------------
# Search Engines

my_search_engine = 'https://www.searx.bar'

c.url.start_pages = [my_search_engine]
c.url.default_page = my_search_engine

c.url.searchengines = {
    'DEFAULT': f'{my_search_engine}/search?q=' + '{}',
    ':am':       'https://www.amazon.com/s?k={}',
    ':ambr':     'https://www.amazon.com.br/s?k={}',
    ':aw':       'https://wiki.archlinux.org/?search={}',
    ':g':        'https://www.google.com/search?q={}',
    ':h':        'https://hoogle.haskell.org/?hoogle={}',
    ':l':        'https://www.linguee.pt/portugues-ingles/search?query={}',
    ':lbry':     'https://lbry.tv/$/search?q={}',
    ':libgen':   'http://libgen.rs/search.php?req={}',
    ':od':       'https://odysee.com/$/search?q={}',
    ':p':        'https://pub.dev/packages?q={}',
    ':pr':       'https://thepiratebay.org/search.php?q={}',
    ':re':       'https://www.reddit.com/r/{}',
    ':sx':       'https://www.searx.bar/search?q={}',
    ':ub':       'https://www.urbandictionary.com/define.php?term={}',
    ':yt':       'https://www.youtube.com/results?search_query={}',
    ':w':        'https://en.wikipedia.org/wiki/{}',
}
#-------------------------------------------------------------------------------
# Shortcuts

toggle_statusbar = 'config-cycle statusbar.show always never'
toggle_tabs      = 'config-cycle tabs.show always never'

player_div =  'document.querySelector("#movie_player")'
player_elem = 'document.querySelector("video")'

config.bind('<alt+r>',         'restart')
config.bind('(',              f'jseval -q {player_div}.focus()')
config.bind(')',              f'jseval -q {player_div}.blur()')
config.bind('f',               'hint all tab')
config.bind('F',               'hint all current')
config.bind('<ctrl+shift+x>',  'tab-pin')
config.bind('<alt+b>',         'back')
config.bind('<alt+f>',         'forward')
config.bind('yo',              'yank inline "[{title}][url][url]: {url}"')
config.bind('t',               'set-cmd-text -s :open -t')
config.bind('M',               'hint links spawn mpv {hint-url}')
config.bind('Z',               'hint links spawn konsole -e youtube-dl {hint-url}')
config.bind('xt',               toggle_tabs)
config.bind('xb',               toggle_statusbar)
config.bind('xx',            f'{toggle_tabs};; {toggle_statusbar}')
config.bind('ba',             'bookmark-add')
config.bind('bd',             'bookmark-del')
config.bind('<alt+t>',        'set-cmd-text :tab-give ')
config.bind('<',             f'jseval {player_elem}.playbackRate-=.25')
config.bind('>',             f'jseval {player_elem}.playbackRate+=.25')
config.unbind('b')
config.unbind('m')
#-------------------------------------------------------------------------------
