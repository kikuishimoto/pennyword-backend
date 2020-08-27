# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
   {
    title: "Emotions",
    description: "Flash cards that focus on identifying others emotions."
   },
   {
    title: "Penny's favorite words", 
    description: "Flash cards that will reiterate word associations and focus on Penny's enunciation."
   }

])

Flashcard.create([
  {
    title: "Happy", 
    description: "A happy face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/grinning-face_1f600.png", 
    category: Category.first
  },
  {
    title: "Sad", 
    description: "A sad face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/crying-face_1f622.png", 
    category: Category.first
  },
  {
    title: "Scared", 
    description: "A scared face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/fearful-face_1f628.png", 
    category: Category.first
  },
  {
    title: "Mad", 
    description: "A mad face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/pouting-face_1f621.png", 
    category: Category.first
  },
  {
    title: "Sleepy", 
    description: "A sleepy face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/sleeping-face_1f634.png", 
    category: Category.first
  },
  {
    title: "Silly", 
    description: "A silly face.", 
    image: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/237/grinning-face-with-one-large-and-one-small-eye_1f92a.png", 
    category: Category.first
  }
])

#Wiggle, towel, covers, mom mom, baby shark
