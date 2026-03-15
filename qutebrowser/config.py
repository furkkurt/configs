config.load_autoconfig()

#config.set("colors.webpage.darkmode.enabled", True)

#swapforqute
sfq_base_dir = "~/.config/qutebrowser/userscripts/swapforqute/"
sfq_script_path = sfq_base_dir + "main.py"
sfq_conf_path = sfq_base_dir + "config.json"
sfq_cmd = "--userscript {} -c {}".format(sfq_script_path, sfq_conf_path)

c.aliases['sfq'] = "set-cmd-text -s :spawn {} --cmd 'open' -u ".format(sfq_cmd)
#config.bind('f', "hint links spawn {} --cmd 'open' -u ".format(sfq_cmd) + " {hint-url}")
#config.bind('F', "hint links spawn {} --cmd 'open -t' -u ".format(sfq_cmd) + " {hint-url}")


# Bindings
config.bind("<f2>", "inspector")
config.bind("xb", "config-cycle statusbar.show always never")
config.bind("xt", "config-cycle tabs.show always never")
config.bind("xx", "config-cycle statusbar.show always never;; config-cycle tabs.show always never")
config.bind("pp", 'spawn xdotool key space ;; spawn --detach mpv {url}')
config.bind("wl", "spawn bash -c 'echo {url} >> ~/.config/qutebrowser/userscripts/watchLater.txt'")
config.bind("wr", "spawn bash -c 'grep -v {url} ~/.config/qutebrowser/userscripts/watchLater.txt >> tmp.txt && mv tmp.txt ~/.config/qutebrowser/userscripts/watchLater.txt'")
config.bind("wp", "spawn bash -c 'mpv $(~/.config/qutebrowser/userscripts/watchLater.sh)'")

# Search Engines
c.url.searchengines = \
    { "DEFAULT" : "https://searx.rhscz.eu/search?q={}&source=web",\
     "g" : "https://www.google.com/search?q={}&source=web",\
     "w" : "http://en.wikipedia.org/w/index.php?search={}&title=Special:Search",\
     "y" : "http://www.youtube.com/results?search_query={}",\
     "d" : "http://dictionary.reference.com/browse/{}?s=t",\
     "s" : "https://www.startpage.com/do/search?query={}&lui=english"
    }
config.load_autoconfig(False)

# Set the start pages (opens when the browser first starts)
c.url.start_pages = ["https://search.rhscz.eu/"]

# Set the default page for new tabs
c.url.default_page = "about:blank"

# Fonts
c.fonts.default_family = "Tahoma"
c.fonts.default_size = "10pt"
c.fonts.tabs.selected = "10pt Tahoma"
c.fonts.tabs.unselected = "10pt Tahoma"
c.fonts.statusbar = "10pt Tahoma"
c.fonts.prompts = "10pt Tahoma"
c.fonts.completion.entry = "10pt Tahoma"
c.fonts.completion.category = "bold 10pt Tahoma"
c.fonts.hints = "bold 10pt Tahoma"

# Web fonts
c.fonts.web.family.standard = "Verdana"
c.fonts.web.family.serif = "Georgia"
c.fonts.web.family.sans_serif = "Verdana"
c.fonts.web.family.fixed = "Bitstream Vera Sans Mono"
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 14

# Layout
c.tabs.position = "top"
c.tabs.show = "multiple"
c.statusbar.show = "always"
c.statusbar.widgets = ["keypress", "url", "scroll", "history", "tabs", "progress", "clock:%H:%M"]

# Light 2000s-ish colors
bg = "#d6d3ce"
fg = "#000000"
blue = "#3465a4"
lightblue = "#729fcf"
sel = "#c9d7e5"
white = "#ffffff"
red = "#a40000"

c.colors.completion.fg = fg
c.colors.completion.odd.bg = "#ece9e2"
c.colors.completion.even.bg = "#e4e1db"
c.colors.completion.category.bg = bg
c.colors.completion.category.fg = fg
c.colors.completion.category.border.top = "#808080"
c.colors.completion.category.border.bottom = "#808080"
c.colors.completion.item.selected.bg = sel
c.colors.completion.item.selected.fg = fg
c.colors.completion.match.fg = blue

c.colors.statusbar.normal.bg = bg
c.colors.statusbar.normal.fg = fg
c.colors.statusbar.command.bg = bg
c.colors.statusbar.command.fg = fg
c.colors.statusbar.insert.bg = lightblue
c.colors.statusbar.insert.fg = white
c.colors.statusbar.passthrough.bg = "#8f5902"
c.colors.statusbar.passthrough.fg = white
c.colors.statusbar.private.bg = "#75507b"
c.colors.statusbar.private.fg = white
c.colors.statusbar.url.fg = fg
c.colors.statusbar.url.success.http.fg = "#4e9a06"
c.colors.statusbar.url.success.https.fg = "#204a87"
c.colors.statusbar.url.warn.fg = "#8f5902"
c.colors.statusbar.url.error.fg = red

c.colors.tabs.bar.bg = bg
c.colors.tabs.odd.bg = "#ece9e2"
c.colors.tabs.odd.fg = fg
c.colors.tabs.even.bg = "#e4e1db"
c.colors.tabs.even.fg = fg
c.colors.tabs.selected.odd.bg = blue
c.colors.tabs.selected.odd.fg = white
c.colors.tabs.selected.even.bg = blue
c.colors.tabs.selected.even.fg = white

c.colors.downloads.bar.bg = bg
c.colors.downloads.start.bg = blue
c.colors.downloads.start.fg = white
c.colors.downloads.stop.bg = "#4e9a06"
c.colors.downloads.stop.fg = white
c.colors.messages.info.bg = bg
c.colors.messages.info.fg = fg
c.colors.messages.warning.bg = "#fcecc7"
c.colors.messages.warning.fg = fg
c.colors.messages.error.bg = "#f4d7d7"
c.colors.messages.error.fg = fg

# More retro behavior
c.scrolling.smooth = False
c.tabs.indicator.width = 2
c.tabs.favicons.show = "always"

