#language: ru

Функционал: После того как начинается оотслеживание тикета имитируется нажатие клавиш мыши и клавиатуры, после отправки скриншота проверяется его наличие в ежедневном отчете
  Предыстория: Создание скриншота
    Допустим Запускаю клиентское приложение
    И Выбираю первую в списке задачу
    И Пишу "комментарий" и начинаю отслеживание
    И Кликаю мышью "13" раз и нажимаю клавишу 1 "15" раз
    И Имитирую системное время "18:10"
    И Жду "11" секунд

  Сценарий: Проверка сохранения скриншота
    Допустим Запускаю серверное приложение
    И Перехожу во вкладку "Tracker"
    Если Открою отчет с ссылкой "Ежедневный отчет" пользователя "tester"
    Тогда Увижу скриншот юзера "tester" с количеством кликаний мышью "13" и нажатием клавиатуры "15" раз