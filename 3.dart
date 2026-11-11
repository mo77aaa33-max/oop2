
public abstract class Shape {
  protected String color;

  public Shape(String color) {
    this.color = color;
  }

  public abstract double getArea();

  @Override
  public String toString() {
    return "Color: " + color;
  }
}

public class Rectangle extends Shape {
  private int length;
  private int width;

  public Rectangle(int length, int width, String color) {
    super(color);
    this.length = length;
    this.width = width;
  }

  @Override
  public double getArea() {
    return length * width;
  }

  @Override
  public String toString() {
    return "Rectangle: length = " + length
        + ", width = " + width
        + ", " + super.toString();
  }
}

public class Triangle extends Shape {
  private int base;
  private int height;

  public Triangle(int base, int height, String color) {
    super(color);
    this.base = base;
    this.height = height;
  }

  @Override
  public double getArea() {
    return 0.5 * base * height;
  }

  @Override
  public String toString() {
    return "Triangle: base = " + base
        + ", height = " + height
        + ", " + super.toString();
  }
}

public class Main {
  public static void main(String[] args) {
  Student student = new Student("Ahmed", "Cairo");
  student.addCourseGrade("Java", 90);
  student.addCourseGrade("Math", 80);
  System.out.println(student);
  student.printGrades();
  System.out.println("Average = " + student.getAverageGrade());

  System.out.println();

  Teacher teacher = new Teacher("Mohamed", "Giza");
  teacher.addCourse("Java");
  teacher.addCourse("Math");
  System.out.println(teacher);
  System.out.println(teacher.removeCourse("Math"));

  System.out.println();

  Shape rectangle = new Rectangle(5, 4, "Red");
  Shape triangle = new Triangle(6, 3, "Blue");

  System.out.println(rectangle);
  System.out.println("Rectangle Area = " + rectangle.getArea());

  System.out.println(triangle);
  System.out.println("Triangle Area = " + triangle.getArea());
  }
}
