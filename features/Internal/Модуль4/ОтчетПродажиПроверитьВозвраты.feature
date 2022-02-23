@tree
@Модуль4
@ЗаказПокупателя

Функционал: Документ "Заказ покупателя". Тест полей шапки

Как Разработчик я хочу
протестировать отображение в отчете "D2001 Продажи" возврат от покупателя
чтобы проверить движения документа 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Подготовка данных

	// Документ.SalesReturn

	И я проверяю или создаю для документа "SalesReturn" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'False'        | 1        | '22.02.2022 23:42:12' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 1400             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e6238008-e688-46e9-b59b-a894b144d350' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 83.33       |                | 100     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 1          | 16.67       | 100           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 1                    | ''                 | ''            | ''                   | 'True'            | ''             |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5a112ce3-e001-44eb-9b2d-54a89da15703' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 333.33      |                | 200     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 2          | 66.67       | 400           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 2                    | ''                 | ''            | ''                   | 'True'            | ''             |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5d2fe9bb-3365-436c-b67e-fb37c0536384' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb7674324a4a4c' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 750         |                | 300     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 3          | 150         | 900           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 3                    | ''                 | ''            | ''                   | 'True'            | ''             |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e6238008-e688-46e9-b59b-a894b144d350' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 16.67    | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 16.67          |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5a112ce3-e001-44eb-9b2d-54a89da15703' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 66.67    | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 66.67          |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5d2fe9bb-3365-436c-b67e-fb37c0536384' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 150      | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 150            |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 1400     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 1202.6   | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 1400     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | 'e6238008-e688-46e9-b59b-a894b144d350' | 'e6238008-e688-46e9-b59b-a894b144d350' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=96a728d0ea23232211ec9412c3d3d0fd' | ''         |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5a112ce3-e001-44eb-9b2d-54a89da15703' | '5a112ce3-e001-44eb-9b2d-54a89da15703' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=96a728d0ea23232211ec9412c3d3d0fe' | ''         |
		| 'e1cib/data/Document.SalesReturn?ref=96a728d0ea23232211ec9412c3d3d100' | '5d2fe9bb-3365-436c-b67e-fb37c0536384' | '5d2fe9bb-3365-436c-b67e-fb37c0536384' | 3          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=96a728d0ea23232211ec9412c3d3d0ff' | ''         |

	И я выполняю код встроенного языка на сервере
		|'ДокументСсылка = Документы.SalesReturn.НайтиПоНомеру(1);'|
		|'ДокументОбъект = ДокументСсылка.ПолучитьОбъект();'|
		|'ДокументОбъект.Записать(РежимЗаписиДокумента.Проведение);'|
	

Сценарий: Проверить отчет "D2001 Продажи"
	
	И я закрываю все окна клиентского приложения
	
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'

	И табличный документ "Result" содержит строки только из макета "D2001" по шаблону

//	Тогда табличный документ "Result" содержит строки по шаблону:
//		| 'Параметры:'               | 'Период: 01.02.2022 - 28.02.2022'                                   | ''          | ''                  | ''             |
//		| 'Отбор:'                   | 'Вид мультивалютной аналитики Равно "en наименование не заполнено"' | ''          | ''                  | ''             |
//		| ''                         | ''                                                                  | ''          | ''                  | ''             |
//		| 'Период, месяц'            | 'Итого'                                                             | ''          | ''                  | ''             |
//		| 'Номенклатура'             | ''                                                                  | ''          | ''                  | ''             |
//		| 'Характеристика'           | 'Количество'                                                        | 'Сумма'     | 'Сумма без налогов' | 'Сумма скидки' |
//		| 'Февраль 2022'             | '-7,000'                                                            | '-1 400,00' | '-1 166,66'         | ''             |
//		| 'Товар с характеристиками' | '-6,000'                                                            | '-1 400,00' | '-1 166,66'         | ''             |
//		| 'S/Красный'                | '-1,000'                                                            | '-100,00'   | '-83,33'            | ''             |
//		| 'XS/Черный'                | '-2,000'                                                            | '-400,00'   | '-333,33'           | ''             |
//		| 'M/Черный'                 | '-3,000'                                                            | '-900,00'   | '-750,00'           | ''             |
//		| 'Итого'                    | '-6,000'                                                            | '-1 400,00' | '-1 166,66'         | ''             |

