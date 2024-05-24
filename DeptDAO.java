package orm;

import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Service

public class DeptDAO {

	@PersistenceContext

	private EntityManager em;

	public void persist(dept05 dpt) {

		em.persist(dpt);

	}

	public List<dept05> findAll() {

		return em.createQuery("SELECT d FROM dept05 d").getResultList();

	}

}
