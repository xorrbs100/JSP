package member;

import java.io.IOException;
import java.sql.*;


public class DataManagerDAO{
	
	//데이터베이스에 접속
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/memberDB";
		String user="root";
		String pass="mysql";
	//DB연결 메소드(openConnection)
		private Connection openconn() throws SQLException{
			
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            con = (Connection)DriverManager.getConnection(url,user,pass);
	        }
	        catch (ClassNotFoundException e) {
	            System.out.println(" 드라이버 로딩 실패 ");
	        }

	        return con;
	    }
	//DB끊기 메소드(closeConnection)
		private void closeconn() throws SQLException {
			try {
				if(con !=null) {
					con.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				con = null;
			}
		}
	//신규회원 정보삽입(insert)
	   public int insertMember(Memberinfo member) throws SQLException {
		   PreparedStatement pstm=null;
		   String query = "insert into Member values(?,?,?,?,?,?);";
		   int res=0;
		   openconn();
		   try {
			   
			   pstm=con.prepareStatement(query);
			   pstm.setString(1,  member.getId());
			   pstm.setString(2,  member.getPass());
			   pstm.setString(3,  member.getName());
			   pstm.setString(4, member.getPhone());
			   pstm.setString(5,  member.getEmail());
			   
		   Timestamp ts = new Timestamp(System.currentTimeMillis());
			   pstm.setTimestamp(6, ts);
			   
			   res = pstm.executeUpdate();
		   }catch(Exception e) {
			   e.printStackTrace();
		   }finally {
			   closeconn();
		   }
		   return res;
	   }
	//기존회원 정보삭제(removeMember)
	
	  public int removeMember(String id) throws SQLException {
	      PreparedStatement pstm = null;
	      String query = "delete from Member where id=?";
	      int res=0;
	      
	      openconn();
	      
	      try {
	         pstm = con.prepareStatement(query);
	         pstm.setString(1,id);
	         res = pstm.executeUpdate();
	      }
	      catch(Exception e) {
	         e.printStackTrace();
	      }
	      finally {
	         closeconn();
	      }
	      return res;
	   }
	        
		
	//기존회원 정보수정(updateMember)
		public int updateMember(Memberinfo mem) throws SQLException{
			int res = 0;
			String sql = "update Member set 아이디=?,비밀번호=?, 이름=?,전화번호=?,이메일=? where 아이디 ="+mem.getId()+";";
			PreparedStatement pstm=null; 
			openconn();
			try {
				pstm= con.prepareStatement(sql);
				pstm.setString(1, mem.getId());
				pstm.setString(2, mem.getPass());
				pstm.setString(3, mem.getName());
				pstm.setString(4, mem.getPhone());
				pstm.setString(5, mem.getEmail());
				res=pstm.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				pstm.close();
				closeconn();
			}
			return res;
		}
	//기존회원 가입여부확인(isMember)
		public boolean isMember(String id,String pass) throws SQLException {
			PreparedStatement pstm = null;
			
			String query = "select * from Member where 아이디=? and 비밀번호=?";
			boolean res=false;
			openconn();
			try {
				pstm = con.prepareStatement(query);
				pstm.setString(1, id);
				pstm.setString(2, pass);
				ResultSet rs = pstm.executeQuery();
				res=rs.next();	//있으면 true;
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				closeconn();
			}
			return res;
		}
	//기존회원 정보확인(getMember)
		public Memberinfo getMember(String id) throws SQLException {
			Memberinfo member=new Memberinfo();
			PreparedStatement pstm=null;
			String sql="select *from Member where 아이디=?";
			openconn();
			try {
				pstm=con.prepareStatement(sql);
				pstm.setString(1, id);
				ResultSet rs = pstm.executeQuery();
				rs.next();
				
				member.setId(rs.getString("아이디"));
				member.setPass(rs.getString("비밀번호"));
				member.setName(rs.getString("이름"));
				member.setPhone(rs.getString("전화번호"));
				member.setEmail(rs.getString("이메일"));
				member.setReg_date(rs.getTimestamp("reg_date"));
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				closeconn();
			}
			return member;
		}
}
