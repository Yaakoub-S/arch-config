# Not loading settings in autoconfig.yml
config.load_autoconfig()

# Set the default search engine
c.url.searchengines = {
    'DEFAULT': 'https://www.google.com/search?q={}'
}

# Start page google
c.url.start_pages = ['https://www.google.com']

