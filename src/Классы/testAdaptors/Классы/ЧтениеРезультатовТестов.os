
Перем ТаблицаРезультатов;

&Пластилин(Значение = "ПарсерТестов", Тип = "Массив")
Перем ПарсерыТестов;

&Желудь
Процедура ПриСозданииОбъекта(&Пластилин ТаблицаРезультатовТестов)
	
	ТаблицаРезультатов = ТаблицаРезультатовТестов

КонецПроцедуры

Функция ТаблицаРезультатов() Экспорт
	ОбновитьТаблицуРезультатов();
	Возврат ТаблицаРезультатов;
КонецФункции

Процедура ОбновитьТаблицуРезультатов()

	ТаблицаРезультатов.Очистить();
	
	Для каждого Парсер Из ПарсерыТестов Цикл
		Для Каждого СтрокаТеста из Парсер.ТабилцаРезультатов() Цикл
			ЗаполнитьЗначенияСвойств(ТаблицаРезультатов.Добавить(), СтрокаТеста);
		КонецЦикла;
	КонецЦикла;

	ТаблицаРезультатов.Сортировать("Дата");
КонецПроцедуры