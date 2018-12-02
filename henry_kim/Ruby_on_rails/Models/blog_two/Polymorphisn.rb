Create
Comment.create(imageable_id: 1, imageable_type:User, content:"SDSFDGDGJNCDS")


Update
User.joins(:comments).where("users.id=1")[0].update(first_name:"Sheep2")
Message.joins(:comments).where("user_id=1")[0].update(message:"I changed this.. really I did")

Destroy
Comment.find(7).destroy
