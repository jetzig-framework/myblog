const std = @import("std");
const jetzig = @import("jetzig");

pub fn post(request: *jetzig.Request) !jetzig.View {
    const Params = struct { blog_id: i32, name: []const u8, content: []const u8 };
    const params = try request.expectParams(Params) orelse {
        return request.fail(.unprocessable_entity);
    };
    try request.repo.insert(.Comment, .{
        .blog_id = params.blog_id,
        .name = params.name,
        .content = params.content,
    });
    return request.redirect("/blogs", .moved_permanently);
}

test "post" {
    var app = try jetzig.testing.app(std.testing.allocator, @import("routes"));
    defer app.deinit();

    const response = try app.request(.POST, "/blogs/comments", .{});
    try response.expectStatus(.created);
}
