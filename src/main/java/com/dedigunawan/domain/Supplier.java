package com.dedigunawan.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_supplier")
public class Supplier {
	@Id 
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    private String kode_supplier;
    private String nama_supplier;
    private String alamat_supplier;
    private String telp_supplier;
    
    public Supplier() {
    	
    }

	public Supplier(Integer id, String kode_supplier, String nama_supplier, String alamat_supplier,
			String telp_supplier) {
		super();
		this.id = id;
		this.kode_supplier = kode_supplier;
		this.nama_supplier = nama_supplier;
		this.alamat_supplier = alamat_supplier;
		this.telp_supplier = telp_supplier;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKode_supplier() {
		return kode_supplier;
	}

	public void setKode_supplier(String kode_supplier) {
		this.kode_supplier = kode_supplier;
	}

	public String getNama_supplier() {
		return nama_supplier;
	}

	public void setNama_supplier(String nama_supplier) {
		this.nama_supplier = nama_supplier;
	}

	public String getAlamat_supplier() {
		return alamat_supplier;
	}

	public void setAlamat_supplier(String alamat_supplier) {
		this.alamat_supplier = alamat_supplier;
	}

	public String getTelp_supplier() {
		return telp_supplier;
	}

	public void setTelp_supplier(String telp_supplier) {
		this.telp_supplier = telp_supplier;
	}
    
    
}
