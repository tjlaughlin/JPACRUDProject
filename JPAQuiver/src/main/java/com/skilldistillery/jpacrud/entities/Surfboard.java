package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Surfboard {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String brand;
	private double price;
	private String length;
	private String volume;
	
	@Column(name = "tail_shape")
	private String tailShape;
	
	@Column(name = "board_type")
	private String boardType;

	private String name;
	
	@Column(name = "wave_height")
	private String waveHeight;
	
	
//	just a thought for you.. try checking you constructor and make sure it isn’t looking for an id. 
//	If it was that would definitely require you to put that info in. Just a thought. Nice work man it looked great
	
	
	
	
	public Surfboard() {
	}

	public Surfboard(String brand, double price, String length, String volume, String tailShape, String boardType,
		String name, String waveHeight) {
	this.brand = brand;
	this.price = price;
	this.length = length;
	this.volume = volume;
	this.tailShape = tailShape;
	this.boardType = boardType;
	this.name = name;
	this.waveHeight = waveHeight;
}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public String getTailShape() {
		return tailShape;
	}

	public void setTailShape(String tailShape) {
		this.tailShape = tailShape;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getWaveHeight() {
		return waveHeight;
	}

	public void setWaveHeight(String waveHeight) {
		this.waveHeight = waveHeight;
	}

	@Override
	public String toString() {
		return "Surfboard [id=" + id + ", brand=" + brand + ", name=" + name + ", price=" + price + ", length=" + length
				+ ", volume=" + volume + ", tailShape=" + tailShape + ", boardType=" + boardType + ", waveHeight="
				+ waveHeight + "]";
	}
}
