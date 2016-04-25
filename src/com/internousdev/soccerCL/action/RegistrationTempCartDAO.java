package com.internousdev.soccerCL.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import com.internousdev.soccerCL.dto.TempCartDTO;
import com.internousdev.soccerCL.utill.DBconnector;


/**
 * <p>
 * temp
 * </p>
 * @author SHOTA KATO
 * @version 1.0
 * @since 1.0
 */

public class RegistrationTempCartDAO {

	/**
	 * データベースに接続するためのインターフェース
	 */
	private Connection con;

	/**
	 * SQL文
	 */
	private String sql;

	/**
	 * 一時カートID
	 */
	private String cartTempId_key;

	/**
	 * セッション
	 */
	private Map<String,Object> session;

	/**
	 * 会員ID
	 */
	private int id;

	/**
	 * エラーメッセージ
	 */
	private String errorMessage;

	/**
	 * チケットID
	 */
	private int ticketId;

	/**
	 * 購入枚数
	 */
	private int lot;

	/**
	 * 試合名
	 */
	private String matchName;

	/**
	 * ホテル名
	 */
	private String hotel;

	/**
	 * 画像
	 */
	private String img;

	/**
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;

	/**
	 * 金額
	 */
	PreparedStatement ps;

	/**
	 * リスト
	 */
	ArrayList<TempCartDTO> list = new ArrayList<TempCartDTO>();

	/**
	 * ticketIdを取得するためのメソッド
	 * @param  matchName hotel、airport
	 * @return SUCCESS/ERROR ticketIdが取得できればSUCCESS、できなければERROR
	 */
	public int selectTicket(String matchName , String hotel,String airport){
		ticketId = 0;
		con = DBconnector.getConnection("soccerDb");
		sql = "select cart_id from cart where match_name=?,hotel=?,airport=?"; 
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, matchName);
			ps.setString(2, hotel);
			ps.setString(3, airport);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ticketId = rs.getInt("ticket_id");
			}
		} catch (Exception e) {
			ticketId = 0;
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				ticketId = 0;
			}

		}
		return ticketId;
	}

	/**
	 * カートに移動するためのメソッド<br>
	 * 商品をtempcartに登録する。
	 * @param  int id, int ticketId , String hotel,String airport,int lot 
	 * @return SUCCESS/ERROR クレジットカードトークンが取得できればSUCCESS、できなければERROR
	 */
	public boolean select(int id, int ticketId , String hotel,String airport,int lot){
		int count = 0;
		try {
			con = DBconnector.getConnection("soccerDb");
			sql = "Insert into cart_temp(id,ticket_id,lot,match_name,hotel,airport)values(?,?,?,?,?,?)"; 
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, ticketId);
			ps.setString(3, hotel);
			ps.setString(4, airport);
			ps.setInt(5, lot);
			count = ps.executeUpdate();
		} catch (Exception e) {
			return false;
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				return false;
			}
		}
		if(count==0){
			return false;
		}
		return true;
	}

	/**
	 * idを元にtempcartから値を取得する。
	 * @param  id
	 * @return SUCCESS/ERROR tempcartから一時テンプcartid、購入枚数、試合名、ホテル名、飛行機、価格、試合画像、ホテルの画像を取得できればを取得できればSUCCESS、できなければERROR
	 */
	public boolean selectItem(int id){
		try{
			con = DBconnector.getConnection("soccerDb");
			sql = "select cart_temp_id,lot,match_name,hotel,airport,price,match_img,hotel_img from cart_temp where id = ?";
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			TempCartDTO dto = new TempCartDTO();
			while(rs.next()){
				dto.setCartTempId(rs.getInt("cart_temp_id"));
				dto.setLot(rs.getInt("lot"));
				dto.setMatchName(rs.getString("matchName"));
				dto.setHotel(rs.getString("hotel"));
				dto.setAirport(rs.getString("airport"));
				dto.setPrice(rs.getInt("price"));
				dto.setMatchImg(rs.getString("matchImg"));
				dto.setHotelImg(rs.getString("hotelImg"));
				list.add(dto);
			}
		}catch(Exception e) {
			return false;
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				return false;
			}
		}
		return true;
	}


	/**
	 * @return con
	 */
	public Connection getCon() {
		return con;
	}

	/**
	 * @param con セットする con
	 */
	public void setCon(Connection con) {
		this.con = con;
	}

	/**
	 * @return sql
	 */
	public String getSql() {
		return sql;
	}

	/**
	 * @param sql セットする sql
	 */
	public void setSql(String sql) {
		this.sql = sql;
	}

	/**
	 * @return cartTempId_key
	 */
	public String getCartTempId_key() {
		return cartTempId_key;
	}

	/**
	 * @param cartTempId_key セットする cartTempId_key
	 */
	public void setCartTempId_key(String cartTempId_key) {
		this.cartTempId_key = cartTempId_key;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return errorMessage
	 */
	public String getErrorMessage() {
		return errorMessage;
	}

	/**
	 * @param errorMessage セットする errorMessage
	 */
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	/**
	 * @return ticketId
	 */
	public int getTicketId() {
		return ticketId;
	}

	/**
	 * @param ticketId セットする ticketId
	 */
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	/**
	 * @return lot
	 */
	public int getLot() {
		return lot;
	}

	/**
	 * @param lot セットする lot
	 */
	public void setLot(int lot) {
		this.lot = lot;
	}

	/**
	 * @return matchName
	 */
	public String getMatchName() {
		return matchName;
	}

	/**
	 * @param matchName セットする matchName
	 */
	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}

	/**
	 * @return hotel
	 */
	public String getHotel() {
		return hotel;
	}

	/**
	 * @param hotel セットする hotel
	 */
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	/**
	 * @return img
	 */
	public String getImg() {
		return img;
	}

	/**
	 * @param img セットする img
	 */
	public void setImg(String img) {
		this.img = img;
	}

	/**
	 * @return airport
	 */
	public String getAirport() {
		return airport;
	}

	/**
	 * @param airport セットする airport
	 */
	public void setAirport(String airport) {
		this.airport = airport;
	}

	/**
	 * @return price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price セットする price
	 */
	public void setPrice(int price) {
		this.price = price;
	}




}
