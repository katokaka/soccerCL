package com.internousdev.soccerCL.utill;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class MongoDBConnector {

	/**
	 * Mongoクライアント
	 */
	private MongoClient mc;
	
	public MongoDatabase getConnection(){
		MongoDatabase db =null;
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
