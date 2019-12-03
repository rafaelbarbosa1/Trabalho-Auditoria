package banco;

import java.sql.Connection;

public class TestaConexao {

	public static void main(String[] args) {
		ConexaoMysql conexao = ConexaoMysql.getInstancia();
        Connection con = conexao.conecta();

        if (con != null) {
            System.out.println("Conex�o realizada com sucesso:\n" + con);
            conexao.fechaConexao(con);
        } else {
            System.out.println("N�o foi poss�vel realizar a conex�o com o banco de dados.");
        }

	}

}
