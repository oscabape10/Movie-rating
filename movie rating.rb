#hash movies - title are te Keys. Rates are the values.
movies = {
  StarWars: 4.8,
  Divergent: 4.7}
#ask the question to Users.
puts "What would you like to do? "
#Get response from user.
choice = gets.chomp
#Build the case.

case choice

#When the user chooses to add a movie.
when "add"
#Ask the user the question.
  puts "What movie would you like to add? "
#gets repose from user
  title = gets.chomp
 #check if the movie its in the hash already.
  if movies[title.to_sym].nil?
 #If movie not in the hash, ask user the rating of movie.
    puts "What rating does the movie have? "
#Gets rating user from input
    rating = gets.chomp
#Add new Title and rating to hash
    movies[title.to_sym] = rating.to_i
puts “Movie has been added!”
  # If the movie already exit, else.
  else
#Display to the user message, and display rating.
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
#When the user chooses Update.
when "update"
#Display message to the user.
  puts "What movie would you like to update? "
#Gets user input.
  title = gets.chomp
#Check if movie does not exist in hash.
  if movies[title.to_sym].nil?
#if not display below message.
 puts "That movie does not exist."
#if does, else.
  else
#Ask user for the new rate.
    puts "What is the new rating? "
# Get user input.
    rating = gets.chomp
#Update the hash wiht new rating.
    movies[title.to_sym] = rating.to_i
puts “Movie has been updated!”
end
#When the user wants to see movies and rating in the hash.
when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
#When user want to deletea movie and rating.
when "delete"
#Ask user the question.
  puts " What movie would you like to delete"
#Get user input.
  title = gets.chomp
#If the title the user input match one in the hash.
  if movies[title.m]
#Display message to the user.
    puts " Deleted!"
#If name inputted does not match, else.
else
#Display message to user.
  puts "Error!"
end
