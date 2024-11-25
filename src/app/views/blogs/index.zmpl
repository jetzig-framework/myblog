<div>
  @for ($.blogs) |blog| {
    <div>
        <a href="#" hx-get="/blogs/{{blog.id}}" hx-target="#main" hx-push-url="true">{{blog.title}}</a>
    </div>
  }
</div>
