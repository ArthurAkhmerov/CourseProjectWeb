﻿insert into Restaurant values
('Restaurant&Cafe', '+7 978 78 21 663', 'ул. Большая Морская дом 30 ');

insert into Menu values
('1.0.0.0', 'Restaurant&Cafe');

insert into Cuisine (cuisine_name, cuisine_imageURL) values
('Итальянская', 'todo: cuisine_imageURL'),
('Перуанская', 'todo: cuisine_imageURL'),
('Мексиканская', 'todo: cuisine_imageURL'),
('Китайская', 'todo: cuisine_imageURL'),
('Японская', 'todo: cuisine_imageURL'),
('Индийская', 'todo: cuisine_imageURL'),
('Вегетарианская', 'todo: cuisine_imageURL');

insert into Menu_Cuisine values
(1, 'Итальянская'),
(1, 'Перуанская'),
(1, 'Мексиканская'),
(1, 'Китайская'),
(1, 'Японская'),
(1, 'Индийская'),
(1, 'Вегетарианская');

insert into Class values
('Салаты'),
('Супы'),
('Закуски'),
('Сэндвичи'),
('Паста'),
('Пицца'),
('Горячее'),
('VEG'),
('Суши'),
('Мангал'),
('Десерты'),
('Чайная карта'),
('Коктейли'),
('Пиво'),
('Кальяны');

insert into Dish values
('Мясной фаворит', null, 250, '/dishes/italy/salads/meat_favourite.jpg', 'Салаты', 'Итальянская'),
('Овощной', null, 210, '/dishes/italy/salads/vegetable_salad.jpg', 'Салаты', 'Итальянская'),
('Клеопатра', null, 270, '/dishes/italy/salads/cleopatra.jpg', 'Салаты', 'Итальянская'),
('Коктейль из креветок', null, 240, '/dishes/italy/salads/cocktail_of_prawns.jpg', 'Салаты', 'Итальянская'),
('Греческий', null, 220, '/dishes/italy/salads/greek_salad.jpg', 'Салаты', 'Итальянская'),
('Гурман', null, 280, '/dishes/italy/salads/gourmand.jpg', 'Салаты', 'Итальянская'),
('Каприз', null, 260, '/dishes/italy/salads/caprice.jpg', 'Салаты', 'Итальянская'),
('Салат с тунцом', null, 220, '/dishes/italy/salads/salad_with_tuna.jpg', 'Салаты', 'Итальянская'),
('Беверли Хиллз', null, 250, '/dishes/italy/salads/beverly_hills.jpg', 'Салаты', 'Итальянская'),
('ЛАС ВЕГАС', null, 250, '/dishes/peru/salads/las_vegas.jpg', 'Салаты', 'Перуанская'),
('МЕДЕТЕРРАНО', null, 290, '/dishes/peru/salads/medeterrano.jpg', 'Салаты', 'Перуанская'),
('ТОКИО (ТЕПЛЫЙ САЛАТ)', null, 290, '/dishes/peru/salads/tokyo.jpg', 'Салаты', 'Перуанская'),
('ТЕХАС', null, 240, '/dishes/peru/salads/texas.jpg', 'Салаты', 'Перуанская'),
('ЛОС АНДЖЕЛЕС', null, 250, '/dishes/peru/salads/los_angeles.jpg', 'Салаты', 'Перуанская'),
('ГОВЯЖЬЯ ТРЕБУХА', null, 250, '/dishes/china/salads/beef_offal.jpg', 'Салаты', 'Китайская'),
('САЛАТ СО СПАРЖЕЙ', null, 240, '/dishes/china/salads/beef_offal.jpg', 'Салаты', 'Китайская'),
('САЛАТ С КИТАЙСКИМИ ГРИБАМИ', null, 240, '/dishes/china/salads/salad_with_china_mushrooms.jpg', 'Салаты', 'Китайская'),
('САЛАТ С МОРСКОЙ КАПУСТОЙ', null, 220, '/dishes/china/salads/salad_with_seaweed.jpg', 'Салаты', 'Китайская'),
('САЛАТ С РОСТКАМИ ФАСОЛИ И КУРИЦЕЙ', null, 270, '/dishes/china/salads/salad_with_beans_and_chicken.jpg', 'Салаты', 'Китайская'),
('САЛАТ ЛОДЖЕР', null, 300, '/dishes/china/salads/salad_lodjer.jpg', 'Салаты', 'Китайская'),
('ТЕПЛЫЙ САЛАТ С КАЛЬМАРАМИ', null, 300, '/dishes/china/salads/warm_salad_with_calamaries.jpg', 'Салаты', 'Китайская'),
('ЧИКЕН ЧАТ', null, 230, '/dishes/india/salads/chicken_chat.jpg', 'Салаты', 'Индийская'),
('ЧАННА ЧАТ', null, 210, '/dishes/india/salads/channa_chat.jpg', 'Салаты', 'Индийская'),
('ФРЕШ САЛАТ', null, 230, '/dishes/india/salads/fresh_salad.jpg', 'Салаты', 'Индийская'),
('САЛАТ ИЗ РОСТКОВ ФАСОЛИ', null, 230, '/dishes/india/salads/salad_with_beans.jpg', 'Салаты', 'Индийская'),
('ПРОН САЛАТ', null, 240, '/dishes/india/salads/pron_salad.jpg', 'Салаты', 'Индийская'),
('КОЧУМБЕР САЛАТ', null, 220, '/dishes/india/salads/kochumber_salad.jpg', 'Салаты', 'Индийская'),
('САНКОЧО ДЕ ПОЛЛО', null, 250, '/dishes/peru/soups/sankocho_de_pollo.jpg', 'Супы', 'Перуанская'),
('САНКОЧО ДЕ ПЕСКАДО', null, 280, '/dishes/peru/soups/sankocho_de_peskado.jpg', 'Супы', 'Перуанская'),
('ГАСПАЧЧО', null, 250, '/dishes/peru/soups/gazpacho.jpg', 'Супы', 'Перуанская'),
('СУП-ПЮРЕ ИЗ ЛЕСНЫХ ГРИБОВ', null, 180, '/dishes/peru/soups/puree_with_forest_mushrooms.jpg', 'Супы', 'Перуанская'),
('ПОСОЛЕ', null, 240, '/dishes/peru/soups/posole.jpg', 'Супы', 'Перуанская'),
('МЕКСИКАНСКИЙ', null, 250, '/dishes/peru/soups/mexican_soup.jpg', 'Супы', 'Перуанская'),
('КРИОЛЬСКИЙ', null, 250, '/dishes/peru/soups/criollo_soup.jpg', 'Супы', 'Перуанская'),
('СУП ЧУПЭ', null, 270, '/dishes/peru/soups/soup_chupe.jpg', 'Супы', 'Перуанская'),
('ПАРИУЭЛЛА', null, 290, '/dishes/peru/soups/pariuella.jpg', 'Супы', 'Перуанская'),
('СУП ПАК-ПО', null, 220, '/dishes/china/soups/pack_po_soup.jpg', 'Супы', 'Китайская'),
('СУП ФУ ЧИ ФУ', null, 200, '/dishes/china/soups/phu_chi_phu_soup.jpg', 'Супы', 'Китайская'),
('КИТАЙСКИЙ СУП', null, 180, '/dishes/china/soups/china_soup.jpg', 'Супы', 'Китайская'),
('ТОМ-ЯМ', null, 250, '/dishes/china/soups/tom_yam.jpg', 'Супы', 'Китайская'),
('ДАЛ ШОРБА', null, 200, '/dishes/india/soups/dul_shorba.jpg', 'Супы', 'Индийская'),
('ДХАНИЯ ШОРБА', null, 230, '/dishes/india/soups/dhaniya_shorba.jpg', 'Супы', 'Индийская'),
('МАШРУМ ШОРБА', null, 230, '/dishes/india/soups/mushroom_shorba.jpg', 'Супы', 'Индийская'),
('ЧИКЕН ШОРБА', null, 240, '/dishes/india/soups/chicken_shorba.jpg', 'Супы', 'Индийская'),
('КЛАБ-СЕНДВИЧ 3D С КАРТОФЕЛЕМ ФРИ', null, 320, '/dishes/italy/snacks/club_sandwich_3d_with_french_fries.jpg', 'Закуски', 'Итальянская'),
('ДОМАШНИЙ БУТЕРБРОД С ВЕТЧИНОЙ И СЫРОМ', null, 120, '/dishes/italy/snacks/home_burger_with_ham_and_cheese.jpg', 'Закуски', 'Итальянская'),
('БУТЕРБРОД «БЕНЕДИКТ»', null, 200, '/dishes/italy/snacks/burger_benedict.jpg', 'Закуски', 'Итальянская'),
('ПИТА-СЕНДВИЧ C ДОМАШНЕЙ КОТЛЕТКОЙ И ОВОЩАМИ', null, 210, '/dishes/italy/snacks/pit_sandwich_with_cutlet_and_vegetables.jpg', 'Закуски', 'Итальянская'),
('ОМЛЕТ С САЛАТНЫМ МИКСОМ', null, 150, '/dishes/italy/snacks/omelette_with_salad_mix.jpg', 'Закуски', 'Итальянская'),
('ГЛАЗУНЬЯ', null, 130, '/dishes/italy/snacks/fried_eggs.jpg', 'Закуски', 'Итальянская'),
('КРЕВЕТКИ В КЛЯРЕ С КИСЛО-СЛАДКИМ СОУСОМ', null, 400, '/dishes/peru/snacks/prawns_in_batter_with_sweet_and_sour_sauce.jpg', 'Закуски', 'Перуанская'),
('МИДИИ АЛЯ-ЧАЛАКА', null, 400, '/dishes/peru/snacks/mussels_alya_chalaka.jpg', 'Закуски', 'Перуанская'),
('СЕВИЧЕ С СЕМГОЙ ИЛИ СЕМГОЙ И КАЛЬМАРАМИ', null, 420, '/dishes/peru/snacks/ceviche_with_salmon_or_with_salmon_and_calamaries.jpg', 'Закуски', 'Перуанская'),
('ЭКВАДОРСКИЕ БАНАНОВЫЕ ЧИПСЫ С СОУСОМ ГУАКАМОЛЕ', null, 290, '/dishes/peru/snacks/ecuador_banana_chips_with_guacamole_souce.jpg', 'Закуски', 'Перуанская'),
('БОЛОНЕС', null, 230, '/dishes/peru/snacks/bolones.jpg', 'Закуски', 'Перуанская'),
('СЕВИЧЕ ПО-ЭКВАДОРСКИ', null, 400, '/dishes/peru/snacks/ecuadorian_ceviche.jpg', 'Закуски', 'Перуанская'),
('КАУСА', null, 310, '/dishes/peru/snacks/causa.jpg', 'Закуски', 'Перуанская'),
('СПРИНГ РОЛЛЫ', null, 220, '/dishes/china/snacks/spring_rolls.jpg', 'Закуски', 'Китайская'),
('ПАРАТА', null, 100, '/dishes/india/snacks/parata.jpg', 'Закуски', 'Индийская'),
('ХАРА БАРА КЕБАБ', null, 190, '/dishes/india/snacks/hara_bara_cebab.jpg', 'Закуски', 'Индийская'),
('ЧИКЕН ПАКОДА', null, 270, '/dishes/india/snacks/chicken_pakoda.jpg', 'Закуски', 'Индийская'),
('ФИШ ПАКОДА', null, 250, '/dishes/india/snacks/fish_pakoda.jpg', 'Закуски', 'Индийская'),
('ВЕГ ПАКОДА', null, 230, '/dishes/india/snacks/veg_pakoda.jpg', 'Закуски', 'Индийская'),
('ПАКОДА', null, 230, '/dishes/india/snacks/fish_pakoda.jpg', 'Закуски', 'Индийская'),
('КУРИНАЯ САМОСА', null, 210, '/dishes/india/snacks/chicken_samosa.jpg', 'Закуски', 'Индийская'),
('ИНДИЙСКИЕ РУЛЕТИКИ', null, 210, '/dishes/india/snacks/indian_rolls.jpg', 'Закуски', 'Индийская'),
('ИНДИЙСКИЕ ЧИПСЫ', null, 100, '/dishes/india/snacks/indian_chips.jpg', 'Закуски', 'Индийская'),
('ВЕГ САМОСА', null, 170, '/dishes/india/snacks/veg_samosa.jpg', 'Закуски', 'Индийская'),
('ИНДИЙСКИЙ РИС', null, 170, '/dishes/india/snacks/indian_rice.jpg', 'Закуски', 'Индийская'),
('СОУС РАЙТА,ТАМАРИН,МЯТНЫЙ', null, 60, '/dishes/india/snacks/sauce_raita_tamarin_mint.jpg', 'Закуски', 'Индийская');


insert into Dish values
('Мясной фаворит', null, 250, '/dishes/italy/salads/meat_favourite.jpg', 'Салаты', 'Мексиканская'),
('Овощной', null, 210, '/dishes/italy/salads/vegetable_salad.jpg', 'Салаты', 'Мексиканская'),
('Клеопатра', null, 270, '/dishes/italy/salads/cleopatra.jpg', 'Салаты', 'Итальянская'),
('Коктейль из креветок', null, 240, '/dishes/italy/salads/cocktail_of_prawns.jpg', 'Салаты', 'Мексиканская'),
('Греческий', null, 220, '/dishes/italy/salads/greek_salad.jpg', 'Салаты', 'Мексиканская'),
('Гурман', null, 280, '/dishes/italy/salads/gourmand.jpg', 'Салаты', 'Мексиканская'),
('Каприз', null, 260, '/dishes/italy/salads/caprice.jpg', 'Салаты', 'Мексиканская'),
('Салат с тунцом', null, 220, '/dishes/italy/salads/salad_with_tuna.jpg', 'Салаты', 'Мексиканская'),
('Беверли Хиллз', null, 250, '/dishes/italy/salads/beverly_hills.jpg', 'Салаты', 'Мексиканская'),
('ЛАС ВЕГАС', null, 250, '/dishes/peru/salads/las_vegas.jpg', 'Салаты', 'Вегетарианская'),
('МЕДЕТЕРРАНО', null, 290, '/dishes/peru/salads/medeterrano.jpg', 'Салаты', 'Вегетарианская'),
('ТОКИО (ТЕПЛЫЙ САЛАТ)', null, 290, '/dishes/peru/salads/tokyo.jpg', 'Салаты', 'Вегетарианская'),
('ТЕХАС', null, 240, '/dishes/peru/salads/texas.jpg', 'Салаты', 'Вегетарианская'),
('ЛОС АНДЖЕЛЕС', null, 250, '/dishes/peru/salads/los_angeles.jpg', 'Салаты', 'Вегетарианская'),
('ГОВЯЖЬЯ ТРЕБУХА', null, 250, '/dishes/china/salads/beef_offal.jpg', 'Салаты', 'Японская'),
('САЛАТ СО СПАРЖЕЙ', null, 240, '/dishes/china/salads/beef_offal.jpg', 'Салаты', 'Японская'),
('САЛАТ С КИТАЙСКИМИ ГРИБАМИ', null, 240, '/dishes/china/salads/salad_with_china_mushrooms.jpg', 'Салаты', 'Японская'),
('САЛАТ С МОРСКОЙ КАПУСТОЙ', null, 220, '/dishes/china/salads/salad_with_seaweed.jpg', 'Салаты', 'Японская'),
('САЛАТ С РОСТКАМИ ФАСОЛИ И КУРИЦЕЙ', null, 270, '/dishes/china/salads/salad_with_beans_and_chicken.jpg', 'Салаты', 'Японская'),
('САЛАТ ЛОДЖЕР', null, 300, '/dishes/china/salads/salad_lodjer.jpg', 'Салаты', 'Японская'),
('ТЕПЛЫЙ САЛАТ С КАЛЬМАРАМИ', null, 300, '/dishes/china/salads/warm_salad_with_calamaries.jpg', 'Салаты', 'Японская'),
('САНКОЧО ДЕ ПОЛЛО', null, 250, '/dishes/peru/soups/sankocho_de_pollo.jpg', 'Супы', 'Японская'),
('САНКОЧО ДЕ ПЕСКАДО', null, 280, '/dishes/peru/soups/sankocho_de_peskado.jpg', 'Супы', 'Японская'),
('ГАСПАЧЧО', null, 250, '/dishes/peru/soups/gazpacho.jpg', 'Супы', 'Японская'),
('СУП-ПЮРЕ ИЗ ЛЕСНЫХ ГРИБОВ', null, 180, '/dishes/peru/soups/puree_with_forest_mushrooms.jpg', 'Супы', 'Японская'),
('ПОСОЛЕ', null, 240, '/dishes/peru/soups/posole.jpg', 'Супы', 'Японская'),
('МЕКСИКАНСКИЙ', null, 250, '/dishes/peru/soups/mexican_soup.jpg', 'Супы', 'Японская'),
('КРИОЛЬСКИЙ', null, 250, '/dishes/peru/soups/criollo_soup.jpg', 'Супы', 'Японская'),
('СУП ЧУПЭ', null, 270, '/dishes/peru/soups/soup_chupe.jpg', 'Супы', 'Японская'),
('ПАРИУЭЛЛА', null, 290, '/dishes/peru/soups/pariuella.jpg', 'Супы', 'Японская'),
('СУП ПАК-ПО', null, 220, '/dishes/china/soups/pack_po_soup.jpg', 'Супы', 'Вегетарианская'),
('СУП ФУ ЧИ ФУ', null, 200, '/dishes/china/soups/phu_chi_phu_soup.jpg', 'Супы', 'Вегетарианская'),
('КИТАЙСКИЙ СУП', null, 180, '/dishes/china/soups/china_soup.jpg', 'Супы', 'Вегетарианская'),
('ТОМ-ЯМ', null, 250, '/dishes/china/soups/tom_yam.jpg', 'Супы', 'Вегетарианская'),
('КЛАБ-СЕНДВИЧ 3D С КАРТОФЕЛЕМ ФРИ', null, 320, '/dishes/italy/snacks/club_sandwich_3d_with_french_fries.jpg', 'Закуски', 'Мексиканская'),
('ДОМАШНИЙ БУТЕРБРОД С ВЕТЧИНОЙ И СЫРОМ', null, 120, '/dishes/italy/snacks/home_burger_with_ham_and_cheese.jpg', 'Закуски', 'Мексиканская'),
('БУТЕРБРОД «БЕНЕДИКТ»', null, 200, '/dishes/italy/snacks/burger_benedict.jpg', 'Закуски', 'Итальянская'),
('ПИТА-СЕНДВИЧ C ДОМАШНЕЙ КОТЛЕТКОЙ И ОВОЩАМИ', null, 210, '/dishes/italy/snacks/pit_sandwich_with_cutlet_and_vegetables.jpg', 'Закуски', 'Мексиканская'),
('ОМЛЕТ С САЛАТНЫМ МИКСОМ', null, 150, '/dishes/italy/snacks/omelette_with_salad_mix.jpg', 'Закуски', 'Мексиканская'),
('ГЛАЗУНЬЯ', null, 130, '/dishes/italy/snacks/fried_eggs.jpg', 'Закуски', 'Итальянская'),
('КРЕВЕТКИ В КЛЯРЕ С КИСЛО-СЛАДКИМ СОУСОМ', null, 400, '/dishes/peru/snacks/prawns_in_batter_with_sweet_and_sour_sauce.jpg', 'Закуски', 'Мексиканская'),
('МИДИИ АЛЯ-ЧАЛАКА', null, 400, '/dishes/peru/snacks/mussels_alya_chalaka.jpg', 'Закуски', 'Мексиканская'),
('СЕВИЧЕ С СЕМГОЙ ИЛИ СЕМГОЙ И КАЛЬМАРАМИ', null, 420, '/dishes/peru/snacks/ceviche_with_salmon_or_with_salmon_and_calamaries.jpg', 'Закуски', 'Мексиканская'),
('ЭКВАДОРСКИЕ БАНАНОВЫЕ ЧИПСЫ С СОУСОМ ГУАКАМОЛЕ', null, 290, '/dishes/peru/snacks/ecuador_banana_chips_with_guacamole_souce.jpg', 'Закуски', 'Мексиканская'),
('БОЛОНЕС', null, 230, '/dishes/peru/snacks/bolones.jpg', 'Закуски', 'Мексиканская'),
('СЕВИЧЕ ПО-ЭКВАДОРСКИ', null, 400, '/dishes/peru/snacks/ecuadorian_ceviche.jpg', 'Закуски', 'Мексиканская'),
('КАУСА', null, 310, '/dishes/peru/snacks/causa.jpg', 'Закуски', 'Мексиканская'),
('СПРИНГ РОЛЛЫ', null, 220, '/dishes/china/snacks/spring_rolls.jpg', 'Закуски', 'Мексиканская');




insert into News (news_imageURL, news_text) values
('news/news_1.jpg',
	'Китай-одна из самых древних и загадочных цивилизаций мира. 
	И самые вкусные китайские блюда кухни вы можете попробовать у нас:) 
	Ждём в гости в наше уютное кафе))'),
('news/news_2.jpg',
'Раз сегодня мы решили заговорить с вами о уже запавшей в сердца тысячи туристов Италии, 
	то почему бы не поделиться с вами секретными ингредиентами для приготовления простой, 
	но в то же время оригинальной пасты "Милано" в домашних условиях?:)
	Для этого вам понадобится: спагетти, цукини, куриное филе, лук, горошек зелёный, 
	сливки и конечно не забудьте про базилик;)Успех обеспечен!) 
	У нас паста "Милано" готовится немножко иначе.Так что, приходите сравнить;)'),
('news/news_3.jpg',
'Главный тренд в Интернете - депрессия, связанная с осенью, но мы не хотим ему подчиняться 
и радуемся каждому новому дню:) а в окружении таких вкусняшек, как, например, брауни с 
ванильным мороженным и орешками вообще трудно печалиться:)) друзья, приходите к нам в гости, 
мы прогоним вашу осеннюю тоску;))'),
('news/news_4.jpg',
'Индийская кухня уже давно получила мировое признание и любовь, и поэтому занимает прочные 
позиции у нас в меню. В честь этого,сегодня раскроем секрет приготовлениятрадиционного салата 
"Чанна Чат". Все крайне просто: данный салат состоит всего лишь из нута, томатов и разных специй 
и приправ(необходимый элемент индийской кухни)!Со всем остальным можете смело экспериментировать 
(блюдо выходит очень сытным, и легко может послужить даже основным).Приятного аппетита!С любовью, 
ваш Дионис ;)'),
('news/news_5.jpg',
'Несколько интересных фактов про суши:  В приготовлении суши, как и при приготовлении других 
блюд японской кухни не используется соль, а заменяется соевым соусом, который полезнее и 
интереснее на вкус. Большинство сушистов мужчины. Это объясняется тем, что у женщин температура 
тела выше, чем у мужчин. А разница в температуре всего на 2–4 градуса может повлиять на вкус суши.
В понимании японцев супы не являются основным блюдом, а используются как дополнение к мясу 
и рыбе.');

insert into News (news_imageURL, news_text) values
('news/news_1.jpg',
	'Китай-одна из самых древних и загадочных цивилизаций мира. 
	И самые вкусные китайские блюда кухни вы можете попробовать у нас:) 
	Ждём в гости в наше уютное кафе))'),
('news/news_2.jpg',
'Раз сегодня мы решили заговорить с вами о уже запавшей в сердца тысячи туристов Италии, 
	то почему бы не поделиться с вами секретными ингредиентами для приготовления простой, 
	но в то же время оригинальной пасты "Милано" в домашних условиях?:)
	Для этого вам понадобится: спагетти, цукини, куриное филе, лук, горошек зелёный, 
	сливки и конечно не забудьте про базилик;)Успех обеспечен!) 
	У нас паста "Милано" готовится немножко иначе.Так что, приходите сравнить;)'),
('news/news_3.jpg',
'Главный тренд в Интернете - депрессия, связанная с осенью, но мы не хотим ему подчиняться 
и радуемся каждому новому дню:) а в окружении таких вкусняшек, как, например, брауни с 
ванильным мороженным и орешками вообще трудно печалиться:)) друзья, приходите к нам в гости, 
мы прогоним вашу осеннюю тоску;))'),
('news/news_4.jpg',
'Индийская кухня уже давно получила мировое признание и любовь, и поэтому занимает прочные 
позиции у нас в меню. В честь этого,сегодня раскроем секрет приготовлениятрадиционного салата 
"Чанна Чат". Все крайне просто: данный салат состоит всего лишь из нута, томатов и разных специй 
и приправ(необходимый элемент индийской кухни)!Со всем остальным можете смело экспериментировать 
(блюдо выходит очень сытным, и легко может послужить даже основным).Приятного аппетита!С любовью, 
ваш Дионис ;)'),
('news/news_5.jpg',
'Несколько интересных фактов про суши:  В приготовлении суши, как и при приготовлении других 
блюд японской кухни не используется соль, а заменяется соевым соусом, который полезнее и 
интереснее на вкус. Большинство сушистов мужчины. Это объясняется тем, что у женщин температура 
тела выше, чем у мужчин. А разница в температуре всего на 2–4 градуса может повлиять на вкус суши.
В понимании японцев супы не являются основным блюдом, а используются как дополнение к мясу 
и рыбе.');

insert into Recipe values
('Следуя инструкции, приготовьте яичную лапшу, откиньте её, промойте и дайте воде стечь.
Приготовьте соус: вылейте в блендер бульон, добавьте к нему соевый и перечный соус, лаймовый сок и тертый корень имбиря и хорошо смешайте.
На сковороде разогрейте оливковое масло и обжарьте на нем фарш в течение 5 минут, тщательно перемешивая. 
Влейте к нему приготовленный соус и тушите ещё 5 минут. Добавьте шпинат и оставьте ещё на 7 минут.
Разложите в тарелки лапшу, полейте приготовленным соусом. Перед подачей посыпьте рубленым арахисом.

275 г китайской яичной лапши
1 стакан куриного бульона
по 45 мл сока лайма и соуса
15 мл острого перечного соуса (если не любите острое, добавьте 2 капли или исключите совсем)
15 г сахара
15 г тертого имбирного корня
30 мл растительного масла
150 г молодого шпината
225 г фарша из индейки
¼ стакана рубленого обжаренного арахиса', 'recipes/egg_noodles_with_turkey.jpg'),

('Отварить и почистить креветки. Перемолоть их в блендере или очень мелко порезать.
В соевый соус добавить чеснок и немного развести водой.Залить соусом креветки, дать помариноваться минут 10-20.
Можно в начинку добавить бамбук, кунжут и т.д. У меня просто не было. Рисовую бумагу опускаем в холодную воду секунд на 30, 
затем на серединку выкладываем начинку и залепляем. Если распадается - можно скрепить зубочисткой. 
Кладем на дно пароварки бамбуковый лист или листик капусты/салата, иначе прилипнут.
Ставим дим самы в пароварку максимум на 10 минут. Но можно и без пароварки кушать, они не сырые.
После пароварки рисовая бумага очень липкая.Подавать с соевым соусом

На 6 штучек:
рисовая бумага - 6 листов
креветки - 100 грамм
чеснок
соевый соус', 'recipes/dim_sum_with_prawns.jpg'),

('Выройте в земле ямку глубиной около полуметра и обложите ее речными камнями средней величины. 
В ямке разожгите костер и дайте камням хорошенько раскалиться. В качестве альтернативного варианта, 
часто костер разжигают просто в груде камней, которые затем уже раскаленными сваливаются в выкопанную ямку. 
Убрав угли, начинайте укладывать ингредиенты, объем которых зависит от количества гостей.
Обычно, в пачаманке используют различные виды мяса. Перед приготовлением мясо режут крупными кусками и ненадолго маринуют. 
Затем, его заворачивают в банановые листья и укладывают в ямку. Сверху на мясо выкладывают мытый, но не очищенный картофель, 
зеленые бананы в кожуре, початки кукурузы, корни юки, много петрушки и укропа. Соли и специи добавляют по вкусу.
Уложив все ингредиенты, ямку закрывают пальмовыми листьями и засыпают землей. Готовится блюдо около 1 часа. 
Раскопав "кастрюлю", ингредиенты выкладывают на несколько блюд и подают горячими к большому столу в сопровождении сыра, фасоли и напитков.

свинина
говядина
курятина
картофель
зеленые бананы
кукуруза в початках
юка
петрушка
укроп
соль и острый перец по вкусу', 'recipes/pachamanca.jpg'),

('Разрежьте утку на крупные куски, приправьте их солью с перцем. Затем измельчите листья кориандра с добавлением небольшого количества воды,
если необходимо; вымойте тыкву и натрите ее на средней терке вместе с кожурой. Болгарский перец порезать на небольшие кусочки,
луковицу и чеснок мелко покрошить. В глубокой сковороде разогрейте растительное масло и слегка обжарьте в нем со всех сторон кусочки утки. 
Добавьте измельченные лук и чеснок и тушите жаркое до тех пор, пока лук не станет прозрачным. Переместите все со сковороды в кастрюлю, 
добавьте два литра воды, доведите до кипения и оставьте получившийся бульон кипеть в течение одного часа на медленном огне. Убедитесь, 
что куски утки стали мягкими, и всыпьте в бульон рис, горошек, измельченные кориандр и тыкву. Перемешайте получившуюся смесь, 
подсолите и убедитесь, что количества воды в котелке будет достаточно для того, чтобы рис остался рассыпчатым. 
Накройте кастрюлю крышкой и оставьте на медленном огне до тех пор, пока рис не будет готов.
Влейте кукурузную водку, равномерно распределяя ее по всей кастрюле, снова накройте ее крышкой и оставьте еще на 4-5 минут. 
Подавать готовую утку с рисом на блюде горячей, украсив кусочками красного перца.

1 утка (свежепойманная и ощипанная, ок. 2,5 кг)
1 кг пропаренного риса
6 зубчиков чеснока
1 луковица
0,5 кг зеленого горошка
100 г тыквы
1 стакан кукурузной водки или бутылка темного пива
пучок кориандра
1 слегка обжаренный красный болгарский перец
растительное масло
соль и перец по вкусу', 'recipes/chicklay_duck.jpg'),

('Севиче - пожалуй, самое знаменитое блюдо перуанской кухни. Приготовляемое из морепродуктов, 
севиче может быть абсолютно разным в зависимости от региона Перу. После окончания трапезы, 
обязательно выпейте маринад - "молоко тигра" (leche del tigre), обладающий свойствами афродизиака.
часто имеет глубокое социальное значение.

Ингредиенты (6 порций):

1 кг белой рыбы (к примеру, тилапия)
1 чашка лимонного сока
1 зубчик чеснока, натертый на терке
молотый красный не острый перец по вкусу
1 крупная красная луковица, порезанная кольцами
2 стручка острого перца без семечек, порезанных на кусочки
порезанный стебель сельдерея по вкусу

Промойте под проточной водой рыбу и порежьте ее на кусочки средней величины. 
Затем поместите кусочки рыбы в крупную чашку, залейте лимонным соком, приправьте чесноком, солью, 
красным и черным молотым перцем и оставьте на один час. 
Добавьте лук, кусочки острого перца, сельдерей, кориандр и кинзу и оставьте еще на один час.
Перед тем как подавать блюдо на стол, украсьте его листьями салата и колечками кукурузы.', 'recipes/ceviche.jpg');

select * from Dish;




