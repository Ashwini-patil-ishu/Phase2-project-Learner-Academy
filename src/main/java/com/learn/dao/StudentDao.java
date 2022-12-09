package com.learn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.learn.bean.Student;
import com.learn.bean.Teacher;
import com.learn.dbutil.DbUtil;




public class StudentDao {
	
	
public	int insert(Student s) throws ClassNotFoundException, SQLException {

	Connection con=DbUtil.dbConn();
	if(con!=null)
	{
		System.out.println("connection established");
		
	}
	else
	{
		System.out.println("connection not established");
	}
		String sql="insert into student values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, s.getSid());
		ps.setString(2, s.getFname());
		ps.setString(3, s.getLname());
		ps.setLong(4, s.getPhone());
		ps.setString(5, s.getClassName());
		return ps.executeUpdate();

}


		public List <Student > display() throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();

			if(con!=null)
			{
				System.out.println("connection established");
				
			}
			else
			{
				System.out.println("connection not established");
			}
			List<Student> list=new ArrayList<Student>();
			String sql="select * from Student";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Student s=new Student();
				s.setSid(rs.getInt(1));
			    s.setFname(rs.getString(2));
			    s.setLname(rs.getString(3));
			    s.setPhone(rs.getLong(4));
			    s.setClassName(rs.getString(5));
			    list.add(s);
			
			}
			return list;
			
}
		

		public int edit(Student S) throws SQLException, ClassNotFoundException
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
		
		String sql="Update  Student set fname=? where sid=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		System.out.println("enter student id");
		ps.setInt(2, S.getSid());;
		System.out.println("enter name");
		ps.setString(1, S.getFname());
		return ps.executeUpdate();
		
		
		}
		
		public int delete(Student S) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.dbConn();
			if(con!=null) {
				System.out.println("connection with dB is established ");
			}
			else {
				System.out.println("connection failed ");
			}
			String sql="delete from student  where sid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,S.getSid());
			
			int rows=ps.executeUpdate();
			return rows;
		}

		
}