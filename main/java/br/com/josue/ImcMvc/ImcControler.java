package br.com.josue.ImcMvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/imcgleibson")
public class ImcControler extends HttpServlet {
	private String valor(HttpServletRequest req, String param, String padrao){
		String result = req.getParameter (param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}
	
	private float toFloat(HttpServletRequest req, String param, String padrao){
		return Float.parseFloat(valor(req, param, padrao));
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		float peso = toFloat(req, "peso", "0");
		float altura = toFloat(req, "altura", "0");
		float resultadoCalculo = ImcModel.calcularImc(peso, altura);
		req.setAttribute("resultado", resultadoCalculo);
		req.getRequestDispatcher("ImcView.jsp").forward(req, resp);
	}
}
