package com.student.manager.controller;

import com.student.manager.model.Response;
import com.student.manager.sorter.SortTypes;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * Main controller responsible for request from/to an app
 */
@Controller
public class StudentGradesController
{
    /**
     * Get main page
     */
    @RequestMapping("/")
    public String index() {

        return "index";
    }

    /**
     * Receive a file with students and their grades and chosen algorithm
     * @param file student, grade file
     * @param type type of an algorithm
     * @return Response with sorted students String
     */
    @PostMapping("/upload")
    public ResponseEntity<Response> handleFileUpload(@RequestParam("file") MultipartFile file,
                                                     @RequestParam("type") SortTypes type)
    {
        String fileName = file.getOriginalFilename();
        try
        {
            file.transferTo( new File("/tmp/" + fileName));
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }

        //TODO process a file in a sort service (StudentGradeService) with chosen sort algorithm.
        // GradeSorter interface should be implemented.

        return ResponseEntity.status(HttpStatus.OK).body(new Response("File uploaded successfully."));
    }
}
