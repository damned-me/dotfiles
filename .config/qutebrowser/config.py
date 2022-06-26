config.load_autoconfig()
c.auto_save.session = True
c.editor.command = ["kitty", "-e", "vim", "-f", "{file}", "-c", "normal {line}G{column0}l"]
c.url.searchengines = {"DEFAULT": "https://startpage.com/search?query={}", "wa": "https://wiki.archlinux.org/?search{}", "wp": "https://en.wikipedia.org/wiki/Special:Search/{}"}
c.url.start_pages = "https://startpage.com/"
c.url.default_page = "https://startpage.com/"


# qutepass
config.bind('<Alt-Shift-u>', 'spawn --userscript qute-keepassxc --key KEY', mode='insert')
config.bind('pw', 'spawn --userscript qute-keepassxc --key KEY', mode='normal')
