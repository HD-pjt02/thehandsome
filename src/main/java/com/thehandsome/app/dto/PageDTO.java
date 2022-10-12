package com.thehandsome.app.dto;

import lombok.Getter;
import lombok.ToString;

/* 작성자 : 정승하
 * 작성일 : 2022.10.18.화
 * 페이징 처리에 필요한 정보를 저장하는 객체
 */
public class PageDTO {
	private int totalRows; 
	private int totalPageNo; 
	private int totalGroupNo; 
	private int startPageNo; 
	private int endPageNo; 
	private int pageNo; 
	private int pagesPerGroup; 
	private int groupNo; 
	private int rowsPerPage; 
	private int startRowNo; 
	private int startRowIndex; 
	private int endRowNo; 
	private int endRowIndex; 

	public PageDTO(int rowsPerPage, int pagesPerGroup, int totalRows, int pageNo) {
		this.rowsPerPage = rowsPerPage;
		this.pagesPerGroup = pagesPerGroup;
		this.totalRows = totalRows;
		this.pageNo = pageNo;

		totalPageNo = totalRows / rowsPerPage;
		if (totalRows % rowsPerPage != 0)
			totalPageNo++;

		totalGroupNo = totalPageNo / pagesPerGroup;
		if (totalPageNo % pagesPerGroup != 0)
			totalGroupNo++;

		groupNo = (pageNo - 1) / pagesPerGroup + 1;

		startPageNo = (groupNo - 1) * pagesPerGroup + 1;

		endPageNo = startPageNo + pagesPerGroup - 1;
		if (groupNo == totalGroupNo)
			endPageNo = totalPageNo;

		startRowNo = (pageNo - 1) * rowsPerPage + 1;
		startRowIndex = startRowNo - 1;
		endRowNo = pageNo * rowsPerPage;
		endRowIndex = endRowNo - 1;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPageNo() {
		return totalPageNo;
	}

	public void setTotalPageNo(int totalPageNo) {
		this.totalPageNo = totalPageNo;
	}

	public int getTotalGroupNo() {
		return totalGroupNo;
	}

	public void setTotalGroupNo(int totalGroupNo) {
		this.totalGroupNo = totalGroupNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPagesPerGroup() {
		return pagesPerGroup;
	}

	public void setPagesPerGroup(int pagesPerGroup) {
		this.pagesPerGroup = pagesPerGroup;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}

	public void setRowsPerPage(int rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
	}

	public int getStartRowNo() {
		return startRowNo;
	}

	public void setStartRowNo(int startRowNo) {
		this.startRowNo = startRowNo;
	}

	public int getStartRowIndex() {
		return startRowIndex;
	}

	public void setStartRowIndex(int startRowIndex) {
		this.startRowIndex = startRowIndex;
	}

	public int getEndRowNo() {
		return endRowNo;
	}

	public void setEndRowNo(int endRowNo) {
		this.endRowNo = endRowNo;
	}

	public int getEndRowIndex() {
		return endRowIndex;
	}

	public void setEndRowIndex(int endRowIndex) {
		this.endRowIndex = endRowIndex;
	}
}