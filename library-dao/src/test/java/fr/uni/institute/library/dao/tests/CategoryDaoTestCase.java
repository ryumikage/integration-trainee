package fr.uni.institute.library.dao.tests;

import static org.junit.Assert.*;

import java.util.Collection;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fr.uni.institute.library.dao.CategoryDao;


@ContextConfiguration(locations={"classpath:beans-dao.xml"}) 
@RunWith(SpringJUnit4ClassRunner.class) 
public class CategoryDaoTestCase {
	
	private Logger logger = Logger.getLogger(CategoryDaoTestCase.class);
	
	@Resource
	private CategoryDao categoryDao;

	@Test
	public void testResearchAllCategories() {
		try {
			logger.info("tests de recherche des categories");
			int resultatAttendu = 9;
			Collection liste = categoryDao.researchAllCategories();
			assertNotNull(liste);
			assertEquals(resultatAttendu, liste.size());
		}catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}