
public class GeometricObject {
  private String color = "white";
  private boolean filled = false;

  public GeometricObject() {
  }

  public GeometricObject(String color, boolean filled) {
    this.color = color;
    this.filled = filled;
  }

  public String getColor() {
    return color;
  }

  public boolean isFilled() {
    return filled;
  }

  @Override
  public String toString() {
    return "Color = " + color + ", filled = " + filled;
  }
}

public class Triangle extends GeometricObject {
  private double side1 = 1.0;
  private double side2 = 1.0;
  private double side3 = 1.0;

  public Triangle() {
  }

  public Triangle(double side1, double side2, double side3) {
    this.side1 = side1;
    this.side2 = side2;
    this.side3 = side3;
  }

  public double getArea() {
    double s = getPerimeter() / 2;
    return Math.sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  public double getPerimeter() {
    return side1 + side2 + side3;
  }

  @Override
  public String toString() {
    return "Triangle: side1 = " + side1
        + ", side2 = " + side2
        + ", side3 = " + side3;
  }
}

public class Rectangle extends GeometricObject {
  private double height = 1.0;
  private double width = 1.0;

  public Rectangle() {
  }

  public Rectangle(double width, double height, String color, boolean filled) {
    super(color, filled);
    this.width = width;
    this.height = height;
  }

  public double getArea() {
    return width * height;
  }

  public double getPerimeter() {
    return 2 * (width + height);
  }

  @Override
  public String toString() {
    return "Rectangle: height = " + height + ", width = " + width;
  }
}

public class Main {
  public static void main(String[] args) {
  Triangle t = new Triangle(3, 4, 5);

  System.out.println(t);
  System.out.println("Triangle Area = " + t.getArea());
  System.out.println("Triangle Perimeter = " + t.getPerimeter());

  Rectangle r = new Rectangle(5, 3, "Red", true);

  System.out.println(r);
  System.out.println("Rectangle Area = " + r.getArea());
  System.out.println("Rectangle Perimeter = " + r.getPerimeter());

  GeometricObject g = new GeometricObject();
  System.out.println(g);
  }
}
