const jetquery = @import("jetzig").jetquery;

pub const Blog = jetquery.Model(
    @This(),
    "blogs",
    struct {
        id: i32,
        title: []const u8,
        content: []const u8,
        created_at: jetquery.DateTime,
        updated_at: jetquery.DateTime,
    },
    .{
        .relations = .{
            .comments = jetquery.hasMany(.Comment, .{}),
        },
    },
);

pub const Comment = jetquery.Model(@This(), "comments", struct {
    id: i32,
    name: []const u8,
    content: []const u8,
    blog_id: i32,
    created_at: jetquery.DateTime,
    updated_at: jetquery.DateTime,
}, .{
    .relations = .{
        .blog = jetquery.belongsTo(.Blog, .{}),
    },
});
