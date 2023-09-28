public class Aluno {

    private double media, frequencia;

    public Aluno() {
    }

    public Aluno(double media, double frequencia) {
        this.media = media;
        this.frequencia = frequencia;
    }

    public double getMedia() {
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }

    public double getFrequencia() {
        return frequencia;
    }

    public void setFrequencia(double frequencia) {
        this.frequencia = frequencia;
    }

    public String validaAprovacaoNoObj(double frequencia, double media) {

        if (frequencia >= 70.00 && media >= 6) {

            return "Aprovado";

        } else if (frequencia < 75 && frequencia >= 0) {

            return "Reprovado por Frequencia";

        } else if (media < 6 && media >= 0) {

            return "Reprovado por Media";

        } else if (media < 0 || frequencia < 0) {

         //   return "Os valores devem ser maiores que 0";

            throw new IllegalArgumentException("Os valores devem ser maiores que 0");

        }

        return null;
    }




    public String validaAprovacao() {

        if (this.frequencia >= 70.00 && this.media >= 6) {

            return "Aprovado";

        } else if (this.frequencia < 75) {

            return "Reprovado por Frequencia";

        } else if (this.media < 6) {

            return "Reprovado por Media";

        } else if (this.media < 0) {

            throw new IllegalArgumentException("A media deve ser maior que 0.");

        } else if (this.frequencia < 0) {

            throw new IllegalArgumentException("A frequencia deve ser maior que 0.");

        }

        return null;
    }
}


