#language: ru

@tree
@Модуль4
@ЗаказПокупателя

Функционал: Документ "Заказ покупателя". Тест полей шапки

Как Разработчик я хочу
протестировать заполнение полей "Партнер", "Соглашение",
блокировку поля "Контрагент", если не выбран "Партнер" 
чтобы убедиться в корректность заполнении полей и UI 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: 001 Проверка заполнения полей шапки. Соглашение заполняется
	И я закрываю все окна клиентского приложения

	* Переключить Соглашение 2
		И Я открываю навигационную ссылку "e1cib/data/Catalog.Agreements?ref=96a728d0ea23232211ec9412c3d3d0fc"
		И я меняю значение переключателя с именем 'Type' на 'Поставщик'
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Соглашение * (Соглашение) *' в течение 5 секунд
								
	* Открыть форму нового заказа покупателя
		Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		
		И я нажимаю на кнопку с именем 'FormCreate'
		
		* Выбрать партнера
			И я нажимаю кнопку выбора у поля с именем "Partner"
			Тогда открылось окно 'Партнеры'
			И в таблице "List" я перехожу к строке содержащей подстроки
				|'Наименование'|
				|'Партнер 1'|
			И в таблице "List" я выбираю текущую строку

		* Проверить контрагента
			И элемент формы с именем 'LegalName' стал равен 'Контрагент 1'
		* Проверить соглашение		
			И элемент формы с именем 'Agreement' стал равен 'Соглашение 1'

	И я закрываю все окна клиентского приложения		
		
Сценарий: 002 Проверка заполнения полей шапки. Соглашение НЕ заполняется
	И я закрываю все окна клиентского приложения

	* Переключить Соглашение 2
		И Я открываю навигационную ссылку "e1cib/data/Catalog.Agreements?ref=96a728d0ea23232211ec9412c3d3d0fc"
		И я меняю значение переключателя с именем 'Type' на 'Клиент'
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Соглашение * (Соглашение) *' в течение 5 секунд
						
	* Открыть форму нового заказа покупателя
		Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		
		И я нажимаю на кнопку с именем 'FormCreate'
		
		* Выбрать партнера
			И я нажимаю кнопку выбора у поля с именем "Partner"
			Тогда открылось окно 'Партнеры'
			И в таблице "List" я перехожу к строке содержащей подстроки
				|'Наименование'|
				|'Партнер 1'|
			И в таблице "List" я выбираю текущую строку

		* Проверить контрагента
			И элемент формы с именем 'LegalName' стал равен 'Контрагент 1'
		* Проверить соглашение		
			И элемент формы с именем 'Agreement' стал равен ''

	И я закрываю все окна клиентского приложения		

Сценарий: 003 Проверка доступность поля Контрагент
	И я закрываю все окна клиентского приложения

	* Открыть форму нового заказа покупателя
		Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		
		И я нажимаю на кнопку с именем 'FormCreate'
		
		* Проверить контрагента
			И элемент формы с именем 'LegalName' стал равен ''
			И элемент формы с именем "LegalName"  не доступен

		* Выбрать партнера
			И я нажимаю кнопку выбора у поля с именем "Partner"
			Тогда открылось окно 'Партнеры'
			И в таблице "List" я перехожу к строке содержащей подстроки
				|'Наименование'|
				|'Партнер 1'|
			И в таблице "List" я выбираю текущую строку
		* Проверить контрагента
			И элемент формы с именем 'LegalName' стал равен 'Контрагент 1'
			И в поле с именем 'LegalName' я ввожу текст 'Контрагент 1'
			И я перехожу к следующему реквизиту

		* Очистить партнера
			И я нажимаю кнопку очистить у поля с именем "Partner"
		* Проверить контрагента
			И элемент формы с именем 'LegalName' стал равен ''
			И элемент формы с именем "LegalName"  не доступен

	И я закрываю все окна клиентского приложения	