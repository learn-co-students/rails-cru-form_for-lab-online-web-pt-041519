# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "My Artist", bio: "My artist bio")
Artist.create(name: "My Artist 2", bio: "My artist bio 2")
Artist.create(name: "My Artist 3", bio: "In the above block, a FormBuilder object is yielded as the person_form variable. This allows you to generate the text_field and check_box fields by specifying their eponymous methods, which modify the underlying template and associates the @person model object with the form.

The FormBuilder object can be thought of as serving as a proxy for the methods in the FormHelper module. This class, however, allows you to call methods with the model object you are building the form for.
  
You can create your own custom FormBuilder templates by subclassing this class.")


Genre.create(name: "Rap")
Genre.create(name: "Pop")
Genre.create(name: "Electronic")


@artist = Artist.create(name: "George", bio: "George's Bio")
@genre = Genre.create(name: "Fabulous")
@song = Song.create(name: "Wonderous", artist_id: @artist.id, genre_id: @genre.id)

@artist2 = Artist.create(name: "Linda", bio: "Linda's Bio")
@genre2 = Genre.create(name: "Country")
@song2 = Song.create(name: "Buckets", artist_id: @artist2.id, genre_id: @genre2.id)


