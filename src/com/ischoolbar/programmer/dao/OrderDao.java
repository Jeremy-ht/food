package com.ischoolbar.programmer.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ischoolbar.programmer.entity.Orderss;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.Order;
import com.ischoolbar.programmer.entity.OrderItem;
/**
 * ∂©µ•–≈œ¢dao
 * @author llq
 *
 */
@Repository
public interface OrderDao {
	public int add(Order Order);
	public int addItem(OrderItem orderItem);
	public int edit(Order Order);
	public List<Order> findList(Map<String, Object> queryMap);
	public Integer getTotal(Map<String, Object> queryMap);
	public int delete(Long id);

	@Select("select * from orders order by id desc limit 1")
	Order selectMax();

	@Insert("INSERT INTO orderss(orderid,state,creatime) values (#{id},#{status},#{createTime})")
	int addOrderss(@Param("id") Long id,
				   @Param("status")int status,
				   @Param("createTime")Date createTime);

	@Insert("INSERT INTO orderss(orderid,state,creatime) values (#{id},#{status},#{createTime})")
	void updCreatime(@Param("id") Long id,
					 @Param("status")int status,
					 @Param("createTime")Date createTime);

	@Select("select * from orderss where orderid = #{id} order by creatime desc")
	List<Orderss> getList(@Param("id") int id);
}
