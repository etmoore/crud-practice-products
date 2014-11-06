Product.delete_all

30.times do
  Product.create  name: Faker::Commerce.product_name,
                  description: Faker::Company.bs,
                  price: rand(101)
end
