package com.internousdev.soccerCL.utill;



public class MongoDBConnector {

	/**
	 * Mongoクライアント
	 */
	private MongoClient mc;
	
	public MongoDBConnector getConnection(){
		MongoDBConnector db =null;
		mc = new MongoClient("localjpst",27017);
		db =mc.getDatabase("soccerDb");
		return db;
	}
	
	public void closeConnection(){
		mc.close();
	}

	/**
	 * @return mc
	 */
	public MongoClient getMc() {
		return mc;
	}

	/**
	 * @param mc セットする mc
	 */
	public void setMc(MongoClient mc) {
		this.mc = mc;
	}
	
	
	
}
