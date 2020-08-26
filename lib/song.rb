require 'pry'
class Song 
  attr_accessor :name,:artist,:genre
  @@count = 0 
   @@artists = []
  @@genres = []

def initialize(name,artist,genre)
  @@genres << genre 
  @@artists << artist 
  @@count += 1 
 @name= name 
 @artist = artist 
 @genre = genre 
end              

def self.artists
@@artists.uniq
end 

def self.count
 @@count 
end

def self.genres 
 @@genres.uniq
end 

def self.genre_count
  count = {}
  num = 1 
@@genres.each  do |music|
  if count.include?(music) == true 
  count[music] = num + 1 
 else 
   count[music] = num 
   end
  end
count 
end 
def self.artist_count 
  count = {}
  num = 1
  @@artists.each do |singers|
    
    if count.include?(singers) == true 
      count[singers] = num + 1 
    else 
      count[singers] = num 
    end
  end 
end

  

end 