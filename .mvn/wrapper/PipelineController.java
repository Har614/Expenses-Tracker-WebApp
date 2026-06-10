package com.SpringBootMVC.ExpensesTracker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PipelineController {

    @GetMapping("/status")
    public String checkStatus() {
        return "Backend Deployment Successful - Version 1.1";
    }
}