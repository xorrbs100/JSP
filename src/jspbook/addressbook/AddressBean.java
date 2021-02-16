package jspbook.addressbook;


import java.sql.*;
import java.util.ArrayList;


public class AddressBean {
		
	Connection con = null;
	String url = "jdbc:mysql://localhost:3306/addressbook";
	String user="root";
	String pass="mysql";
	PreparedStatement pstmt=null;
	 //연결 : connect()
	 private Connection connect() {
	      try {
	         Class.forName("com.mysql.jdbc.Driver");
	         con = (Connection)DriverManager.getConnection(url,user,pass);
	      }
	      catch(Exception e) {
	         e.printStackTrace();
	      }
	      return con;
	   }

	 //연결해제 : disconnect()
	private void disconnect() {
		try {
			if(pstmt !=null) {
				try {
					pstmt.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			if(con !=null) {
				con.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con=null;
		}
	}
	 //입력 : boolean insertDB(AddressBook addressbook)
	public boolean insertDB(AddressBook addressbook) {
		
		String query="insert into book (name,email,comdept,birth,tel,memo)"
				+ "values(?,?,?,?,?,?)";
		
		connect();
		try {
			pstmt = con.prepareStatement(query);
		
			pstmt.setString(1, addressbook.getName());
			pstmt.setString(2, addressbook.getEmail());
			pstmt.setString(3, addressbook.getComdept());
			pstmt.setString(4, addressbook.getBirth());
			pstmt.setString(5, addressbook.getTel());
			pstmt.setString(6, addressbook.getMemo());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}return true;
	}
	 	//수정 : boolean updateDB(AddressBook addressbook)
	
	public boolean updateDB(AddressBook addressbook) {
		
		String query = "update book set name=?,email=?,comdept=?,birth=?,tel=?,memo=? where id=?";
		
		connect();
		try {
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, addressbook.getName());
			pstmt.setString(2, addressbook.getEmail());
			pstmt.setString(3, addressbook.getComdept());
			pstmt.setString(4, addressbook.getBirth());
			pstmt.setString(5, addressbook.getTel());
			pstmt.setString(6, addressbook.getMemo());
			pstmt.setInt(7, addressbook.getId());
			pstmt.executeUpdate();
			
	      }
	      catch (Exception e) {
	         e.printStackTrace();
	         return false;
	      }
	      finally {
	         disconnect();
	      }
	      return true;
	   }
	 	//삭제 : boolean deleteDB(int id)
	public boolean deleteDB(int id) {
		
		
		String query = "delete from book where id=?";
		connect();
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}return true;
		
	}
	 	//특정주소록읽어오기 : AddressBook getDB(int id)
	public AddressBook getDB(int id) {
		AddressBook adb = new AddressBook();
		String query = "select * from book where id=?";
		connect();
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			/*adb.setId(rs.getInt("id"));*/
			adb.setName(rs.getString("name"));
			adb.setEmail(rs.getString("email"));
			adb.setComdept(rs.getString("comdept"));
			adb.setBirth(rs.getString("birth"));
			adb.setTel(rs.getString("tel"));
			adb.setMemo(rs.getString("memo"));
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}return adb;
	}
	//전체주소록읽어오기 : ArrayList getDBList()
 	public ArrayList<AddressBook> getDBList()  {
 		String query ="select * from book order by id desc";
 		ArrayList<AddressBook> datas = new ArrayList<>();
 		connect();
 		try {
 			pstmt=con.prepareStatement(query);
 			ResultSet rs = pstmt.executeQuery();
 			while(rs.next()) {
 				AddressBook adb = new AddressBook();
 				adb.setId(rs.getInt("id"));
 				adb.setName(rs.getString("name"));
 				adb.setEmail(rs.getString("email"));
 				adb.setComdept(rs.getString("comdept"));
 				adb.setBirth(rs.getString("birth"));
 				adb.setTel(rs.getString("tel"));
 				adb.setMemo(rs.getString("memo"));
 				datas.add(adb);
 				
 			}
 			rs.close();
 		}catch(Exception e){
 			e.printStackTrace();
 		}finally {
 			disconnect();
 		}return datas;
 	}
}
