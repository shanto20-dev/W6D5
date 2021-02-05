# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cat.destroy_all

cat1 = Cat.create(id: 2, birth_date: '2020/04/20', color: 'Red', name: 'Lakhte', sex: 'M', description: 'Loves ice cream')
cat2 = Cat.create(id: 3, birth_date: '2019/06/12', color: 'Black', name: 'Kenny', sex: 'F', description: 'Loves to dance')
cat3 = Cat.create(id: 4, birth_date: '2021/01/14', color: 'White', name: 'John', sex: 'M', description: 'Loves to sleep')


rental1 = CatRentalRequest.create(cat_id: 2, start_date: '2020/01/01', end_date: '2020/03/01', status: 'APPROVED')
rental2 = CatRentalRequest.create(cat_id: 3, start_date: '2020/03/02', end_date: '2020/05/01', status: 'APPROVED')
rental3 = CatRentalRequest.create(cat_id: 2, start_date: '2020/02/01', end_date: '2020/04/01', status: 'APPROVED')
rental4 = CatRentalRequest.create(cat_id: 4, start_date: '2020/04/02', end_date: '2020/06/01', status: 'PENDING')