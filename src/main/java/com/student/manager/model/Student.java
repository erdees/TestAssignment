package com.student.manager.model;

/**
 * Student object which contains its name and grade
 */
public class Student
{
    private final String name;
    private final int grade;

    public Student(String name, int grade)
    {
        this.name = name;
        this.grade = grade;
    }

    public String getName()
    {
        return name;
    }

    public int getGrade()
    {
        return grade;
    }
}
