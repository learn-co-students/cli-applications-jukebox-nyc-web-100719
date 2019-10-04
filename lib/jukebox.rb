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

def help 
  puts "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  if user_choice.to_i > 0 && user_choice.to_i <= 9
    puts "Playing #{songs[user_choice.to_i - 1]}"
  elsif songs.include?(user_choice)
    puts "Playing #{user_choice}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |el, index|
    puts "#{index +1}. #{el}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  until user_input == 'exit'
    case user_input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
    exit_jukebox
    break
  end
end
  
run(songs)



