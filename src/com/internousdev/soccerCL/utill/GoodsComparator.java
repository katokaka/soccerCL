package com.internousdev.soccerCL.utill;
import java.util.Comparator;
/**
 * GoodsComparator
 * 商品をID順に並び替えるための補助クラス
 * @author T.matsuda
 * @since 2015/5/14
 * @version 1.0
 */
public class GoodsComparator implements Comparator<ReservationDTO>{
	/**
	 * 商品のIDを比較してソートするメソッド
	 * @author T.matsuda
	 * @since 2015/5/14
	 */
	public int compare(ReservationDTO a, ReservationDTO b) {
		int no1 = a.getGoodsId();
		int no2 = b.getGoodsId();
		if (no1 > no2) {
			return 1;
		} else if (no1 == no2) {
			return 0;
		} else {
			return -1;
		}
	}
}


