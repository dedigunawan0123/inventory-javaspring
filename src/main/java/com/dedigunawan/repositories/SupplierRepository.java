package com.dedigunawan.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dedigunawan.domain.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier, Integer> {

}
