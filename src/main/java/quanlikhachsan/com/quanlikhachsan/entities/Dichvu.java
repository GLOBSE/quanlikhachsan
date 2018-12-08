package quanlikhachsan.com.quanlikhachsan.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dich_vu")
public class Dichvu implements Serializable {

	private String dien_giai;
	private int don_gia;
	private String don_vi_tinh;
	private Date ngay_tao;
	private float thue_suat;

	/**
	 * 
	 */
	private static final long serialVersionUID = 8959053134439057123L;

	private String ma_dich_vu;

	@Id
	@Column(name = "ma_dich_vu", length = 24, nullable = false)
	public String getMa_dich_vu() {
		return ma_dich_vu;
	}

	public void setMa_dich_vu(String ma_dich_vu) {
		this.ma_dich_vu = ma_dich_vu;
	}

	@Column(name = "dien_giai", length = 100)
	public String getDien_giai() {
		return dien_giai;
	}

	public void setDien_giai(String dien_giai) {
		this.dien_giai = dien_giai;
	}

	@Column(name = "don_gia")
	public int getDon_gia() {
		return don_gia;
	}

	public void setDon_gia(int don_gia) {
		this.don_gia = don_gia;
	}

	@Column(name = "don_vi_tinh", length = 24, nullable = false)
	public String getDon_vi_tinh() {
		return don_vi_tinh;
	}

	public void setDon_vi_tinh(String don_vi_tinh) {
		this.don_vi_tinh = don_vi_tinh;
	}

	@Column(name = "ngay_tao")
	public Date getNgay_tao() {
		return ngay_tao;
	}

	public void setNgay_tao(Date ngay_tao) {
		this.ngay_tao = ngay_tao;
	}

	@Column(name = "thue_suat")
	public float getThue_suat() {
		return thue_suat;
	}

	public void setThue_suat(float thue_suat) {
		this.thue_suat = thue_suat;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Dichvu(String dien_giai, int don_gia, String don_vi_tinh, Date ngay_tao, float thue_suat,
			String ma_dich_vu) {

		this.dien_giai = dien_giai;
		this.don_gia = don_gia;
		this.don_vi_tinh = don_vi_tinh;
		this.ngay_tao = ngay_tao;
		this.thue_suat = thue_suat;
		this.ma_dich_vu = ma_dich_vu;
	}

	public Dichvu() {
	
		// TODO Auto-generated constructor stub
	}

}
