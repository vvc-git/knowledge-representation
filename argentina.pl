/* Pontos turísticos */
ponto_turistico(teatro_colon).
ponto_turistico(museu_nacional_belas_artes).
ponto_turistico(glacial_perito_moreno).
ponto_turistico(parque_terra_do_fogo).
ponto_turistico(parque_nahuelito).
ponto_turistico(cerro_fitz_roy).
ponto_turistico(catena_zapata).
ponto_turistico(pulenta_estate_winery).
ponto_turistico(cataratas_iguazu).
ponto_turistico(vale_da_lua).

/* Entrada gratuita */
entrada_gratuita(teatro_colon, nao).
entrada_gratuita(museu_nacional_belas_artes, sim).
entrada_gratuita(glacial_perito_moreno, nao).
entrada_gratuita(parque_terra_do_fogo, nao).
entrada_gratuita(parque_nahuelito, nao).
entrada_gratuita(cerro_fitz_roy, sim).
entrada_gratuita(catena_zapata, nao).
entrada_gratuita(pulenta_estate_winery, nao).
entrada_gratuita(cataratas_iguazu, nao).
entrada_gratuita(vale_da_lua, nao).

/* Tipo de ambiente */
tipo_ambiente(teatro_colon, urbano).
tipo_ambiente(museu_nacional_belas_artes, urbano).
tipo_ambiente(glacial_perito_moreno, montanha).
tipo_ambiente(parque_terra_do_fogo, montanha).
tipo_ambiente(parque_nahuelito, montanha).
tipo_ambiente(cerro_fitz_roy, montanha).
tipo_ambiente(catena_zapata, rural).
tipo_ambiente(pulenta_estate_winery, rural).
tipo_ambiente(cataratas_iguazu, floresta).
tipo_ambiente(vale_da_lua, deserto).

/* Melhor época para visitar */
melhor_epoca(teatro_colon, outono).
melhor_epoca(museu_nacional_belas_artes, primavera).
melhor_epoca(glacial_perito_moreno, outono).
melhor_epoca(parque_terra_do_fogo, verao).
melhor_epoca(parque_nahuelito, primavera).
melhor_epoca(cerro_fitz_roy, outono).
melhor_epoca(catena_zapata, verao).
melhor_epoca(pulenta_estate_winery, verao).
melhor_epoca(cataratas_iguazu, outono).
melhor_epoca(vale_da_lua, primavera).

/* Acessibilidade */
acessibilidade(teatro_colon, sim).
acessibilidade(museu_nacional_belas_artes, sim).
acessibilidade(glacial_perito_moreno, nao).
acessibilidade(parque_terra_do_fogo, sim).
acessibilidade(parque_nahuelito, nao).
acessibilidade(cerro_fitz_roy, nao).
acessibilidade(catena_zapata, nao).
acessibilidade(pulenta_estate_winery, sim).
acessibilidade(cataratas_iguazu, sim).
acessibilidade(vale_da_lua, nao).

/* Duração da visita */
duracao_visita(teatro_colon, metade).
duracao_visita(museu_nacional_belas_artes, metade).
duracao_visita(glacial_perito_moreno, dia_todo).
duracao_visita(parque_terra_do_fogo, dia_todo).
duracao_visita(parque_nahuelito, metade).
duracao_visita(cerro_fitz_roy, dia_todo).
duracao_visita(catena_zapata, metade).
duracao_visita(pulenta_estate_winery, metade).
duracao_visita(cataratas_iguazu, metade).
duracao_visita(vale_da_lua, dia_todo).

/* Consultas */

/* 1. Quais são os pontos turísticos que podem ser visitados gratuitamente e têm acessibilidade? */
checkTouristFreeAccessible(X) :- entrada_gratuita(X, sim), acessibilidade(X, sim).

/* 2. Quais são os pontos turísticos que estão em ambiente rural ou montanhoso e podem ser visitados no verão? */
checkTouristRuralMountainSummer(X) :- (tipo_ambiente(X, rural); tipo_ambiente(X, montanha)), melhor_epoca(X, verao).

/* 3. Quais pontos turísticos têm acessibilidade e podem ser visitados no outono ou na primavera? */
checkAccessibleAutumnSpring(X) :- acessibilidade(X, sim), (melhor_epoca(X, outono); melhor_epoca(X, primavera)).

/* 4. Quais são os pontos turísticos que têm a duração da visita de "metade" do dia e estão localizados em ambientes urbanos? */
checkHalfDayUrban(X) :- duracao_visita(X, metade), tipo_ambiente(X, urbano).

/* 5. Quais são os pontos turísticos que não têm acessibilidade e devem ser visitados por um dia inteiro? */
checkNoAccessFullDay(X) :- acessibilidade(X, nao), duracao_visita(X, dia_todo).

/* 6. Quais pontos turísticos são ideais para visitar no outono, não possuem acessibilidade e estão em ambiente montanhoso? */
checkAutumnNoAccessMountain(X) :- melhor_epoca(X, outono), acessibilidade(X, nao), tipo_ambiente(X, montanha).

/* 7. Quais são os pontos turísticos que podem ser visitados em mais de uma estação? */
checkMultiSeasonTourist(X) :- melhor_epoca(X, Estacao1), melhor_epoca(X, Estacao2), Estacao1 \= Estacao2.

/* 8. Quais são os pontos turísticos com acessibilidade e entrada paga, que são recomendados para visitar na primavera? */
checkPaidAccessibleSpring(X) :- acessibilidade(X, sim), entrada_gratuita(X, nao), melhor_epoca(X, primavera).

