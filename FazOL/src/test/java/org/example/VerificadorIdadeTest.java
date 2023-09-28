package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class VerificadorIdadeTest {

    VerificadorIdade v1 = new VerificadorIdade(10);

    @Test
    void deveDizerQueEDeMenor() {
       assertEquals("menor de idade",v1.validaMaioridade());

    }

}