package model;

public class Kategori {
	private int Kategoriid;
	private String Kategori;
	private int parentId;
	public int getKategoriid() {
		return Kategoriid;
	}
	public void setKategoriid(int kategoriid) {
		Kategoriid = kategoriid;
	}
	public String getKategori() {
		return Kategori;
	}
	public void setKategori(String kategori) {
		Kategori = kategori;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}	

}

