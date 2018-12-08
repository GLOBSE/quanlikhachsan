package quanlikhachsan.com.quanlikhachsan.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quanlikhachsan.com.quanlikhachsan.entities.Dichvu;;

@Repository(value = "dichvuDAO")
@Transactional(rollbackFor = Exception.class)
public class DichvuDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Dichvu> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM Dichvu", Dichvu.class).getResultList();
	}

	public void save(final Dichvu dichvu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(dichvu);

	}

}
