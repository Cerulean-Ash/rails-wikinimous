# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def faker_cont
  cont = <<~HTML
      # #{Faker::Computer.platform} #{Faker::Computer.os} #{Faker::Computer.stack}

      #{Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 7)}

      # #{Faker::Computer.platform} #{Faker::Computer.os} #{Faker::Computer.stack}

      #{Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 3)}
  HTML
  return cont
end

50.times do
  Article.create!(
    title: "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}",
    content: faker_cont
  )
end
