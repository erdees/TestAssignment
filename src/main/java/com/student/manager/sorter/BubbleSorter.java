package com.student.manager.sorter;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class BubbleSorter implements GradeSorter
{
    @Override
    public List<String> sort(String input)
    {
        //TODO implement a bubble sort algorithm
        return new ArrayList<>();
    }
}
