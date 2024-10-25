&Пластилин Перем ПользовательскийИнтерфейс;
&Пластилин Перем Настройки;

&Опция(Имя = "p port", Описание = "Порт для запуска сервера")
&ТЧисло
&ПоУмолчанию(8080)
Перем Порт;

&Опция(Имя = "o open", Описание = "Открыть в браузере")
&ТБулево
Перем Открыть;

&КомандаПриложения(Имя = "gui", Описание = "Запустить пользовательский интерфейс")
Процедура ПриСозданииОбъекта()

КонецПроцедуры

&ВыполнениеКоманды
Процедура Запустить() Экспорт

	ФоновыеЗадания.Выполнить(ЭтотОбъект, "ОткрытьВБраузере");

	Настройки.Порт = Порт;
	ПользовательскийИнтерфейс.Запустить();
	
КонецПроцедуры

Процедура ОткрытьВБраузере() Экспорт

	Приостановить(500);
	Если Открыть = Истина Тогда
		Сообщить("Осуществляется переход в браузер");
		ЗапуститьПриложение("http://localhost:" + Формат(Порт, "ЧГ=0"));
	КонецЕсли;
	
КонецПроцедуры