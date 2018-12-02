1.Create 5 users
User.create(first_name:"Sheep", last_name:"Sheep", email_address:"sheep@gmail.com")

 2.Create 5 blogs
 Blog.create(name:"blahblahblah", description:"Shsadasfksdjfksd")

 3.Have the first 3 blogs be owned by the first user
 Owner.create(blog:Blog.third, user:User.first)

 4. Have the 4th blog you create be owned by the second user
 Owner.create(blog:Blog.fourth, user:User.second)

5. Have the 5th blog you create be owned by the last user
Owner.create(blog:Blog.fifth, user:User.last)

 6.Have the third user own all of the blogs that were created.
 Owner.update_all(user_id:User.third)

 7. "Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails."

 Post.create(title:"Addingqweqweqweqweqweqweqw", content:"asdijasfojsdfsldkfjsldfskj", blog:Blog.find(2), user:User.second).errors.full_messages

 8.Have the second user create 5 posts for the last Blog.
 Post.create(title: "fifth post", content:"fifth content", user: User.second, blog: Blog.last)

 9.Have the 3rd user create several posts for different blogs.
Post.create(title:"asdkjkdsfsd", content:"asjdfksjflskdfjskldfjs", blog:Blog.third, user:User.third)

 10.Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created

 Message.create(author:"WEHWEHWEHWIRFD", message:"ADSFDFDFEFEGBBCC", post:Post.first, user:User.third)

 11.Have the 4th user create 3 messages for the last post you created.
Message.create(author:"sdfsdfjwekfmlfbvcbcvb", message:"dsfijsdokfjvxclkvnckvnxcv", user:User.fourth, post:Post.last)

 12.Change the owner of the 2nd post to the last user.

 Post.find_by(id:2).update(user:User.last)

 13.Change the 2nd post's content to be something else.
 Post.find_by(id:2).update(content:"This has been updated")

 14.Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).

 User.find(3).blogs
 Blog.joins(:users).select("*").where("user_id=3")

 15.Retrieve all posts that were created by the 3rd user
User.find(3).posts

 16.Retrieve all messages left by the 3rd user
 User.find(3).messages

 17.Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user).select("users.first_name", "users.last_name", "title", "content").where("blog_id=5")

 18. Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages

 User.joins(:blogs_owned,:messages).where("blog_id = 5").select("first_name, last_name, email_address, messages.message")

 19.Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
 User.joins(:blogs_owned).where("blog_id = 1").select("*")

 20.Change it so that the first blog is no longer owned by the first user.

Error!
 User.joins(:owners).select("*").where("blog_id=1").update(user_id=4)
