import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;


public class AlunoTeste {

    Aluno aluno = new Aluno();

    @Test
    void deveReprovarPorMedia() {


    assertEquals("Reprovado por Media", aluno.validaAprovacaoNoObj(80.0,5.0));

    }

    @Test
    void deveReprovarPorFrequencia(){

    assertEquals("Reprovado por Frequencia", aluno.validaAprovacaoNoObj(68.5,8.0));

    }

    @Test
    void deveAprovar() {

        assertEquals("Aprovado", aluno.validaAprovacaoNoObj(71,6.10));

    }

    @Test
    void deveDarErroPorFrequenciaInvalida() {

        assertThrows(IllegalArgumentException.class, () -> aluno.validaAprovacaoNoObj(-5,-8.5));

    }


}
