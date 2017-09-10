#PSEUDOCODE - Music Guru Program

#Create a table with default suggestions for songs - one for each mood
#User inputs a mood (happy, angsty, chill, angry)
# Program provides a suggested song to listen to, based on the user's inputted mood
# If the user doesn't like the suggestion, they can provide a song they think is better. The song they didn't like is then removed, and replaced with the user's suggestion.

#require gems
require 'sqlite3'

#create SQLite3 database
db = SQLite3::Database.new("music_guru.db")

#create string delimiter
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS songs(
  id INTEGER PRIMARY KEY,
  title VARCHAR(255),
  artist VARCHAR(255),
  mood VARCHAR(255)
  )
SQL

#create a songs table
db.execute(create_table_cmd)

#create default songs
# db.execute("INSERT INTO songs (title, artist, mood) VALUES ('Sun is Shining', 'Axwell/Ingrosso', 'happy'), ('Everything to Nothing', 'Manchester Orchestra', 'angsty'), ('Dayvan Cowboy', 'Boards of Canada', 'chill'), ('Last Resort', 'Papa Roach', 'angry')")