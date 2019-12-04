/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*; //Conjunto de bibliotecas
/**
 *
 * @author D1350
 */
public class ModuloConexao {
    //Método responsavel por estabelecer conexão com o banco de dados
    public static Connection conector(){
        java.sql.Connection conexao = null;
        // Chamando o driver myql que foi importado na biblioteca
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando informaçoes referente ao banco
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user="root";
        String password="";
        //Estabelecendo a conexão com o banco 
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch(Exception e){
            // Linha abaixo serve de apoio para esclarecer o erro            
            //System.out.println(e);
            return null;
        }
        
    }
    
}
