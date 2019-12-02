package com.dedigunawan.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dedigunawan.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
