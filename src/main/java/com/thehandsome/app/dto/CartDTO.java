/* 
 * 작성자 : 김민석
 * 작성일 : 2022.10.17.월
 * CartDTO(장바구니 dto객체)
 */
package com.thehandsome.app.dto;

import java.sql.Timestamp;


public class CartDTO {
	
	//cart
	//카트번호
	private int cartid;
	//상품수량
	private int pcount;
	//멤버번호
	private int mno;
	//상품번호
	private String pcode;
	// 할인된 상품가격
    private int salePrice;
    // 총 상품가격
    private int totalPrice;
	/* 8. 상품 가격 */
	private int pprice;
	/* 11. 상품 할인률 */
	private int pdiscount;

	
	
	//color
	private String pcolor;
	//상품 img
	private String frontimg1;
	
	public void initSaleTotal() {
		this.salePrice = (int) (this.pprice * (1-this.pdiscount));
		this.totalPrice = this.salePrice*this.pcount;
	}

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public int getPdiscount() {
		return pdiscount;
	}

	public void setPdiscount(int pdiscount) {
		this.pdiscount = pdiscount;
	}

	public String getPcolor() {
		return pcolor;
	}

	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}

	public String getFrontimg1() {
		return frontimg1;
	}

	public void setFrontimg1(String frontimg1) {
		this.frontimg1 = frontimg1;
	}
	
	
}
