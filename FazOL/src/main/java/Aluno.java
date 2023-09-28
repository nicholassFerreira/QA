public class Aluno {

    private double media, frequencia;

    public Aluno() {
    }

    public Aluno(double media, double frequencia) {
        this.media = media;
        this.frequencia = frequencia;
    }
    
    public String validaAprovacao(double frequencia, double media) {

        this.frequencia = frequencia;
        this.media = media;

        if (this.frequencia >= 70.00 && this.media >= 6) {

            return "Aprovado";

        } else if (this.frequencia < 75 && this.frequencia >= 0) {

            return "Reprovado por Frequencia";

        } else if (this.media < 6 && this.media >= 0) {

            return "Reprovado por Media";

        } else if (this.media < 0 || this.frequencia < 0) {

            throw new IllegalArgumentException("Os valores devem ser maiores que 0");

        }

        return null;
    }

}


