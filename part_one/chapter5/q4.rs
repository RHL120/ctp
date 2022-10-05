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

fn main() {}
