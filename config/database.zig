pub const database = .{
    .testing = .{
        .adapter = .postgresql,
        .hostname = "localhost",
        .port = 5432,
        .username = "postgres",
        .password = "password",
        .database = "myapp_testing",
    },

    .development = .{
        .adapter = .postgresql,
        .hostname = "localhost",
        .port = 5432,
        .username = "postgres",
        .password = "password",
        .database = "myapp_development",
    },

    .production = .{
        .adapter = .postgresql,
        .hostname = "localhost",
        .port = 5432,
        .username = "postgres",
        .password = "password",
        .database = "myapp_production",
    },
};
