package com.student.manager.model;

/**
 * Response object. Here we may send results of student grades sorting, or other information.
 */
public class Response
{
    String message;

    public Response(String message)
    {
        this.message = message;
    }

    public String getMessage()
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }
}
