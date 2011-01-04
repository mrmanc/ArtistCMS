package uk.co.suecrossfield;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public class PMFSingleton {
	private static final PersistenceManagerFactory pmfInstance = 
		JDOHelper.getPersistenceManagerFactory("transactions-optional");

	private PMFSingleton() {}

	public static PersistenceManagerFactory get() {
		return pmfInstance;
    }
}
