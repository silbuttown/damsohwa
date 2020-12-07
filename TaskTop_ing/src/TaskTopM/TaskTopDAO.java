package TaskTopM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;

public class TaskTopDAO {
	   private Connection conn;
	   private PreparedStatement ps;
	   private ResultSet rs;
	   static {
		  try {                  //DriverManager
			Class.forName("oracle.jdbc.driver.OracleDriver");
		  } catch (Exception e) {
			e.printStackTrace();
		  } 
	   }
	   public Connection getConnect() {
		   String URL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		   String user="hr";
		   String password="hr";
		   try {
			conn=DriverManager.getConnection(URL, user, password);
		  } catch (Exception e) {
			e.printStackTrace();
		 }
		   return conn;
	   }
	
		public void close() {
			try {
				if(rs != null) {
				rs.close();
				}
				if(ps != null) {
					ps.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		public void shutdown() {
	    Runtime runtime = Runtime.getRuntime();
	    try {
			Process proc = runtime.exec("shutdown -s -t 0");
		} catch (IOException e) {
			e.printStackTrace();
		}
	    System.exit(0);
		}
	   // -- 공동 --
		
		public TaskTopDTO TaskTopLogin(TaskTopDTO dto) {
			conn=getConnect();
			String sql = "select * from TTadmin where EMP_ID = ? and EMP_PASS = ? ";
					
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getEMP_ID());
				ps.setString(2, dto.getEMP_PASS());
				rs = ps.executeQuery();
							 
				if(rs.next()) {
				int num = rs.getInt(1);
				String dept = rs.getString(2);
				String name = rs.getString(3);
				String position = rs.getString(4);
				String id = rs.getString(5);
				String pw = rs.getString(6);
				TaskTopDTO dto1 = new TaskTopDTO(num,dept,name,position,id,pw);	
				dto = dto1;
				}else {
					throw new SQLException("error");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return dto;
		}
		
		public TaskTopVO TaskTopMember(TaskTopDTO dto) {
			conn=getConnect();
			TaskTopVO vo = new TaskTopVO();
			String sql = "select * from TTInfo where EMP_NO=? ";
			
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, dto.getEMP_NO());			
				rs = ps.executeQuery();
							 
				if(rs.next()) {
				int num = rs.getInt(1);
				String name = rs.getString(2);
				String dept = rs.getString(3);				
				String position = rs.getString(4);
				int coffee = rs.getInt(5);
				String exist = rs.getString(6);
				int Str = rs.getInt("DAY_STR");
				vo.setEMP_NO(num);
				vo.setEMP_NAME(name);
				vo.setDEPT_NAME(dept);
				vo.setEMP_POSITION(position);
				vo.setDAY_COFFEE(coffee);
				vo.setEMP_EXIST(exist);
				vo.setDAY_STR(Str);
				}else {
					throw new SQLException("error");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}return vo;
		}
	   // -- 관리자 --
		
		
	   public ArrayList<TaskTopDTO> getAllList(){
		   conn=getConnect();
		   String sql = "select * from TTadmin order by DEPT_NAME,EMP_NO";
		   ArrayList<TaskTopDTO> list = new ArrayList<TaskTopDTO>();
		   try {
			   ps = conn.prepareStatement(sql);
			   rs = ps.executeQuery();
			   while(rs.next()) {
				   int EMP_NO = rs.getInt("EMP_NO");
				   String DEPT_NAME = rs.getString("DEPT_NAME");
				   String EMP_NAME = rs.getString("EMP_NAME");
				   String EMP_POSITION = rs.getString("EMP_POSITION");
				   String EMP_ID = rs.getString("EMP_ID");
				   String EMP_PASS = rs.getString("EMP_PASS");
				   
				   TaskTopDTO dto = new TaskTopDTO(EMP_NO, DEPT_NAME, EMP_NAME, EMP_POSITION, EMP_ID, EMP_PASS);
				   list.add(dto);
			   }
		   }catch(Exception e) {
			   e.printStackTrace();
			   }
		    return list;
	   }
	
	   public ArrayList<TaskTopVO> getDList(String DEPT){
		   conn=getConnect();
		   String sql = "select * from TTinfo where DEPT_NAME=?";
		   ArrayList<TaskTopVO> list = new ArrayList<TaskTopVO>();
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setString(1,DEPT);
			   rs = ps.executeQuery();
			   while(rs.next()) {
				//   int EMP_NO = rs.getInt("EMP_NO");
				   String DEPT_NAME = rs.getString("DEPT_NAME");
				   String EMP_NAME = rs.getString("EMP_NAME");
				   String EMP_POSITION = rs.getString("EMP_POSITION");
				 //  String EMP_ID = rs.getString("EMP_ID");
				   String EMP_EXIST = rs.getString("EMP_EXIST");
				   
				   TaskTopVO vo = new TaskTopVO(EMP_NAME, DEPT_NAME, EMP_POSITION, EMP_EXIST);
				   list.add(vo);
			   }
		   }catch(Exception e) {
			   e.printStackTrace();
			   }
		    return list;
	   }	   
	   

	   
	   
	   
	   
	   public int TaskTopAdminInsert(TaskTopDTO dto) {
		   conn= getConnect();
		   String sql = "insert into TTadmin values(tt_seq.nextval,?,?,?,?,?)";
		   int cnt = -1;
		   try {
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, dto.getDEPT_NAME());
			   ps.setString(2, dto.getEMP_NAME());
			   ps.setString(3, dto.getEMP_POSITION());
			   ps.setString(4, dto.getEMP_ID());
			   ps.setString(5, dto.getEMP_PASS());
			   cnt=ps.executeUpdate();
			   if(cnt>0) {
			   System.out.println("Admin 삽입");
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   	
		   return cnt;
	   }
	   
	   public int TaskTopInfoInsert(TaskTopDTO dto) {
		   conn= getConnect();
		   String sql = "select EMP_NO from TTadmin where EMP_NAME = ? and DEPT_NAME = ?";	   
		   int emp_no =-1;
		   int cnt = -1;
		   try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, dto.getEMP_NAME());
			ps.setString(2, dto.getDEPT_NAME());
			rs= ps.executeQuery();
			if(rs.next()) {
				emp_no =rs.getInt(1);
				
			}else {
				throw new SQLException("Select error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		   conn= getConnect();
		   sql = "insert into TTInfo(EMP_NO,EMP_NAME,DEPT_NAME,EMP_POSITION) values(?,?,?,?)";
		   try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, emp_no);
			ps.setString(2, dto.getEMP_NAME());
			ps.setString(3, dto.getDEPT_NAME());
			ps.setString(4, dto.getEMP_POSITION());
			cnt = ps.executeUpdate();
			if(cnt>0) {
				   System.out.println("info 삽입");
				   }
		} catch (SQLException e) {
			e.printStackTrace();
		}			   
		   return cnt;
	   }
	   
	   public int TaskTopDelete(int EMP_NO) {
		   conn = getConnect();
		   String sql = "delete from TTadmin where EMP_NO=?";
		   int cnt = 0;
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setInt(1, EMP_NO);
			   cnt = ps.executeUpdate();			   
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   return cnt;
	   }
	   
	   public TaskTopDTO TaskTopContent(int EMP_NO) {
		   conn = getConnect();
		   String sql = "select * from TTadmin where EMP_NO=?";
		   TaskTopDTO dto = null;
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setInt(1, EMP_NO);
			   rs = ps.executeQuery();
			   if(rs.next()) {
				   EMP_NO = rs.getInt("EMP_NO");
				   String DEPT_NAME = rs.getString("DEPT_NAME");
				   String EMP_NAME = rs.getString("EMP_NAME");
				   String EMP_POSITION = rs.getString("EMP_POSITION");
				   String EMP_ID = rs.getString("EMP_ID");
				   String EMP_PASS = rs.getString("EMP_PASS");
				   
				   dto = new TaskTopDTO(EMP_NO,DEPT_NAME,EMP_NAME,EMP_POSITION,EMP_ID,EMP_PASS);
				      
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   return dto;
	   }
	   //admin에서 메시지를 보내는 함수
	   public int sendMessage(int emp_no,String message) {
		   conn = getConnect();
		   int cnt = -1;
		   String sql = "update TTInfo set Message = ? where EMP_NO = ?";
		   try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, message);
			ps.setInt(2, emp_no);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}close();
		   return cnt;
	   }
	   /*
	   public int TaskTOPUpdate(TaskTopDTO dto) {
		   conn = getConnect();
		   String sql ="update TTadmin set DEPT_NAME=?, EMP_POSITION=?";
		   int cnt=-1;
		   try {
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, dto.getDEPT_NAME());
			   ps.setString(2, dto.getEMP_POSITION());
			   cnt=ps.executeUpdate();  
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   return cnt;
	   }
	   
	   */
	   // -- 사용자 --
	   
	   
	   public TaskTopVO TTContent(int EMP_NO) {
		   conn = getConnect();
		   String sql = "select * from TTinfo where EMP_NO=? ";
		   TaskTopVO vo = null;
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setInt(1, EMP_NO);
			   rs = ps.executeQuery();
			   if(rs.next()) {
				   EMP_NO = rs.getInt("EMP_NO");
				   String EMP_NAME = rs.getString("EMP_NAME");
				   String DEPT_NAME = rs.getString("DEPT_NAME");
				   String EMP_POSITION = rs.getString("EMP_POSITION");
				   String DAY_COFFEE = rs.getString("DAY_COFFEE");
				   
				   vo = new TaskTopVO(EMP_NAME, DEPT_NAME, EMP_POSITION, DAY_COFFEE);   		
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   }close();
		   return vo;
	   }

	   public TaskTopVO TTContent2(int EMP_NO) {
		   conn = getConnect();
		   String sql = "select * from TTinfo where EMP_NO=?";
		   TaskTopVO vo = null;
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setInt(1, EMP_NO);
			   rs = ps.executeQuery();
			   if(rs.next()) {
				   EMP_NO = rs.getInt(EMP_NO);
				   int DAY_COFFE = rs.getInt("DAY_COFFE");
				   String EMP_EXIST = rs.getString("EMP_EXIST");
				   vo = new TaskTopVO(EMP_NO, DAY_COFFE, EMP_EXIST);
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   return vo;
	   }
	   
	   public ArrayList<TaskTopVO> TTContent3(String DEPT_NAME) {
		   conn = getConnect();
		   String sql = "select EMP_NAME,EMP_POSITION,EMP_EXIST from TTInfo where DEPT_NAME =?";
		  
		   ArrayList<TaskTopVO> list = new ArrayList<TaskTopVO>();
		   try {
			   ps = conn.prepareStatement(sql);
			   ps.setString(1, DEPT_NAME);
			   rs = ps.executeQuery();
			   while(rs.next()) {				
				   String EMP_NAME = rs.getString(1);
				   String EMP_POSITION  = rs.getString(2);
				   String EMP_EXIST = rs.getString(3);
				     TaskTopVO vo = new TaskTopVO(EMP_NAME,DEPT_NAME,EMP_POSITION,EMP_EXIST);
				     list.add(vo);
			   } 
		   }catch (Exception e) {
			   e.printStackTrace();
		   }close();
		   return list;
	   } 
	  
	   

	   public void CoffeeUpdate(int EMP_NO) {
		   conn = getConnect();
		   String sql = "update TTinfo set DAY_COFFEE = DAY_COFFEE+1 where EMP_NO = ?";		   
		   int cnt =-1;
		   try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, EMP_NO);
			cnt = ps.executeUpdate();
			
			if(cnt<0) {
				throw new SQLException("error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		   
	   }

	   public int CoffeeCheck(int EMP_NO) {
	         getConnect();
	         int coffee =0;
	         String sql = "select DAY_COFFEE FROM TTInfo where EMP_NO = ?";
	         try {
	         ps=conn.prepareStatement(sql);
	         ps.setInt(1, EMP_NO);
	         rs = ps.executeQuery();
	         if(rs.next()) {
	            coffee = rs.getInt(1);
	         }else {
	            throw new SQLException("select error!!");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }      
	         
	        close();
	        return coffee;
	      }
	      
	      public String ExistUpdate(TaskTopVO vo) {
	    	  getConnect();
	    	  String sql = "update TTinfo set EMP_EXIST = ? where EMP_NO = ? ";
	    	  int cnt = -1;
	    	  String ctx = null;
	    	  
	    	  try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getEMP_EXIST());
				ps.setInt(2, vo.getEMP_NO());
				
				cnt = ps.executeUpdate();
				
				if(cnt <0) {
					throw new SQLException("Exist Update error");
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    	  return ctx;
	      }
	      
	      public TaskTopVO ExistCheck(String EMP_NAME) {
	    	  getConnect();
	    	  String sql = "select * from TTinfo where EMP_NAME=?";
	    	  TaskTopVO vo = new TaskTopVO();
	    	  try {
				ps = conn.prepareStatement(sql);
				
				ps.setString(1, EMP_NAME);
				rs = ps.executeQuery();
				
				if(rs.next()) {
					int num = rs.getInt(1);
					String name = rs.getString(2);
					String dept = rs.getString(3);				
					String position = rs.getString(4);
					int coffee = rs.getInt(5);
					String exist = rs.getString(6);
					int Str = rs.getInt("DAY_STR");
					vo.setEMP_NO(num);
					vo.setEMP_NAME(name);
					vo.setDEPT_NAME(dept);
					vo.setEMP_POSITION(position);
					vo.setDAY_COFFEE(coffee);
					vo.setEMP_EXIST(exist);
					vo.setDAY_STR(Str);
				}else {
					 throw new SQLException("select exist error!!");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}close();
			return vo;
	      }
	      
	      public String resMessage(int EMP_NO) {
	    	  conn=getConnect();	  
	    	  String message =null;
	    	  String sql = "select MESSAGE from TTINFO where EMP_NO = ?";
	    	  try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, EMP_NO);
				rs = ps.executeQuery();
				if(rs.next()) {
					message = rs.getString("MESSAGE");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}close();
			return message;
	      }
	      public int delMessage(int EMP_NO) {
	    	  conn=getConnect();	 
	    	  int cnt = -1;
	    	  String sql = "UPDATE TTINFO set MESSAGE = NULL where EMP_NO = ?";
	    	  try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, EMP_NO);
				cnt = ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}close();
			return cnt;
	      }
	      
	      public int StrUpdate(int EMP_NO) {
	    	  conn = getConnect();
	    	  int cnt =-1;
			   String sql = "update TTinfo set DAY_STR = DAY_STR+1 where EMP_NO = ?"; 			  
			   try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, EMP_NO);
				cnt = ps.executeUpdate();
				
				if(cnt<0) {
					throw new SQLException("error");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}close();
			return cnt;
	      }

}	   