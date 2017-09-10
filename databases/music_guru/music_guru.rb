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

puts "Welcome to Music Guru. We'll provide a song suggestion, based on your current mood. Don't like the suggestion? It's cool. Just tell us what song you'd prefer in the future, and we'll remember for next time around."

puts "Let's get to it. Which of the following best fits your current mood: happy, angsty, chill, or angry?"

#get user's current mood
current_mood = gets.chomp

#return the table value that matches the user's current mood

default_suggestion = db.execute ("SELECT * FROM songs WHERE mood = '#{current_mood}'")

# p default_suggestion.class --> Array

song_sugg = default_suggestion[0][1]
artist_sugg = default_suggestion[0][2]


puts "Sweet! Check out '#{song_sugg}' by #{artist_sugg}."

#ask the user if they're happy with the suggestion. If they're not, allow them to provide a different song/artist combo.

puts "How'd we do? Do you like our suggestion? (y/n)"
like_sugg = gets.chomp

if like_sugg =="y"
  puts "Glad you like it. Have a #{current_mood} day!"
else puts "Aw, shucks. We'll do better next time. What musician or band name would you prefer?"
  pref_artist = gets.chomp
  puts "Which of their songs is your favorite?"
  pref_song = gets.chomp
  puts "Got it! We'll remember that for next time you're feeling #{current_mood}."
end

