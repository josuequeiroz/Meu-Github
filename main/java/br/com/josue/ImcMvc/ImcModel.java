package br.com.josue.ImcMvc;

public class ImcModel {
	
	public static float calcularImc(float peso, float altura){
		float resultado = peso / (altura * altura);
		return resultado;
	}
}
