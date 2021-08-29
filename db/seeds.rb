# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
    name = Faker::Name.name
    sexe = Faker::Gender.binary_type
    company = Faker::Company.name
    poste = Faker::Job.title
    bio = Faker::Lorem.paragraph
    Employee.create(
        name: name,
        sexe: sexe,
        company: company,
        poste: poste,
        bio: bio
    )
end
