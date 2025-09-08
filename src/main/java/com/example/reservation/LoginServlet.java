package com.example.reservation;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	private final UserDAO userDAO = new UserDAO();
	

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
ServletException, IOException {
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	User user = userDAO.findByUsername(username);
}}