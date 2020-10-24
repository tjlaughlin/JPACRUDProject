package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Surfboard;


public interface SurfboardDAO {

	Surfboard findById(int id);
	Surfboard findSurfboardByBrand(String brand);
	Surfboard fingSurfboardByType(String type);
	List<Surfboard> findBoardsByWaveHeight(String height);
	List<Surfboard> listAllBoards();
	
}
