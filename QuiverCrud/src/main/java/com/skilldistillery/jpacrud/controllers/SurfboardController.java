package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.data.SurfboardDAO;
import com.skilldistillery.jpacrud.entities.Surfboard;

@Controller
public class SurfboardController {

	
	@Autowired
	private SurfboardDAO boardDAO;
	
	@RequestMapping(path ="/")
	public String Index(Model model) {
		List<Surfboard> boardList = boardDAO.listAllBoards();
		model.addAttribute("boards", boardList);
		
		return "index";
	}
	
	
	@RequestMapping(path = "getBoard.do", method = RequestMethod.GET)
	public String showFilm(Integer id, Model model) {
		
		Surfboard board = boardDAO.findById(id);
		
		model.addAttribute("board", board);
		
		return "show";
	}
	
	
}
