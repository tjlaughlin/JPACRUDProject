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
	
	@RequestMapping(path = "getBoardBrand.do", method = RequestMethod.GET, params = "brand")
	public String showBrand(String brand, Model model) {
		
		Surfboard board = boardDAO.findSurfboardByBrand(brand);
		
		model.addAttribute("board", board);
		
		return "show";
	}
	
	@RequestMapping(path = "getBoardName.do", method = RequestMethod.GET, params = "name")
	public String showName(String name, Model model) {
		
		Surfboard board = boardDAO.findSurfboardByName(name);
		
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
	public String updateBoard(Model model, int id, Surfboard board) {
		
		Surfboard dbBoard = boardDAO.findById(id);
		
		dbBoard = boardDAO.update(id, board);
		
		model.addAttribute("board", dbBoard);
		
		return "updated";
	}
	
	
	
	@RequestMapping(path = "addBoard.do", method = RequestMethod.GET)
	public String directToAdd() {
		return "add";
	}
	
	
	@RequestMapping(path = "addedBoard.do", method = RequestMethod.GET)
	public String addBoard(Model model, Surfboard board) {
		
		
		Surfboard dbBoard = boardDAO.add(board);
		
		model.addAttribute("board", board);
		
		return "updated";
	}
	
	
	@RequestMapping(path = "deleteBoard.do", method = RequestMethod.GET)
	public String deleteBoard(Model model, int id) {
		
		Surfboard board = boardDAO.findById(id);
		
		boardDAO.delete(id);
		
		model.addAttribute("board", board);
		
		return "updated";
	}
	
	
	
	
	
	
	
}
