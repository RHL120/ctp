//Question 4:
enum Either<L, R> {
    Left(L),
    Right(R),
}

//Question 5:
fn i(n: i32) -> i32 {
    n
}
fn j(b: bool) -> i32 {
    if b {
        0
    } else {
        1
    }
}

fn m(e: Either<i32, bool>) -> i32 {
    match e {
        Either::Left(x) => x,
        Either::Right(x) => {
            if x {
                0
            } else {
                1
            }
        }
    }
}

//Question 6: I did not understand the point of this question we already proved that
//it is a bad candidate in question 5

//Question 7:
fn i2(n: i32) -> i32 {
    if n < 0 {
        n
    } else {
        n + 2
    }
}
fn j2(b: bool) -> i32 {
    if b {
        0
    } else {
        1
    }
}

fn m2(e: Either<i32, bool>) -> i32 {
    match e {
        Either::Left(x) => {
            if x < 0 {
                x
            } else {
                x - 2
            }
        }
        Either::Right(_) => m2(e),
    }
}

fn main() {}
