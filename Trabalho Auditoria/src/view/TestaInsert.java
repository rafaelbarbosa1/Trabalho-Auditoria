package view;

import dao.UsuarioDao;
import modelo.Usuario;

public class TestaInsert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Usuario u = new Usuario();
		UsuarioDao uDao = new UsuarioDao();
		
		u.setNome("Bruno Barreiro");
		u.setEmail("brunobarreiro16@gmail.com");
		u.setTelefone("16992320613");
		u.setEndereco("Rua Arlindo Reis Filho");
		u.setBairro("Jardim Paiva");
		u.setCidade("Ribeirão Preto");
		u.setUf("SP");
		u.setSenha("123456");
		u.setConfSenha("123456");
		
		uDao.insert(u);

	}

}
