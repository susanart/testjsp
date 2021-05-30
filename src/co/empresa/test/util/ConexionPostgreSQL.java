package co.empresa.test.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexionPostgreSQL {

	private Connection con = null;
	private static ConexionPostgreSQL db;  // para patron singleton
	private PreparedStatement  preparedStatement;
	
	private static final String url = "jdbc:postgresql://localhost:5432/"; // tipodeconexion:servicio://servidor:puerto
	private static final String dbName = "sistema";
	private static final String host = "localhost";
	private static final String driver = "org.postgresql.Driver";
	private static final String userName = "postgres";
	private static final String password = "surotri";
	
	public ConexionPostgreSQL() {
		try {
			Class.forName(driver).newInstance();
			con = (Connection)DriverManager.getConnection(url+dbName,userName,password);
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e ) {
			e.printStackTrace();
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void cerrarConexion(){
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Patron Silgleton , una sola instancia 
	public static ConexionPostgreSQL getConexion() {
		if(db == null){
			db = new ConexionPostgreSQL();
		}
		return db;
	}
	
	//Metodo para retornar el resultado de una consulta
	public ResultSet query() throws SQLException {
		ResultSet res = preparedStatement.executeQuery();
		return res;
	}
	
	// metodo para actualizaciones 
	public int execute() throws SQLException {
		int result = preparedStatement.executeUpdate();
		return result; 
	}
	
	// permitir el objeto conexion
	public Connection getCon(){
		return this.con;
	}
	
	//inicializar el preparedStatement 
	public PreparedStatement setPreparedStatement (String sql) throws SQLException{
		this.preparedStatement = con.prepareStatement(sql);
		return this.preparedStatement;
	}
}
