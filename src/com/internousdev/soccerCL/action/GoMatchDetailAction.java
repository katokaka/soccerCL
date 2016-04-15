package com.internousdev.soccerCL.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


/**
 * 購入へ遷移するアクションクラス
 * @author S.KATO
 * @version 1.0
 * @since 1.0
 */

public class GoMatchDetailAction extends ActionSupport implements SessionAware {

	/**
	 * シリアル番号の生成
	 */
	private static final long serialVersionUID = 1L;

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
	 * ホテル名1
	 */
	private String hotel1;

	/**
	 * ホテル名2
	 */
	private String hotel2;

	/**
	 * ホテル名3
	 */
	private String hotel3;

	/**
	 * 画像1
	 */
	private String img1;

	/**
	 * 画像2
	 */
	private String img2;

	/**
	 * 画像3
	 */
	private String img3;

	/**
	 * 画像4
	 */
	private String img4;

	/**
	 * 画像5
	 */
	private String img5;

	/**
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;

	/**
	 * 商品の詳細ページに移動するためのメソッド<br>
	 * 商品のリストを取得します。<br>
	 * </p>
	 * @param  
	 * @return SUCCESS/ERROR クレジットカードトークンが取得できればSUCCESS、できなければERROR
	 */
	public String execute() {
		
//		if(session.containsKey("id_key")){
//			id = (int) session.get("id_key");
//		}else{
//			return ERROR;
//		}
		//試合名を取得できたかを確認するメソッド
		if(matchName!= null){
			System.out.println("名前はきてる？");
			System.out.println(matchName);
			
		}else{
			System.out.println("name");
			return ERROR;
		}
		try {			
			if(matchName=="レアルマドリードVSバルセロナ"){
				System.out.println(matchName);
				hotel1="Hotel The Serras";
				hotel2="カサ キャンパー";
				hotel3="ホテル1989";
				//データベースに画像を入れれば解決
				img1="img/real6.jpg";
				img2="img/barusa03.jpeg";
				img3="img/the_serras_hotel06.png";
				img4="img/ka-sakanpe-ru04.jpg";
				img5="img/Hotel198904.jpg";

			}else if(matchName=="バルセロナVSレアルマドリード"){
				hotel1="Hotel The Serras";
				hotel2="カサ キャンパー";
				hotel3="ホテル1989";
				//データベースに画像を入れれば解決
				img1="img/barusa03.jpeg";
				img2="img/real6.jpg";
				img3="img/the_serras_hotel06.png";
				img4="img/ka-sakanpe-ru04.jpg";
				img5="img/Hotel198904.jpg";

			}else if(matchName=="ドルトムントVSリバプール" || matchName=="ドルトムントVSバイエルン"){
				hotel1="ロッコ フォルテ ザ チャールズ ホテル";
				hotel2="プラッツル ホテル ミュンヘン";
				hotel3="カプリ バイ フレーザー フランクフルト";
				img1="img/dorutomunto04.jpg";
				img2="img/liverpoor01.jpeg";
				img3="img/rokko_forute_cya-ruzu06.jpg";
				img4="img/platzl-hotel.jpg";
				img5="img/capri-by-fraser-frankfurt06.jpg";

			}else{
				return ERROR;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(hotel1);
		return SUCCESS;
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
	 * @return hotel1
	 */
	public String getHotel1() {
		return hotel1;
	}

	/**
	 * @param hotel1 セットする hotel1
	 */
	public void setHotel1(String hotel1) {
		this.hotel1 = hotel1;
	}

	/**
	 * @return hotel2
	 */
	public String getHotel2() {
		return hotel2;
	}

	/**
	 * @param hotel2 セットする hotel2
	 */
	public void setHotel2(String hotel2) {
		this.hotel2 = hotel2;
	}

	/**
	 * @return hotel3
	 */
	public String getHotel3() {
		return hotel3;
	}

	/**
	 * @param hotel3 セットする hotel3
	 */
	public void setHotel3(String hotel3) {
		this.hotel3 = hotel3;
	}

	/**
	 * @return img1
	 */
	public String getImg1() {
		return img1;
	}

	/**
	 * @param img1 セットする img1
	 */
	public void setImg1(String img1) {
		this.img1 = img1;
	}

	/**
	 * @return img2
	 */
	public String getImg2() {
		return img2;
	}

	/**
	 * @param img2 セットする img2
	 */
	public void setImg2(String img2) {
		this.img2 = img2;
	}

	/**
	 * @return img3
	 */
	public String getImg3() {
		return img3;
	}

	/**
	 * @param img3 セットする img3
	 */
	public void setImg3(String img3) {
		this.img3 = img3;
	}

	/**
	 * @return img4
	 */
	public String getImg4() {
		return img4;
	}

	/**
	 * @param img4 セットする img4
	 */
	public void setImg4(String img4) {
		this.img4 = img4;
	}

	/**
	 * @return img5
	 */
	public String getImg5() {
		return img5;
	}

	/**
	 * @param img5 セットする img5
	 */
	public void setImg5(String img5) {
		this.img5 = img5;
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
