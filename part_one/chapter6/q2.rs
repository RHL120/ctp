//Question 2 and 4: Create a shape
enum Shape {
    Circle(f32),
    Rect(f32, f32),
    Square(f32),
}

fn area(s: Shape) -> f32 {
    match s {
        Shape::Circle(x) => 3.14 * x.powf(2.0),
        Shape::Rect(x, y) => x * y,
        Shape::Square(x) => x.powf(2.0),
    }
}

//Question 3 and 4:

fn circ(s: Shape) -> f32 {
    match s {
        Shape::Circle(x) => 2.0 * 3.14 * x,
        Shape::Rect(x, y) => 2.0 * (x + y),
        Shape::Square(x) => 4.0 * x,
    }
}

fn main() {}
