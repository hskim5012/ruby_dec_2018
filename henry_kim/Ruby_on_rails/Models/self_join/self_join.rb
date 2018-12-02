User.create(first_name: "Andrew", last_name:"Barstow")
Friendship.create(user:User.first, friend_id:2)

User.first.friends should display all the friend information of the first user (this should include the first name and last name of all the friends of User.first).
Friendship.find(3).friend

3Find out how you can retrieve all users who are NOT a friend with the first User.
User.where.not(id: User.first.friends)
