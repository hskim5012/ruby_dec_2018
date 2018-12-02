1. create 5 new blogs.

Blog.create(name:"test", description:"im new to coding")

2. create several posts for each blog.

Post.create(title:"Welcome", content:"sixty post", blog:Blog.first)

3. create several messages for the first post.

Message.create(author:"test", message:"blahblahblaasfijasjodifdsh", post:Post.first)


4.know how to retrieve all posts for the first blog.

Blog.first.posts

5.know how to retrieve all posts for the last blog (sorted by title in the DESC order).

Blog.last.posts.order(title: :desc, created_at: :asc)

6.know how to update the first post's title.

Post.first.update(title:"I changed it")

7. know how to delete the third post (have the model automatically delete all messages associated with the third post when you delete the third post).

  has_many :messages, dependent: :destroy
  Post.third.destroy

8. know how to retrieve all blogs.

Blog.all

9. know how to retrieve all blogs whose id is less than 5.

Blog.where("id < 5")
