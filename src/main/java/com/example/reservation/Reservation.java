package com.example.reservation;

import java.time.LocalDateTime;

public class Reservation {
	private int id;
	private String name;
	private String tel;
	private String menu;
	private LocalDateTime reservationTime;
	
	public Reservation() {
		
	}

	public Reservation(int id, String name, String tel, String menu, LocalDateTime reservationTime) {
		this.id = id;
		this.name = name;
		this.tel = tel;
		this.menu = menu;
		this.reservationTime = reservationTime;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}
	
	public String getTel() {
		return tel;
	}
	
	public String getMenu() {
		return menu;
	}

	public LocalDateTime getReservationTime() {
		return reservationTime;
	}
}