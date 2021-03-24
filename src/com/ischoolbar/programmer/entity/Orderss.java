package com.ischoolbar.programmer.entity;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;



@Component
public class Orderss {
	private Long id;
	private Long orderid;//客户id
	private float state;//订单金额
	private Date creatime;//下单时间

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getOrderid() {
		return orderid;
	}

	public void setOrderid(Long orderid) {
		this.orderid = orderid;
	}

	public float getState() {
		return state;
	}

	public void setState(float state) {
		this.state = state;
	}

	public Date getCreatime() {
		return creatime;
	}

	public void setCreatime(Date creatime) {
		this.creatime = creatime;
	}
}
