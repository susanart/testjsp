package co.empresa.test.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.catalina.User;

import co.empresa.test.modelo.Usuario;

public interface UsuarioDao {
	public void insert(Usuario usuario) throws SQLException;
	public Usuario select(int id);
	public List < Usuario > selectAll();
	public void delete(int i) throws SQLException;
	public void update(Usuario usuario) throws SQLException;
	
}
