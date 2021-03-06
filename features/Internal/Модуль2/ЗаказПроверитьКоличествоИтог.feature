#language: ru

@tree

Функционал: Проверить Количество (итог) по ТЧ "Товары"

Как МенеджерПоПродажам я хочу
создать заказ 
чтобы проверить Количество (итог) по ТЧ "Товары" 

Контекст:
	Дано я подключаю профиль TestClient "Менеджер по продажам"
	И я закрываю все окна клиентского приложения
	
Сценарий: Создать заказ
	и заполнение шапки документа Заказ
	
	// 1ая строка
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Сапоги'       |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	// 2ая строка
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Туфли'        |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
	// 3ая строка
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Доставка'     |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1000,00'
	И в таблице "Товары" я завершаю редактирование строки
	// 4ая строка
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2000,00'
	И в таблице "Товары" я завершаю редактирование строки

	// проверка таблицы
	Тогда таблица "Товары" стала равной:
		| 'Товар'    | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Сапоги'   | '100,00'   | '2'          | '200,00'   |
		| 'Туфли'    | '200,00'   | '3'          | '600,00'   |
		| 'Доставка' | '1 000,00' | ''           | '1 000,00' |
		| 'Ремонт'   | '2 000,00' | ''           | '2 000,00' |
	
	// проверка итога количества
	И элемент формы с именем 'ТоварыИтогКоличество' стал равен '7'	

	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
	