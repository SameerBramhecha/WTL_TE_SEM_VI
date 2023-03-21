import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/EBookStore")

public class EBookStore extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	public void init() throws ServletException {
		
	}
	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/wtl?characterEncoding=utf8";
		String un = "root";
		String pass = "sameer";
		Connection con = DriverManager.getConnection(url,un,pass);
		return con;
		
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { 
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter(); 
			
			Connection con = initializeDatabase();
			PreparedStatement st = null;
			ResultSet rs = null;	
			st = con.prepareStatement("SELECT * FROM ebookstore;");
			rs = st.executeQuery();
			int id;
			String name;
			String author;
			int price;
			int quantity;
			out.println("<html>");
			out.println("<h1> <center> EBOOK STORE </center> </h1>");
			out.println("<style>");
//			out.println("table, th, td {"
//					+ "  border: 1px solid;"
//					+ "}");
			out.println("table{"
					+ "	font-size : 25px;"
					+ "text-align: center;"
					+ "margin-left:auto;"
					+ "margin-right:auto;"
					+ "width:90%;"
					+ "border-spacing: 10px 10px;"
					+ "}"
					+ "td{"
					+ "padding : 10px;"
					+ "}");
			out.println("</style>");
			out.println("<table>");
			out.println("<tr>"
					+ "<th>ID</th>"
					+ "<th>Name</th>"
					+ "<th>Author</th>"
					+ "<th>Price</th>"
					+ "<th>Quantity</th>"
					+ "</tr>");
			while(rs.next())
			{	
				id = rs.getInt(1);
				name = rs.getString(2);
				author = rs.getString(3);
				price = rs.getInt(4);
				quantity = rs.getInt(5);
				out.println("<tr>"
						+ "<td>" + id + "</td>"
						+ "<td>" + name + "</td>"
						+ "<td>" + author + "</td>"
						+ "<td>" + price+ "</td>"
						+ "<td>" + quantity+ "</td>"
						+ "</tr>");
			}
			out.println("</table>");
			out.println("</html>");
			con.close();
		}
		catch(Exception e) {  
			System.out.println("Error : " + e);
		}
		
	}
	public void destroy() {
		
		
	}
}
