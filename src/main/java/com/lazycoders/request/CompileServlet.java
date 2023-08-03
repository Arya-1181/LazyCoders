package com.lazycoders.request;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class CompileServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String code = request.getParameter("code");


    ProcessBuilder processBuilder = new ProcessBuilder("g++", "-x", "c++", "-o", "compiled/Main", "-");
    Process process = processBuilder.start();


    OutputStream outputStream = process.getOutputStream();
    outputStream.write(code.getBytes());
    outputStream.flush();
    outputStream.close();


    int exitCode;
    try {
      exitCode = process.waitFor();
    } catch (InterruptedException e) {
      exitCode = -1;
    }


    StringBuilder compilationOutput = new StringBuilder();
    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
    String line;
    while ((line = reader.readLine()) != null) {
      compilationOutput.append(line).append(System.lineSeparator());
    }


    if (exitCode == 0) {
      response.getWriter().print("Compilation successful.");
    } else {
      response.getWriter().print("Compilation failed:" + System.lineSeparator() + compilationOutput.toString());
    }
  }
}
