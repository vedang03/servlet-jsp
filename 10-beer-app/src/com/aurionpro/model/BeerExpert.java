package com.aurionpro.model;

import java.util.ArrayList;
import java.util.List;

public class BeerExpert {
	public List getBrands(String color) {
		List brands = new ArrayList<>();
		if(color.equals("amber")) {
			brands.add("Jack Amber");
			brands.add("Jack Moose");
		}else {
			brands.add("Jail Pale Ale");
			brands.add("Gout Scout");
		}
		return brands;
		
	}

}
