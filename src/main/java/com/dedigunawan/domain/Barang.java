package com.dedigunawan.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_barang")
public class Barang {

    @Id 
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    private Integer id_supplier;
    private String kode_barang;
    private String nama_barang;
    private Double harga_barang;
    private Integer stok_barang;
       
    
	public Barang() {
	}


	public Barang(Integer id, Integer id_supplier, String kode_barang, String nama_barang, Double harga_barang,
			Integer stok_barang) {
		super();
		this.id = id;
		this.id_supplier = id_supplier;
		this.kode_barang = kode_barang;
		this.nama_barang = nama_barang;
		this.harga_barang = harga_barang;
		this.stok_barang = stok_barang;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getId_supplier() {
		return id_supplier;
	}


	public void setId_supplier(Integer id_supplier) {
		this.id_supplier = id_supplier;
	}


	public String getKode_barang() {
		return kode_barang;
	}


	public void setKode_barang(String kode_barang) {
		this.kode_barang = kode_barang;
	}


	public String getNama_barang() {
		return nama_barang;
	}


	public void setNama_barang(String nama_barang) {
		this.nama_barang = nama_barang;
	}


	public Double getHarga_barang() {
		return harga_barang;
	}


	public void setHarga_barang(Double harga_barang) {
		this.harga_barang = harga_barang;
	}


	public Integer getStok_barang() {
		return stok_barang;
	}


	public void setStok_barang(Integer stok_barang) {
		this.stok_barang = stok_barang;
	}
	
	
}
