<div>
  <h1>{{$.blog.title}}</h1>

  <div class="content">{{zmpl.fmt.raw(zmpl.get("markdown"))}}</div>

  <hr />

  <h3>Leave a comment</h3>

  <form action="/blogs/comments" method="POST">
    <input type="hidden" name="blog_id" value="{{$.blog.id}}" />

    <label>Name</label>
    <input type="text" name="name" placeholder="Your name here..." />

    <br/>

    <label>Comment</label>
    <textarea name="content"></textarea>

    <input type="submit" />
  </form>

  <div>
    @for ($.blog.comments) |comment| {
        @partial blogs/comment(comment.name, comment.content)
    }
  </div>
</div>
