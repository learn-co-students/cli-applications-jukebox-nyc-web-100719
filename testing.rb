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

def split(arr)
  song_names_arr = []
  song_name_string = ""
  arr.each do |el|
    song_name_string = el.split(" - ", 2)
    song_names_arr << song_name_string[1]
    p song_name_string
  end
  p song_names_arr
end

split(songs)

def between(num)
  if num.between?(1, 10)
    puts "yes"
  else
    puts "no"
  end
end

between(4)
between(12)

def work
  user_choice = 2
  puts user_choice.to_i.between?(1, 9)
end

work

def includes(string)
  if fina
end
  
######
def play(arr)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  final_song_names_arr = []
  arr.each do |el|
    song_names = []
    song_names = el.split(" - ", 2)
    final_song_names_arr << song_names[1]
  end
  #if user_choice.to_i.between?(1, 9)
   # p user_choice = user_choice.to_i + 1
  #  puts "Playing #{final_song_names_arr[user_choice]}"
  if final_song_names_arr.include?(user_choice)
    puts "Playing #{user_choice}"
  else 
    puts "Invalid input, please try again"
  end
end