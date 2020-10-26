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
	public Surfboard findSurfboardByName(String name) {
		return em.find(Surfboard.class, name);
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
	
	@Override
	public Surfboard update(int id, Surfboard board) {
//		EntityManager em = emf.createEntityManager();
//		Find the actor to be updated
		Surfboard dbboard = em.find(Surfboard.class, id);

//		start your transaction
//		em.getTransaction().begin();

//		assign all the data from the sent in Actor object to the one in the database 

		dbboard.setBrand(board.getBrand());
		dbboard.setPrice(board.getPrice());
		dbboard.setLength(board.getLength());
		dbboard.setVolume(board.getVolume());
		dbboard.setTailShape(board.getTailShape());
		dbboard.setBoardType(board.getBoardType());
		dbboard.setName(board.getName());
		dbboard.setWaveHeight(board.getName());

		em.persist(dbboard);
//		em.flush();

//		em.getTransaction().commit();

//		em.close();
		return board;
	}
	
	public Surfboard add(Surfboard board) {
//		EntityManager em = emf.createEntityManager();
//		Find the actor to be updated
		Surfboard dbboard = new Surfboard();
		
//		start your transaction
//		em.getTransaction().begin();
		
//		assign all the data from the sent in Actor object to the one in the database 
		
		dbboard.setBrand(board.getBrand());
		dbboard.setPrice(board.getPrice());
		dbboard.setLength(board.getLength());
		dbboard.setVolume(board.getVolume());
		dbboard.setTailShape(board.getTailShape());
		dbboard.setBoardType(board.getBoardType());
		dbboard.setName(board.getName());
		dbboard.setWaveHeight(board.getName());
		
		em.persist(dbboard);
//		em.flush();
		
//		em.getTransaction().commit();
		
//		em.close();
		return dbboard;
	}
	
	
	@Override
	public boolean delete(int id) {
		Surfboard board = em.find(Surfboard.class, id);
		em.remove(board);
		boolean boardWasDeleted = ! em.contains(board);
		return boardWasDeleted;
	}
	
	
	
	
	
	





}
