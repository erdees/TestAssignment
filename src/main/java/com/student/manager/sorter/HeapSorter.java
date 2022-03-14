package com.student.manager.sorter;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class HeapSorter implements GradeSorter
{
    @Override
    public List<String> sort(String input)
    {
        //TODO implement a heap sort algorithm
        return new ArrayList<>();
    }
}
