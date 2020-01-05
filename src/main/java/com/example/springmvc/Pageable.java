package com.example.springmvc;

import java.util.List;

public class Pageable<E> {
    private int page;
    private int perPage;
    private int total;
    private int startRow;
    private int endRow;
    private String sortId;
    private String orderType;

    private List<E> resultList;
    private int prevPage;
    private int nextPage;
    private int lastPage;

    public Pageable(List<E> resultList, int total, PagingAndSorting ps) {
        this.page = ps.getPage();
        this.perPage = ps.getPerPage();
        this.total = total;
        this.lastPage = (this.total / this.perPage) + 1;
        this.prevPage = Math.max(ps.getPage() - 1, 1);
        this.nextPage = Math.min(ps.getPage() + 1, this.lastPage);
        this.startRow = ((ps.getPage() - 1) * ps.getPerPage()) + 1;
        this.endRow = ps.getPage() * ps.getPerPage();
        this.sortId = ps.getSortId();
        this.orderType = ps.getOrderType();
        this.resultList = resultList;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }


    public int getNextPage() {
        return nextPage;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public int getPrevPage() {
        return prevPage;
    }

    public void setPrevPage(int prevPage) {
        this.prevPage = prevPage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPerPage() {
        return perPage;
    }

    public void setPerPage(int perPage) {
        this.perPage = perPage;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getStartRow() {
        return startRow;
    }

    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }

    public int getEndRow() {
        return endRow;
    }

    public void setEndRow(int endRow) {
        this.endRow = endRow;
    }

    public String getSortId() {
        return sortId;
    }

    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public List<E> getResultList() {
        return resultList;
    }

    public void setResultList(List<E> resultList) {
        this.resultList = resultList;
    }
}