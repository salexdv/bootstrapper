
&Табакерка
&Пластилин
Перем КомандаВраннер;

&Пластилин Перем Поделка;

&Желудь
Процедура ПриСозданииОбъекта()
	
КонецПроцедуры

Функция ЗапуститьКонфигуратор() Экспорт

	Команда = КомандаВраннер.Достать();
	
	Возврат Команда.ДобавитьПараметр("designer")
			.ДобавитьПараметр("--no-wait")
			.ВыключитьИБКМД()
			.Исполнить();

КонецФункции