package model;

public class urun {
	
	private String urunadi;
	private String urunresim;
	private String urunfiyat;
	private Long urunid;
	private int kategorid;

	public String getUrunAdi() {
		return urunadi;
	}
	public void setUrunAdi(String urunadi) {
		this.urunadi = urunadi;
	}
	public String getUrunResim() {
		return urunresim;
	}
	public void setUrunResim(String urunresim) {
		this.urunresim = urunresim;
	}
	public String getUrunFiyat() {
		return urunfiyat;
	}
	public void setUrunFiyat(String urunfiyat) {
		this.urunfiyat = urunfiyat;
	}

	public int getKategoid() {
		return kategorid;
	}
	public void setKategorid(int kategorid) {
		this.kategorid = kategorid;
	}
	
	public Long geturunid() {
		return urunid;
	}
	public void seturunid(int urunid) {
		this.urunid = (long) urunid;
	}
	
	public urun(String urunAdi, String urunResim, String urunFiyat, long urunid, int kategorid) {
		super();
		this.urunadi = urunAdi;
		this.urunresim = urunResim;
		this.urunfiyat = urunFiyat;
		this.kategorid = kategorid;
		this.urunid = urunid;
	}
	
	 

}
