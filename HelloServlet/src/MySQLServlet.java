

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MySQLServlet")
public class MySQLServlet extends HttpServlet {

    public MySQLServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out=response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>データベーステスト</title>");
		out.println("</head>");
		out.println("<body>");

		Connection conn = null;
		String url ="jdbc:mysql://localhost/testdb";
		String user ="root";
		String password ="mysql";

		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn =DriverManager.getConnection(url,user,password);

			Statement stmt= conn.createStatement();
			String sql ="SELECT * FROM test_table";
			ResultSet rs = stmt.executeQuery(sql);

		}



		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}