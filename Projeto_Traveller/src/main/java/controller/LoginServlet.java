package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			String pagina = "";
			
			Usuario user = this.buscarUsuario(email, senha);
			if(user != null) {
				request.getSession().setAttribute("Usuario", user);
				pagina = "/dados_usuario.jsp";
			}
			else {
				pagina = "/erro.jsp";
				request.setAttribute("ErroMSG", "Que pena! Não localizamos o seu cadastro.");
			}
			
			RequestDispatcher dispatecher = getServletContext().getRequestDispatcher(pagina); 
			dispatecher.forward(request, response);
			
			
		}
		catch (Exception e) {
			System.out.println("Erro ao chamar login servlet: " + e.getMessage());
		}
		
	}
	
	private Usuario buscarUsuario(String email, String senha) {
		if(email.equals("gulliver@traveller.com") && senha.equals("123")) {
			Usuario result = new Usuario();
			result.setNome("Gulliver");
			result.setEmail("gulliver@traveller.com");

				
			return result;
		}
		else {
			return null;
		}
			
	}

}
