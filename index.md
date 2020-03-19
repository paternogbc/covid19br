
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

# `covid19br`

O objetivo do `covid19br` é fornecer um repositório permanente com dados
atualizados e todo o histórico do número de casos de vírus corona no
Brasil.

O pacote será atualizado diariamente, incluindo novos dados do
Ministério da Saúde (<https://saude.gov.br/>) disponibilizados todo fim
do dia através da plataforma
[IVIS](http://plataforma.saude.gov.br/novocoronavirus/).

### Síntese dos resultados (2020-03-18)

  - Número de casos suspeitos: **1.127810^{4}**  
  - Número de casos confirmados: **428**  
  - Número de casos descartados: **1841**  
  - Número de mortes por corona vírus: **4**

Veja os links abaixo para uma síntese atualizada dos casos de Corona
Vírus (covid-19) no
Brasil:

| Artigo                                        |                                                                              |
| --------------------------------------------- | :--------------------------------------------------------------------------: |
| Evolução do número de casos confirmados       | [link](https://paternogbc.github.io/covid19br/articles/tendencia_atual.html) |
| Distribuição dos casos confirmados por estado | [link](https://paternogbc.github.io/covid19br/articles/distrib_map_pt.html)  |
| Predição do número de casos                   |    [link](https://paternogbc.github.io/covid19br/articles/predicoes.html)    |

## Instalação do pacote `covid19br`

Você pode instalar a versão de desenvolvimento do pacote `covid19br` no
Github:

``` r
install.packages("devtools") 
devtools::install_github(repo = "paternogbc/covid19br")
```

## Help

No `R`, a documentação para o conjunto de dados`covid19br` pode ser
acessada com o comando padrão `help` (por exemplo,`? covid_br_all` e `?
covid_br_states`).

Para uma descrição online do conjunto de dados, consulte
[referência](https://paternogbc.github.io/covid19br/reference/index.html).

Para acessar o código fonte do pacote consulte o repositório no
[Github](https://github.com/paternogbc/covid19br).

## Dados brutos

Os dados brutos são baixados através do pacote
[`coronabr`](https://github.com/paternogbc/coronabr)\[1\] que
disponibiliza uma excelente função para baixar os dados não processados
diretamente da plataforma
[IVIS](http://plataforma.saude.gov.br/novocoronavirus/) do Minitério da
Saúde.

## Contribua

Para contribuir com esse pacote abra um issue
[aqui](https://github.com/paternogbc/covid19br/issues/new) e deixe uma
mensagem.

-----

> **NOTAS:**  
> \* os dados disponibilizados representam apenas o número de casos
> **confirmados pelo Ministério da Saúde**, portanto, não se pode
> concluir uma relação direta destes números com o número real de
> pessoas infectadas por covid-19 no Brasil.

1.  Pacote desenvolvido por [Andrea](https://twitter.com/SanchezTapiaA)
    e [Sara](https://twitter.com/mortarasara)
