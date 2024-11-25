const std = @import("std");
const jetquery = @import("jetquery");
const t = jetquery.schema.table;

pub fn up(repo: anytype) !void {
    try repo.createTable(
        "comments",
        &.{
            t.primaryKey("id", .{}),
            t.column("name", .string, .{}),
            t.column("content", .text, .{}),
            t.column("blog_id", .integer, .{
                .index = true,
                .reference = .{ "blogs", "id" },
            }),
            t.timestamps(.{}),
        },
        .{},
    );
}

pub fn down(repo: anytype) !void {
    try repo.dropTable("comments", .{});
}
