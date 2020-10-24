package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Surfboard;

@Transactional
@Service
public class SurfboardDAOImpl implements SurfboardDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Surfboard findSurfboardByBrand(String brand) {
		return em.find(Surfboard.class, brand);
	}

	@Override
	public Surfboard fingSurfboardByType(String type) {
		return em.find(Surfboard.class, type);
	}
	
	@Override
	public List<Surfboard> findBoardsByWaveHeight(String height) {
		String jpql = "SELECT board FROM Surfboard board WHERE waveHeight = :h";
		return em.createQuery(height, Surfboard.class).setParameter("h", height).getResultList();
	}
	

	
	@Override
	public List<Surfboard> listAllBoards() {
		String jpql = "SELECT boards FROM Surfboard boards";
		return em.createQuery(jpql, Surfboard.class).getResultList();
	}

	@Override
	public Surfboard findById(int id) {
		return em.find(Surfboard.class, id);
	}
	
	





}
