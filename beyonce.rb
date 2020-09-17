require 'pry'
require_relative './hash.rb'
#create local variable that brings in beyonce hash

data = $beyonce_hash

#    puts all the songs

def songs data
    data[:hits].map do |song|
        song[:title]
        # binding.pry
        #use pry here to stop inside this method, but call method outside of this
        #if we enter song to find value in pry, you can ctrl + D to keep going thru iteration. enter song again
    end
end

# songs(data)

#    puts all the movies
def movies data
    data[:movies].map do |move|
        movie[:title]
    end
end
#    create an array with a list of all of Beyonce's hit songs 
#    create an array with a list of all of Beyonce's fierceness ratings
#    give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme
def bodysuit_songs(data)
    songs = data[:hits].find_all do |song|
        #don't need if statement for find_all/select, include will give back true/false
        song[:video_theme].include?('bodysuit') || song[:signature_look].include?('bodysuit')
    end
    songs.map{|song| song[:title]}
    #returns a new array with just titles
end

#    create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
#    create an array with all of the movies Beyonce made in 2006 and after
#    find all the hit songs where beyonce was in a group
#    find a hit song where Beyonce's hair is blonde
#    find the hit song sorry
#    find all hit songs where Beyonce's fierceness rating is 10

#    sum up Beyonces fierceness value for all of her hit songs
#    get the average fierceness value for all of her hit songs
#    sum up Beyonces rating value for all of her movies
def ratings data
    data[:movies].map{|movie| movie[:rating]}
end

def sum_ratings data
    ratings(data).sum.to_f    
end

#    get the average rating value for all of her movies
def average_movie_rating data
    average = data[:movies].reduce(0) do |sum, movie|
        # binding.pry
        sum + movie[:rating].to_f
        #use float to round up, because integers round down - can use 0.0 for reduce too
    end
    average / data[:movies].count
end
binding.pry
#    sum up the total number of dancers in all of the hit song videos
#    create an array of beyonces hairstyles without repeats
#    create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
#    create an object where the properties are movie names and the value is an object which contains that rating and average rating
#    create a hash with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}