package co.grandcircus.coffee_shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.coffee_shop.model.EndUser;

public interface EndUserRepository extends JpaRepository<EndUser, Integer> {
	
	boolean existsByEmail(String email);
	boolean existsByPassword(String password);
	
	EndUser findByPassword(String password);
}
