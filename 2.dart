
public class Person {
  protected String name;
  protected String address;

  public Person(String name, String address) {
    this.name = name;
    this.address = address;
  }

  @Override
  public String toString() {
    return "Name: " + name + ", Address: " + address;
  }
}

import java.util.ArrayList;
import java.util.List;

public class Student extends Person {
  private int numCourses = 0;
  private List<String> courses = new ArrayList<>();
  private List<Integer> grades = new ArrayList<>();

  public Student(String name, String address) {
    super(name, address);
  }

  @Override
  public String toString() {
    return "Student: " + super.toString();
  }

  public void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  public void printGrades() {
    for (int i = 0; i < numCourses; i++) {
      System.out.println(courses.get(i) + ": " + grades.get(i));
    }
  }

  public double getAverageGrade() {
    if (numCourses == 0) {
      return 0.0;
    }

    int sum = 0;

    for (int grade : grades) {
      sum += grade;
    }

    return (double) sum / numCourses;
  }
}

import java.util.ArrayList;
import java.util.List;

public class Teacher extends Person {
  private int numCourses = 0;
  private List<String> courses = new ArrayList<>();

  public Teacher(String name, String address) {
    super(name, address);
  }

  @Override
  public String toString() {
    return "Teacher: " + super.toString();
  }

  public boolean addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }

    courses.add(course);
    numCourses++;
    return true;
  }

  public boolean removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }

    courses.remove(course);
    numCourses--;
    return true;
  }
}
