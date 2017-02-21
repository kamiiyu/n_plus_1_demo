# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: 'Post1').comments = Comment.create([{content: 'comment a'}, {content: 'comment b'}, {content: 'comment c'}])
Post.create(title: 'Post2').comments = Comment.create([{content: 'comment d'}, {content: 'comment e'}])
Post.create(title: 'Post3').comments = Comment.create([{content: 'comment f'}])
Post.create(title: 'Post4')
