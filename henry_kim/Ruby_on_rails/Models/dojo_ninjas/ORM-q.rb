Delete the three dojos you created (e.g. Dojo.find(1).destroy; also look up destroy_all method)

Dojo.find(1).destroy
Dojo.destroy_all

Create 3 additional dojos by using Dojo.new.

Dojo.create(name:"CD", city:"Boise", state:"ID")

Try to create a few more dojos but without specifying some of the required fields. Make sure that the validation works and generates the errors.

Dojo.create(name:"CD", city:"Boise")
Dojo.create(name:"CD", city:"Boise", state:"I")
Dojo.create(city:"Boise", state:"ID")

Create 3 ninjas that belong to the first dojo you created.

Ninja.create(first_name:"Sheep", last_name:"Sheep", dojo:Dojo.first)

Create 3 more ninjas and have them belong to the second dojo you created.

Ninja.create(first_name:"Sheep", last_name:"Sheep", dojo:Dojo.second)

Create 3 more ninjas and have them belong to the third dojo you created.
Ninja.create(first_name:"Sheep", last_name:"Sheep", dojo:Dojo.third)

Make sure you understand how to get all of the ninjas for any dojo (e.g. get all the ninjas for the first dojo, second dojo, etc).

Dojo.first.ninjas

How would you only retrieve the first_name of the ninjas that belong to the second dojo and order the result by created_at DESC order?

Dojo.third.ninjas.select(:first_name).order(created_at: :desc)

Delete the second dojo. How could you adjust your model so that it automatically removes all of the ninjas associated with that dojo?

Create has_many :ninjas, dependent: :destroy
Dojo.second.destroy
