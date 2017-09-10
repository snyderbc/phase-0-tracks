#PSEUDOCODE - Music Guru Program

# User inputs a mood (happy, angsty, chill, pumped, angry)
# Program provides a suggested song to listen to, based on the user's inputted mood
# If the user doesn't like the suggestion, they can provide a song they think is better. That song is then stored.

#require gems
require 'sqlite3'

#create SQLite3 database
db = SQLite3::Database.new("music_guru.db")