//Question2: Create a shape
enum Shape {
    Circle(f32),
    Rect(f32, f32),
}

fn area(s: Shape) -> f32 {
    match s {
        Shape::Circle(x) => 3.14 * x * *2,
        Shape::Rect(x, y) => x * y,
    }
}
