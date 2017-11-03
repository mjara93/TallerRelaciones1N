# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Post.destroy_all

5.times do |x|
  p = Post.create(title: "publicacion nº#{x+1}", content: "una contenido para publicacion#{x+1}")
  3.times do |i|
    p.comments.build(content: "comentario numero #{i+1}")
    p.save
  end
end
