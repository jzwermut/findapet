Listing.destroy_all

l1 = Listing.create :image => 'https://place.dog/300/200', :name => 'Fido', :animal => 'dog', :price => 2000, :availability => true, :description => 'Gorgeous puppy'
l2 = Listing.create :image => 'https://place.dog/400/200', :name => 'Max', :animal => 'dog', :price => 2200, :availability => false, :description => 'Delightful puppy'
l3 = Listing.create :image => 'https://place.dog/700/400', :name => 'Bob', :animal => 'dog', :price => 3500, :availability => true, :description => 'Nice puppy'
l4 = Listing.create :image => 'https://place.dog/300/200', :name => 'Chris', :animal => 'dog', :price => 5000, :availability => false, :description => 'Mean puppy'
l5 = Listing.create :image => 'https://place.dog/200/300', :name => 'Mark', :animal => 'dog', :price => 2300, :availability => true, :description => 'Tall puppy'
l6 = Listing.create :image => 'https://place.dog/300/200', :name => 'Terry', :animal => 'dog', :price => 2000, :availability => true, :description => 'Gorgeous puppy'
l7 = Listing.create :image => 'https://place.dog/400/200', :name => 'Mark', :animal => 'dog', :price => 2200, :availability => false, :description => 'Delightful puppy'
l8 = Listing.create :image => 'https://place.dog/500/700', :name => 'Naby', :animal => 'dog', :price => 3500, :availability => true, :description => 'Nice puppy'
l9 = Listing.create :image => 'https://place.dog/400/400', :name => 'Ted', :animal => 'dog', :price => 5000, :availability => false, :description => 'Mean puppy'
l10 = Listing.create :image => 'https://place.dog/200/200', :name => 'Billy', :animal => 'dog', :price => 2300, :availability => true, :description => 'Tall puppy'
l11 = Listing.create :image => 'https://place.dog/300/300', :name => 'ChiChi', :animal => 'dog', :price => 2000, :availability => true, :description => 'Gorgeous puppy'
l12 = Listing.create :image => 'https://place.dog/300/400', :name => 'Biju', :animal => 'dog', :price => 2200, :availability => false, :description => 'Delightful puppy'
l13 = Listing.create :image => 'https://place.dog/400/800', :name => 'Archie', :animal => 'dog', :price => 3500, :availability => true, :description => 'Nice puppy'
l14 = Listing.create :image => 'https://place.dog/400/300', :name => 'Nancy', :animal => 'dog', :price => 5000, :availability => false, :description => 'Mean puppy'
l15 = Listing.create :image => 'https://place.dog/300/300', :name => 'Whisky', :animal => 'dog', :price => 2300, :availability => true, :description => 'Tall puppy'
l16 = Listing.create :image => 'https://place.dog/200/400', :name => 'ChiChi', :animal => 'dog', :price => 2000, :availability => true, :description => 'Gorgeous puppy'
l17 = Listing.create :image => 'https://place.dog/300/300', :name => 'Biju', :animal => 'dog', :price => 2200, :availability => false, :description => 'Delightful puppy'
l18 = Listing.create :image => 'https://place.dog/500/300', :name => 'Archie', :animal => 'dog', :price => 3500, :availability => true, :description => 'Nice puppy'
l19 = Listing.create :image => 'https://place.dog/600/600', :name => 'Nancy', :animal => 'dog', :price => 5000, :availability => false, :description => 'Mean puppy'
l20 = Listing.create :image => 'https://place.dog/600/400', :name => 'Whisky', :animal => 'dog', :price => 2300, :availability => true, :description => 'Tall puppy'

puts "#{Listing.count} listings created"

Breeder.destroy_all

b1 = Breeder.create :name => 'Labradores R US', :city => 'Sydney', :state => 'NSW', :photo => 'https://i.imgur.com/aBnohja.jpg'
b2 = Breeder.create :name => 'Poodles for noodles', :city => 'Melbourne', :state => 'VIC', :photo => 'https://i.imgur.com/oZQQMnN.jpg'
b3 = Breeder.create :name => 'Oh Shitzu', :city => 'Adelaide', :state => 'SA', :photo => 'https://www.placecage.com/200/200'
b4 = Breeder.create :name => 'Staffy in here', :city => 'Broken Hill', :state => 'NSW', :photo => 'https://www.placecage.com/200/200'
b5 = Breeder.create :name => 'Bowser\'s schnauzers', :city => 'Bathurst', :state => 'NSW', :photo => 'https://www.placecage.com/200/200'

puts "#{Breeder.count} breeders created"

User.destroy_all

u1 = User.create :first_name => 'Bob', :last_name => 'Smith', :email => 'bob@smith.com', :password => 'chicken', :admin => true, :isBreeder => true
u2 = User.create :first_name => 'Sam', :last_name => 'Thomas', :email => 'sam@thomas.com', :password => 'chicken', :isBreeder => true
u3 = User.create :first_name => 'Moe', :last_name => 'Azavedo', :email => 'moe@azavedo.com', :password => 'chicken', :isBreeder => true
u4 = User.create :first_name => 'Joe', :last_name => 'Blogs', :email => 'joe@blogs.com', :password => 'chicken'
u5 = User.create :first_name => 'Harry', :last_name => 'Harrison', :email => 'harry@harrison.com', :password => 'chicken'

puts "#{User.count} users created"

Breed.destroy_all

br1 = Breed.create :name => 'Labrador', :origin => 'Ethiopia'
br2 = Breed.create :name =>'Poodle', :origin => 'France'
br3 = Breed.create :name =>'Shitzu', :origin => 'Japan'
br4 = Breed.create :name =>'Staffy', :origin => 'England'

puts "#{Breed.count} breeds created"

puts "associating users with a breeder"

b1.users << u1 << u2
b2.users << u2 << u1 

puts "associating listings with a breeder"
b1.listings << l1 << l2 << l3 << l16
b2.listings << l4 << l5 << l6 << l17
b3.listings << l7 << l8 << l9 << l18
b4.listings << l10 << l11 << l12 << l19
b5.listings << l13 << l14 << l15 << l20

puts "associating listings with a breed"
br1.listings << l1 << l2 << l3 << l13
br2.listings << l4 <<l5 <<l6 << l14
br3.listings << l7 << l8 << l9 << l15
br4.listings << l10 << l11 << l12

puts "associating breeds with a breeder"
b1.breeds << br1
b2.breeds << br2
b3.breeds << br3
b4.breeds << br4



