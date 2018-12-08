package quanlikhachsan.com.quanlikhachsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import quanlikhachsan.com.quanlikhachsan.dao.DichvuDAO;
import quanlikhachsan.com.quanlikhachsan.entities.Dichvu;

@Service
@Transactional
public class DichvuService {
	@Autowired
	private DichvuDAO dichvuDAO;
	
	public List<Dichvu> findAll() {
		return dichvuDAO.findAll();
	}

	public void save(final Dichvu dichvu) {
		dichvuDAO.save(dichvu);
	}

}
