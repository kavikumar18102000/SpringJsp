package com.mvc.springmvc.Controller;

import org.slf4j.MDC;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class HomeController {

    @GetMapping("/")
    public ModelAndView home(){
        return new ModelAndView("home");
    }

    @PostMapping("/upload")
    public ModelAndView handleFileUpload(@RequestParam("name") String name) {
        System.out.println(name);
        ModelMap model = new ModelMap();
        model.addAttribute("name",name);
        return new ModelAndView("home",model);
    }
}
