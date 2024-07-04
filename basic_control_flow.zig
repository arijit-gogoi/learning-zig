const std = @import("std");
const expect = std.testing.expect;

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try expect(x == 1);
}

test "if expression" {
    var x: u16 = 0;
    x += if (true) 1 else 2;
    try expect(x == 1);
}

test "while" {
    var i: u8 = 2;
    while (i < 100) {
        i *= 2;
    }
    try expect(i == 128);
}

test "while continue expression" {
    // the part after the predicate is a continue expression
    // the continue keyword respects the continue expression
    var sum: u8 = 0;
    var i: u8 = 1;
    while (i <= 5) : (i += 1) {
        sum += i;
        // i == 1, sum == 1
        // i == 2, sum == 3
        // i == 3, sum == 6
        // i == 4, sum == 9
        // i == 5, sum == 15
        // i == 6 and loop ends
    }
    try expect(i == 6);
    try expect(sum == 15);
}
