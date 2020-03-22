
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

> Os dados estão desatualizados porque a plataforma
> [IVIS](http://plataforma.saude.gov.br/novocoronavirus/) encontra-se em
> manutenção.

**Última atualização de dados:** 2020-03-18.

# `covid19br`

O objetivo do `covid19br` é fornecer um repositório permanente com dados
atualizados e todo o histórico do número de casos de vírus corona no
Brasil.

O pacote será atualizado diariamente, incluindo novos dados do
Ministério da Saúde (<https://saude.gov.br/>) disponibilizados todo fim
do dia através da plataforma
[IVIS](http://plataforma.saude.gov.br/novocoronavirus/).

# Tutorial

Para aprender como usar o pacote, veja o
[tutorial](https://paternogbc.github.io/covid19br/articles/intro.html)
online.

## Contribua

Para contribuir com esse pacote abra um issue
[aqui](https://github.com/paternogbc/covid19br/issues/new) e deixe uma
mensagem.

-----

## NOTAS

  - os dados disponibilizados representam apenas o número de casos
    **confirmados pelo Ministério da Saúde**, portanto, não se pode
    concluir uma relação direta destes números com o número real de
    pessoas infectadas por covid-19 no Brasil.

  - O objetivo desse pacote é manter o histórico de casos de covid19 no
    Brasil de forma aberta. Não faça uso indevido desse material. Seja
    responsável e consciente ao acessar e analisar esses dados.

## Dados brutos

  - Os dados brutos foram baixados com o pacote
    [`coronabr`](https://github.com/liibre/coronabr)\[1\] que oferece
    uma função excelente para baixar os dados não processados
    diretamente da plataforma
    [IVIS](http://platform.saude.gov.br/novocoronavirus/) do Ministério
    da Saúde.

  - Os dados para o número de casos no mundo foram baixados da
    plataforma [Our World in
    Data](https://ourworldindata.org/coronavirus-source-data).

-----

1.  Pacote desenvolvido por [Andrea](https://twitter.com/SanchezTapiaA)
    and [Sara](https://twitter.com/mortarasara)
