﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка тестовых данных

Как Администратор я хочу
загрузить тестовые данные 
чтобы использовать для тестирования  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных
@Описание: Загружает константы и справочник "Валюты"
@ПримерИспользования: и я загружаю константы
Сценарий: Загрузить константы
	
	* загрузка констант
		И я перезаполняю константу "SSLIMAP" значением "False"
		И я перезаполняю константу "SSLPOP3" значением "False"
		И я перезаполняю константу "SSLSMTP" значением "False"
		И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
		И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
		И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
		И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
		И я перезаполняю константу "ИспользоватьIMAP" значением "False"
		И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
		И я перезаполняю константу "ИспользоватьAPNS" значением "False"
		И я перезаполняю константу "ИспользоватьFCM" значением "False"
		И я перезаполняю константу "ИспользоватьWNS" значением "False"
		И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
		И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
		И я перезаполняю константу "ИспользоватьСпутники" значением "False"
		И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
		И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
		И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
		И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
		И я перезаполняю константу "ПортPOP3" значением "110"
		И я перезаполняю константу "ПортSMTP" значением "25"
		И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
		И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
		И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
		И я перезаполняю константу "ТолькоБесплатные" значением "False"
		И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
		И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
		И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
		И я перезаполняю константу "УчетПоСкладам" значением "True"
	
	* загрузка зависимых данных
		И я проверяю или создаю для справочника "Валюты" объекты:
			| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
			| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
			| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |
			| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'False'           | '000000003' | 'EUR'          | 'евро'                       | 'евроцент'                    |

@ТипШага: Загрузка данных
@Описание: Загружает справочник "Организации"
@ПримерИспользования: и я загружаю справочник организации
Сценарий: Загрузить справочник Организации
	
	// Справочник.Организации
	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

@ТипШага: Загрузка данных
@Описание: Загружает справочник "Контрагенты" (покупателей)
@ПримерИспользования: и я загружаю справочник контрагенты покупателей
Сценарий: Загрузить справочник Контрагентов (покупатели)

	// Справочник.ВидыЦен
	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты
	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'            | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'   | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Покупатель "Мелкий опт"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка'         | '14'  | '+7(999)528-96-21' | 'techno@techno.ru'   | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007d' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000015' | 'Покупатель "Розница"'    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '356895' | 'Россия' | 'Москва'          | 'Маросейка'        | '2'   | '+7(999)256-56-14' | 'kolodkin@obuv.ru'   | '+7(999)256-56-10' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Колодкин И. В.'  | 55.757689 | 37.63277  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'Покупатель "Опт"'        | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Москва'          | 'Электрозаводская' | '21'  | '+7(999)568-45-96' | 'smirnov@product.ru' | '+7(999)568-45-97' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Смирнов А. Г.'   | 55.786113 | 37.70331  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'              | ''                                                                   | ''       | ''       | ''                | ''                 | ''    | ''                 | ''                   | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |

	// Справочник.Регионы
	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'          |

@ТипШага: Загрузка данных
@Описание: Загружает справочник "Склады"
@ПримерИспользования: и я загружаю справочник склады
Сценарий: Загрузить справочник Склады
	
	// Справочник.Склады
	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793994' | 'False'           | '000000005' | 'Строящийся склад'    | 'True'           |		

@ТипШага: Загрузка данных
@Описание: Загружает справочник "Товары" (товары)
@ПримерИспользования: и я загружаю справочник товары товары
Сценарий: Загрузить справочник Товары (товары)

	// Справочник.Контрагенты
	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'   | 'Улица'         | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                           | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000006' | 'Пантера АО'   | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | '2222'   | 'Польша' | 'Варшава' | 'Czolowa'       | '2'   | '+7(999)890-987'   | 'ff@jmail.ru'      | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | ''                         | 'Ковальски А.Р.' | 52.331154 | 20.989486 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000010' | 'Корнет ЗАО'   | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '221134' | 'Россия' | 'Москва'  | 'ул. Молодцова' | '4'   | '+7(999)789-67-85' | 'liepa@kornet.ru'  | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | ''                         | 'Лиепа А.П.'     | 55.87825  | 37.64153  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'   | ''                                                                   | ''       | ''       | ''        | ''              | ''    | ''                 | ''                 | ''     | ''        | ''                                                 | ''                         | ''               | ''        | ''        |

	// Справочник.Регионы
	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | 'False'           | '000000006' | 'Польша'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Товары
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000002' | 'Сапоги'       | 'ОБ-001'  | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1b' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000003' | 'Туфли'        | 'ОБ-002'  | 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1d' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'        | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''       |

	// Справочник.ХранимыеФайлы
	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | 'ИмяФайла'   | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1b' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | '000000004' | 'Сапоги'       | 'ValueStorage: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'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | 'Сапоги.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1d' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | '000000006' | 'Туфли'        | 'ValueStorage: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' | 'Туфли.jpg'  | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

@ТипШага: Загрузка данных
@Описание: Загружает справочник "Товары" (услуги)
@ПримерИспользования: и я загружаю справочник товары услуги
Сценарий: Загрузить справочник Товары (услуги)

	// Справочник.Товары
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик' | 'ФайлКартинки' | 'Вид'                     | 'Штрихкод' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30ab2' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000038' | 'Ремонт'       | ''        | ''          | ''             | 'Enum.ВидыТоваров.Услуга' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'     | ''        | ''          | ''             | 'Enum.ВидыТоваров.Услуга' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'       | ''        | ''          | ''             | ''                        | ''         | ''       |
