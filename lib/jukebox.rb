# Add your code here
def  help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play" 
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(song_arr)
 song_arr.each.with_index(1) do |ele, idx|
puts "#{idx}. #{ele}"
  end
end

def play(song_arr)
  puts "Please enter a song name or number:"
  user_answer = gets.strip
  song_arr.each.with_index(1) do |ele, idx|
    if user_answer == idx.to_s || user_answer == ele
      puts  "Playing #{ele}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  end
  end
  
  def exit_jukebox
    puts "Goodbye"
  end
  
def prompt()
  puts "Please enter a command:"
  gets.chomp()
end


def run(song_arr)
  puts "Please enter a command:"
  command = ""
  while command 
    command = gets.strip
  case command
  when "exit"
    exit_jukebox
    return
  when "help"
    help
  when "list"
    list(song_arr)
  when "play"
    play(song_arr)
  else
    help
  end
end
end
  