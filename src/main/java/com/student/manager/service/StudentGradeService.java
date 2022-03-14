package com.student.manager.service;

import com.student.manager.sorter.SortTypes;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Service which performs student and grade sorting
 */
@Service
public class StudentGradeService
{
    List<String> sortStudentGrades(String file, SortTypes types)
    {
        //TODO implement sort according to a chosen algorithm
        return new ArrayList<>();
    }
}
