package com.bank.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bank.demo.dao.UsersRepo;
import com.bank.demo.model.Users;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	UsersRepo repo;
	
	@RequestMapping("login")
	public String login() {
		return "login.jsp";
	}
	@RequestMapping("home")
	public String home(Users login, HttpSession session) {
		Users user = repo.findById(login.getUname()).orElse(new Users());
		if(user.getUname()==null) {
			return "login.jsp";
		}
		else {
		if(user.getUname().equals(login.getUname())) {
		if(user.getUpass().equals(login.getUpass())) {
			session.setAttribute("uname",user.getUname());
			session.setAttribute("balance",user.getBalance());
			return "home.jsp";

		}
		else {
			return "login.jsp";
		}
	}
	else {
		return "login.jsp";
	}
	}
		}
	@PostMapping("register")
	public String register(Users user) {
		Users check = repo.findById(user.getUname()).orElse(new Users());

		if(check.getUname()==null) {
			repo.save(user);
			return "login.jsp";
		}
		else {
		if(check.getUname().equals(user.getUname())) {
			return "login.jsp";
		}
		else {
		repo.save(user);
		return "login.jsp";
		}
	}
	}
	@RequestMapping("/transfer")
		public static String transfer() {
			
			return "transfer.jsp";
		}
	@RequestMapping("send")
	public String send(Users send) {
		Users sexist = repo.findById(send.getPaycode()).orElse(new Users());
		Users rexist = repo.findById(send.getUname()).orElse(new Users());
		
		if(rexist.getUname()!=null&&sexist.getUname()!=rexist.getUname()) {
			if(send.getBalance()>0&&sexist.getBalance()>send.getBalance()) {
				double rmoney=(double) (rexist.getBalance()+send.getBalance());
				double smoney=(double) (sexist.getBalance()-send.getBalance());
				rexist.setBalance(rmoney);
				sexist.setBalance(smoney);
				repo.save(rexist);
				repo.save(sexist);
				System.out.println("receieved "+rmoney+ "\n" +"send "+smoney);
				return "complete.jsp";
		}
			else {
				return "error.jsp";
			}
		}
		else {
			return "error.jsp";
		}
	}
}
