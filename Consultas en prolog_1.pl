%hechos

%roberto ve peliculas de suspenso
ve_peliculas(roberto, suspenso).
%jaanai ve peliculas de suspenso
ve_peliculas(jaanai, suspenso). 
%abimael ve peliculas de suspenso
ve_peliculas(abimael, suspenso).
%leonardo ve peliculas de romance
ve_peliculas(leonardo, romance). 
%miguel ve peliculas de terror
ve_peliculas(miguel, terror).

%roberto consume maruchan
consume(roberto, maruchan).
%jaanai consume palomitas
consume(jaanai, palomitas).
%abimael consume palomitas
consume(abimael, palomitas).
%leonardo consume maruchan
consume(leonardo, maruchan).
%miguel consume ensalada
consume(miguel, ensalada).

%roberto si tiene netflix
tiene_netflix(roberto,si).
%jaanai si tiene netflix
tiene_netflix(jaanai,si).
%abimael si tiene netflix
tiene_netflix(abimael,si).
%leonardo no tiene netflix
tiene_netflix(leonardo,no).
%miguel si tiene netflix
tiene_netflix(miguel,si).

%roberto no usa audifonos
usa_audifonos(roberto,no).
%jaanai si usa audifonos
usa_audifonos(jaanai,si).
%abimael no usa audifonos
usa_audifonos(abimael,no).
%leonardo si usa audifonos
usa_audifonos(leonardo,si).
%miguel si usa audifonos
usa_audifonos(miguel,si).

%roberto si tiene tiempo libre
tiempo_libre(roberto,si).
%jaanai no tiene tiempo libre
tiempo_libre(jaanai,no).
%abimael si tiene tiempo libre
tiempo_libre(abimael,si).
%leonardo no tiene tiempo libre
tiempo_libre(leonardo,no).
%miguel si tiene tiempo libre
tiempo_libre(miguel,si).

%abelino escucha musica de reggee 
escucha_musica(abelino,reggee).
%jose escucha musica rock 
escucha_musica(jose,rock).
%izmucaneth escucha musica regional 
escucha_musica(izmucaneth,regional).
%rolando escucha musica rock 
escucha_musica(rolando,rock).
%maldonado escucha musica regional 
escucha_musica(maldonado,regional).

%abelino no tiene spotify 
tiene_spotify(abelino,no).
%jose si tiene spotify 
tiene_spotify(jose,si).
%izmucaneth si tiene spotify 
tiene_spotify(izmucaneth,si).
%rolando no tiene spotify 
tiene_spotify(rolando,no).
%maldonado si tiene spotify 
tiene_spotify(maldonado,si).

%abelino no tiene audifonos
tiene_audifonos(abelino,no).
%jose no tiene audifonos
tiene_audifonos(jose,no).
%izmucaneth si tiene audifonos
tiene_audifonos(izmucaneth,si).
%rolando si tiene audifonos
tiene_audifonos(rolando,si).
%maldonado no tiene audifonos
tiene_audifonos(maldonado,no).

%reglas
%1. ¿Quiénes prefieren ver películas?
ven_peliculas():- ve_peliculas(X,Z).

%2. ¿Quiénes prefieren escuchar musica?
escuchan_musica():- escucha_musica(X,Z).

%3. Alguien que ve películas de suspenso, disfruta verlas con palomitas, tiene una cuenta de netflix y tiempo libre, tiene una tarde perfecta.

tarde_perfecta(X):-ve_peliculas(X, suspenso),consume(X, palomitas),tiene_netflix(X,si),tiempo_libre(X,si).

%4. Alguien que ve películas consumiendo una ensalada, tiene una vida saludable.

vida_saludable(X):-consume(X, ensalada).

%5. Alguien que escucha regional, tiene audífonos y la aplicación de spotify, disfruta del camino a casa.

camino_casa(X):-escucha_musica(X,regional),tiene_audifonos(X,si),tiene_spotify(X,si).

%6. Alguien es feliz si ve películas consumiendo maruchan, tiempo libre y netflix.

es_feliz(X):-consume(X, maruchan),tiempo_libre(X,si),tiene_netflix(X,si).

%7. Únicamente pueden ser amigos quienes tienen los mismos gustos (películas, botana)

amigos(X,Y):- ve_peliculas(X,Z),ve_peliculas(X,Z) , consume(X,W), consume(Y,W).

