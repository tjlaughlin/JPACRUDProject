package com.skilldistillery.jpacrud.controllers;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public String showBoard(Integer id, Model model) {
		
		Surfboard board = boardDAO.findById(id);
		
		model.addAttribute("board", board);
		
		return "show";
	}
	@RequestMapping(path = "getBoardUpdate.do", method = RequestMethod.GET)
	public String getBoardToUpdate(Integer id, Model model) {
		
		Surfboard board = boardDAO.findById(id);
		
		model.addAttribute("board", board);
		
		return "update";
	}
	
	@RequestMapping(path = "updateBoard.do", method = RequestMethod.GET)
	public String updateBoard(Model model, int id) {
		
		Surfboard dbBoard = boardDAO.findById(id);
		
		
		
		
		
		model.addAttribute("board", dbBoard);
		
		return "updated";
	}
	
	
	
	
	
	
}
