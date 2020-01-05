package com.example.springmvc;

public class PagingAndSorting {
    private int perPage;
    private int page;
    private String sortId;
    private String orderType;

    public PagingAndSorting() {
    }

    public PagingAndSorting(String sortId, int perPage) {
        this.sortId = sortId;
        this.perPage = perPage;
        this.page = 1;
	}

	public int getPerPage() {
        return perPage;
    }

    public String getSortId() {
        return sortId;
    }

    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPerPage(int perPage) {
        this.perPage = perPage;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public int getStartRow() {
        return (page - 1) * perPage + 1;
    }

    public int getEndRow() {
        return page * perPage;
    }
}