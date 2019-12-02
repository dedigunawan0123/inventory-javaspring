package com.dedigunawan.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dedigunawan.domain.Barang;

public interface BarangRepository extends JpaRepository<Barang, Integer> {

}
