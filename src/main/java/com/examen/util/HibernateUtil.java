package com.examen.util;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class HibernateUtil {

	 
		private static final String PERSISTENCE_UNIT_NAME = "PERSISTENCE";
		private static EntityManagerFactory factory;

		public static EntityManagerFactory getEntityManagerFactory() {
			if (factory==null) {
				factory=Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
			}
			return factory;				
		}
		
		public static void shutdown() {
			if (factory!=null) {
				factory.close();
			}		
		}
	


}
