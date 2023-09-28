package org.example;

import javax.swing.*;

public class VerificadorIdade {

 private int idade;

    public VerificadorIdade() {
    }

    public VerificadorIdade(int idade) {

        this.idade = idade;

    }

    public int getIdade() {
        return idade;
    }

    public String validaMaioridade() {
     if(this.idade < 18) {
         return "menor de idade";
     } else {
         return "maior de idade";
     }

    }
 }
