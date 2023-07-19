servesAll(american,[salad,steak,sandwiches,burgers,fried_chicken]).
servesAll(burger_place,[burgers,fries,onion_rings]).
servesAll(chinese,[eggrolls,rice,shrimp,soup,noodles]).
servesAll(indian,[papadam,bagan_bharta,rice,tandoori,naan]).
servesAll(italian,[salad,pasta,cioppino,snapper,bread,garlic_bread]).
servesAll(japanese,[sashimi,rice,tempura,noodles]).
servesAll(mediterranean,[gyros,hummus,pita,falafel]).
servesAll(mexican,[tacos,beans,rice,enchiladas,fish_tacos]).
servesAll(pizza_place,[pizza,salad,garlic_bread]).
servesAll(thai,[rice,noodles,larb,pad_thai]).

serves(Kind, Dish) :- 
    servesAll(Kind, Dishes),
    member(Dish, Dishes).


dishAll(starch,[naan,papadam,bread,rice,noodles,pita,garlic_bread,pasta,fries]).
dishAll(vegetarian,[beans,bagan_bharta,enchiladas,falafel,hummus,pizza,salad,soup,tempura,onion_rings,naan,papadam,bread,rice,noodles,pita,garlic_bread,pasta,fries]).
dishAll(meat,[burgers,enchiladas,gyros,pad_thai,pizza,steak,sandwiches,fried_chicken,tacos,tandoori,larb]).
dishAll(seafood,[snapper,cioppino,sashimi,shrimp,clams,fish_tacos,tempura]).

dish(Type,Dish) :-
    dishAll(Type,Dishes),
    member(Dish,Dishes).

cuisine_location(yans,chinese,thayer_street).
cuisine_location(pizza_marvin,pizza_place,fox_point).
cuisine_location(bajas,mexican,thayer_street).
cuisine_location(andreas,mediterranean,thayer_street).
cuisine_location(chinatown,chinese,thayer_street).
cuisine_location(kabob_n_curry,indian,thayer_street).
cuisine_location(waterman_grille,american,wayland).
cuisine_location(dolores,mexican,fox_point).
cuisine_location(tallulahs,mexican,fox_point).
cuisine_location(red_stripe,american,wayland).
cuisine_location(pasta_beach,italian,wayland).
cuisine_location(haruki,japanese,wayland).
cuisine_location(heng,thai,thayer_street).
cuisine_location(mikes,pizza_place,thayer_street).
cuisine_location(east_side_pockets,mediterranean,thayer_street).
cuisine_location(bees,thai,fox_point).
cuisine_location(shake_shack,burger_place,thayer_street).
cuisine_location(al_forno,italian,fox_point).
cuisine_location(lime,thai,wayland).

#1 cuisine_location(X,Y,wayland).
#2 cuisine_location(X,italian,Y).
#3 serves(X,snapper).
#4 serves(X,rice).
#5 cuisine_location(X,Y,fox_point)