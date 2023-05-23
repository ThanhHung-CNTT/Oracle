package com.oracle.test;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
    @Id
    @Column(name = "product_id")
    private Long product_id;
    @Column(name = "product_name")
    private String product_name;
    @Column(name = "description")
    private String description;
    @Column(name = "standard_cost")
    private int standard_cost;
    @Column(name = "list_price")
    private int list_price;
    @Column(name = "category_id")
    private long category_id;

    public Long getProduct_id() {
        return this.product_id;
    }

    public void setProduct_id(Long product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return this.product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStandard_cost() {
        return this.standard_cost;
    }

    public void setStandard_cost(int standard_cost) {
        this.standard_cost = standard_cost;
    }

    public int getList_price() {
        return this.list_price;
    }

    public void setList_price(int list_price) {
        this.list_price = list_price;
    }

    public long getCategory_id() {
        return this.category_id;
    }

    public void setCategory_id(long category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "{" +
                " product_id='" + getProduct_id() + "'" +
                ", product_name='" + getProduct_name() + "'" +
                ", description='" + getDescription() + "'" +
                ", standard_cost='" + getStandard_cost() + "'" +
                ", list_price='" + getList_price() + "'" +
                ", category_id='" + getCategory_id() + "'" +
                "}";
    }

}
