const std = @import("std");
const expect = std.testing.expect;
const one = 1;

test "always_succeeds" {
    try expect(true);
}


test "always_fails" {
    try expect(false);
}
