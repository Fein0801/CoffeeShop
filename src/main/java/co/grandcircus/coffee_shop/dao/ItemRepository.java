package co.grandcircus.coffee_shop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.coffee_shop.model.Item;

public interface ItemRepository extends JpaRepository<Item, Integer> {
	
	List<Item> findByNameContaining(String name);

}
