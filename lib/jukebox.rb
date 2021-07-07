songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{|ind_song, index|
  puts "#{index + 1}. #{ind_song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.strip
  if song_input.length == 1
    song_input = song_input.to_i 
    puts "Playing #{songs[song_input-1]}"if song_input >=1 && song_input <=9
    return
  else
    songs.each{|ind_song|
    if ind_song == song_input
      puts"Playing #{ind_song}"
      return
    end
    }
  end
    puts "Invalid input, please try again"
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    input_command = gets.strip
      case input_command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      end
  end
end

