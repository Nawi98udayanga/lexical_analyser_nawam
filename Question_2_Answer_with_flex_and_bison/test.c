/* Sample test file for lexer and parser */

int main() {
    float x = 10.5;
    int y = 42;
    if (x > y) {
        read(x);
    } else {
        return y;
    }
    while (x < 100) {
        x = x + 1;
    }
    return 0;
}

// This is an inline comment

/* This is a block comment
   that spans multiple lines */

func myFunction() {
    let z = 3.14;
    var result = x * y;
    return result;
}
