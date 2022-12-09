package com.learn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learn.bean.Classes;
import com.learn.dbutil.DbUtil;

public class ClassesDao {
	
	public int insert(Classes C) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null)
		{
			System.out.println("connection established");
			
		}
		else
		{
			System.out.println("connection not established");
		}
		
		String sql="insert into Classes values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,C.getClassid());
		ps.setString(2, C.getName());
		
		return ps.executeUpdate();
	}
	public List<Classes> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Classes> list=new ArrayList<Classes>();
		String sql="select * from Classes";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Classes C=new Classes();
			C.setClassid(rs.getInt(1));
			C.setName(rs.getString(2));
			list.add(C);
		}
		return list;
}
	
	public int edit(Classes C) throws SQLException, ClassNotFoundException
	{
		Connection con=DbUtil.dbConn();
		if (con!=null)
		{
			System.out.println("connection establised");
		}
		else
		{
			System.out.println("connection not established");
		}
	
	String sql="Update  Classes set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	System.out.println("enter  id");
	ps.setInt(2, C.getClassid());
	System.out.println("enter class name");
    ps.setString(2, C.getName());
	return ps.executeUpdate();
	
	
	}
	public int delete(Classes C) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from classes  where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,C.getClassid());
		
		int rows=ps.executeUpdate();
		return rows;
	}
	
	

}
