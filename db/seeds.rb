# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

cat1 = Cat.create(birth_date: '2020/04/20', color: 'Red', name: 'Lakhte', sex: 'M', description: 'Loves ice cream')
cat2 = Cat.create(birth_date: '2019/06/12', color: 'Black', name: 'Kenny', sex: 'F', description: 'Loves to dance')
cat3 = Cat.create(birth_date: '2021/01/14', color: 'White', name: 'John', sex: 'M', description: 'Loves to sleep')
