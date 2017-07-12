package utile;

import java.util.List;

/**
 * Created by dengry on 2016/12/23.
 */
public class Page {
    private Integer total;//总记录数
    private Integer pages;//总页数
    private Integer pageNo;//当前页
    private List  rows;//当前页的结果集合

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getPages() {
        return pages;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }

    public Page(Integer total, Integer pages, Integer pageNo, List rows) {
        this.total = total;
        this.pages = pages;
        this.pageNo = pageNo;
        this.rows = rows;
    }

    public Page() {
    }
}
