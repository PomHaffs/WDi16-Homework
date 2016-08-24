User.destroy_all
u1 = User.create :name => "Craig", :email => "craigsy@ga.co", :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => "Jonesy", :email => "jonesy@ga.co", :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken"

Mixtape.destroy_all
m1 = Mixtape.create :title => "Why won't she love me?"
m2 = Mixtape.create :title => "Still no love for me"
m3 = Mixtape.create :title => "Didn't love her anyway! Vol.1"

##USer is the primary thing so comes first!!!
u1.mixtapes << m1
u2.mixtapes << m2
u3.mixtapes << m3

p "User one mixtape count: #{u1.mixtapes.count}"
p "User two mixtape count: #{u2.mixtapes.count}"
p "User three mixtape count: #{u3.mixtapes.count}"
p "Mixtape one, user name: #{m1.user.name}"
p "Mixtape two, user name: #{m2.user.name}"
p "Mixtape three, user name: #{m3.user.name}"

Song.destroy_all
s1 = Song.create :name => "All by electricity"
s2 = Song.create :name => "Marianas Trench"
s3 = Song.create :name => "Have a safe trip, dear?"


Album.destroy_all
a1 = Album.create :name => "all by electricity"
a2 = Album.create :name => "From the vapor to the gasoline"
a3 = Album.create :name => "Sydtem/Layers"

#Song belongs_to :albums

a1.songs << s1 #album a1 must include s1
a2.songs << s2 #APPEND operator will change album_id on a song then save it
a3.songs << s3 #the .songs method is created by the has_many :songs on the Album model

p "song count on first album: #{a1.songs.count}"
p "song count on second album: #{a2.songs.count}"
p "song count on third album: #{a3.songs.count}"

p "Album name for the first song #{s1.album.name}"
p "Album name for the second song #{s2.album.name}"
p "Album name for the third song #{s3.album.name}"

Artist.destroy_all
r1 = Artist.create :name => "June of 44"
r2 = Artist.create :name => "The Mercury Porogram"
r3 = Artist.create :name => "Rachels"

r1.songs << s1
r2.songs << s2
r3.songs << s3

p "First artist has #{r1.songs.count}"
p "Second artist has #{r2.songs.count}"
p "Third artist has #{r3.songs.count}"

p "Artist name for song one: #{s1.artist.name}"
p "Artist name for song two: #{s2.artist.name}"
p "Artist name for song three: #{s3.artist.name}"

p "Artist one album count: #{r1.albums.count}"
