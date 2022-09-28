Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Seeds Destroyed"


puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gaz = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
chocolate = Freebie.create(item_name:"Chocolate", value: 4)
milk = Freebie.create(item_name:"Milk", value: 3)
bagel = Freebie.create(item_name:"Bagel", value: 6)
danish = Freebie.create(item_name:"Danish", value: 2)

 google.freebies << chocolate
 facebook.freebies << milk
 dunder_mifflin.freebies << bagel
 enron.freebies << danish

rick.freebies << chocolate
morty.freebies << milk
meseeks.freebies << bagel
gaz.freebies << danish


puts "Seeding done!"
