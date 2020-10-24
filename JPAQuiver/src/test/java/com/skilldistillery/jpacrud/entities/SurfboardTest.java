package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class SurfboardTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Surfboard board;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("QuiverPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		board = em.find(Surfboard.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		board = null;
	}

	@Test
	@DisplayName("This is to test the get board by brand getter in the entity class")
	void test1() {
		assertNotNull(board);
		assertEquals("7S", board.getBrand());
		assertEquals(499.00, board.getPrice());
		assertEquals("6'2", board.getLength());
		assertEquals("36.4L", board.getVolume());
		assertEquals("round", board.getTailShape());
		assertEquals("short", board.getBoardType());
		assertEquals("Sweet Spot 3.0", board.getName());
		assertEquals("medium - big", board.getWaveHeight());

	}

}
