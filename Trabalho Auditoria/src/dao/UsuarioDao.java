package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import banco.ConexaoMysql;
import modelo.Usuario;

public class UsuarioDao {
	
	private Connection con;
	private ConexaoMysql conexao;
	
	public UsuarioDao() {
		this.conexao = ConexaoMysql.getInstancia();
		this.con = conexao.conecta();
		}
	
	public void insert(Usuario user) {
		String sql = "insert into cadastro "
		 + "(nome, email, telefone, endereco, bairro, cidade, uf, senha, confSenha) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, user.getNome());
		stmt.setString(2, user.getEmail());
		stmt.setString(3, user.getTelefone());
		stmt.setString(4, user.getEndereco());
		stmt.setString(5, user.getBairro());
		stmt.setString(6, user.getCidade());
		stmt.setString(7, user.getUf());
		stmt.setString(8, user.getSenha());
		stmt.setString(9, user.getConfSenha());


		stmt.execute();
		stmt.close();
		}catch (SQLException e) {
		throw new RuntimeException(e);
		}
	}
		
	public List<Usuario> select(){
		try {
		List<Usuario> users = new ArrayList<Usuario>();
		String sql = "select * from cadastro";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()) {
			Usuario u = new Usuario();
			u.setCodigo(rs.getInt("id"));
			u.setNome(rs.getString("nome"));
			u.setEmail(rs.getString("email"));
			u.setTelefone(rs.getString("telefone"));
			u.setEndereco(rs.getString("endereco"));
			u.setBairro(rs.getString("bairro"));
			u.setCidade(rs.getString("cidade"));
			u.setUf(rs.getString("uf"));
			users.add(u);
			}
			rs.close();
			stmt.close();
			return users;
			}catch (SQLException e) {
			throw new RuntimeException(e);
			}
	
	}
	public void excluir (int id) {
		String sql = "delete from cadastro where id = " + id;
		
		try {
			PreparedStatement stmt = this.con.prepareStatement(sql);
			stmt.execute();
			stmt.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Usuario> selectById(int id){
		try {
		List<Usuario> users = new ArrayList<Usuario>();
		String sql = "select * from cadastro where id =  ?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, id);
		
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
		Usuario u = new Usuario();
		u.setCodigo(rs.getInt("id"));
		u.setNome(rs.getString("nome"));
		u.setEmail(rs.getString("email"));
		u.setTelefone(rs.getString("telefone"));
		u.setEndereco(rs.getString("endereco"));
		u.setBairro(rs.getString("bairro"));
		u.setCidade(rs.getString("cidade"));
		u.setUf(rs.getString("uf"));
		users.add(u);
		}
		rs.close();
		stmt.close();
		return users;
		}catch (SQLException e) {
		throw new RuntimeException(e);
		}
	}
	public void update(Usuario user) {
		String sql = "update cadastro set "
		+ "nome = ?, email = ?, telefone = ?, endereco = ?, bairro = ?, cidade = ?, uf = ? "
		+ "where id = ?";
		try {
		PreparedStatement stmt = this.con.prepareStatement(sql);
		
		stmt.setString(1, user.getNome());
		stmt.setString(2, user.getEmail());
		stmt.setString(3, user.getTelefone());
		stmt.setString(4, user.getEndereco());
		stmt.setString(5, user.getBairro());
		stmt.setString(6, user.getCidade());
		stmt.setString(7, user.getUf());
		stmt.setInt(8, user.getCodigo());
		stmt.execute();
		stmt.close();
		}catch (SQLException e) {
		throw new RuntimeException(e);
		}
		}
	
	public List<Usuario> selectByName(String nome){
		try {
		List<Usuario> users = new ArrayList<Usuario>();
		String sql = "SELECT * FROM cadastro where upper(nome) LIKE '%" + nome.toUpperCase() + "%' order by id";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Usuario u = new Usuario();
			u.setCodigo(rs.getInt("id"));
			u.setNome(rs.getString("nome"));
			u.setEmail(rs.getString("email"));
			u.setTelefone(rs.getString("telefone"));
			u.setEndereco(rs.getString("endereco"));
			u.setBairro(rs.getString("bairro"));
			u.setCidade(rs.getString("cidade"));
			u.setUf(rs.getString("uf"));
			users.add(u);
			}
		rs.close();
		stmt.close();
		return users;
		}catch (SQLException e) {
		throw new RuntimeException(e);
		}
	}
}

