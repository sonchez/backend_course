string = 'Four score and seven.'

newstring = string.gsub(/[^a-zA-Z0-9\s]/, '')
p newstring