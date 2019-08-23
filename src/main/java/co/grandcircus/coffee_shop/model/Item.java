package co.grandcircus.coffee_shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shop_items")
public class Item {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	private double price;
	private String description;
	private Integer qty;
	
	public Item() {
		super();
	}

	public Item(Integer id, String name, double price, String description, Integer qty) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.qty = qty;
	}

	public Item(String name, double price, String description, Integer qty) {
		super();
		this.name = name;
		this.price = price;
		this.description = description;
		this.qty = qty;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQty() {
		return qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}
}
