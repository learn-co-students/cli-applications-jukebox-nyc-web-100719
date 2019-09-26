# Add your code here
require 'pry'

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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number: "
  user_input = gets.strip
  
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_index{|x| puts "#{x + 1}. #{songs[x]}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command
    puts "Please enter a command:"
    user_input = gets.strip
    case user_input
      when 'exit'
        exit_jukebox
        break
      when 'list'
        list(songs)
      when 'play'
        play(songs)
      when 'help'
        help
      end
  end
end