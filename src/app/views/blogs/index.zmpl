<div>
  @for ($.blogs) |blog| {
    <div>
        <a href="/blogs/{{blog.id}}">{{blog.title}}</a>
    </div>
  }
</div>
