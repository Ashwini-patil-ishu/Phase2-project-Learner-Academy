package com.learn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learn.bean.Subject;
import com.learn.bean.Teacher;
import com.learn.dbutil.DbUtil;

public class SubjectDao {
	public int insert(Subject S) throws ClassNotFoundException, SQLException
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
		
		String sql="insert into Subject values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,S.getSubid());
		ps.setString(2,S.getSubname());
		
		return ps.executeUpdate();
	}
	public List<Subject> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Subject> list=new ArrayList<Subject>();
		String sql="select * from Subject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Subject s=new Subject();
			s.setSubid(rs.getInt(1));
			s.setSubname(rs.getString(2));
			
			
			list.add(s);
		}
		return list;
}
	
	public int edit(Subject s) throws SQLException, ClassNotFoundException
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
	
	String sql="Update  Subject set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	System.out.println("enter subject id");
	ps.setInt(2, s.getSubid());
	System.out.println("enter name");
	ps.setString(1, s.getSubname());
	return ps.executeUpdate();
	
	
	}
	public int delete(Subject s) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from teacher  where Tid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,s.getSubid());
		
		int rows=ps.executeUpdate();
		return rows;
	}
	

}
