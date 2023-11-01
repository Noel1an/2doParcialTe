package com.emergentes.modelo;
public class categoria {
   private int idC;
   private String categoriaC;
   
   public categoria() {
        this.idC = 0;
        this.categoriaC = "";
        
    }

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public String getCategoriaC() {
        return categoriaC;
    }

    public void setCategoriaC(String categoriaC) {
        this.categoriaC = categoriaC;
    }
   
}
