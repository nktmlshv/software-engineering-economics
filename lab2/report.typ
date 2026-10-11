#show figure.where(kind: image): set figure(supplement: [Рис.])
#show figure.where(kind: table): set figure(supplement: [Табл.])
#show figure.where(kind: table): set figure.caption(position: top)
#set text(14pt, lang: "ru")
#show raw: set text(size: 9pt)
#show raw.where(block: true): block.with(fill: luma(245), inset: 8pt, radius: 3pt, width: 100%)
#show figure: set block(breakable: true)

#let placeholder(body) = rect(
  width: 100%,
  height: 6cm,
  stroke: (dash: "dashed"),
)[#align(center + horizon)[#body]]

#let layer(title, body) = rect(width: 100%, inset: 8pt, stroke: 0.8pt, radius: 3pt)[
  #align(center)[*#title* \ #body]
]

#let down-arrow = align(center)[#text(16pt)[↓]]

#align(center, text(16pt)[
  *Федеральное государственное автономное образовательное учреждение высшего образования «Национальный исследовательский университет ИТМО»*
  \
  \
  *Факультет программной инженерии и компьютерной техники*
])

#align(center + horizon, text(16pt)[
  Дисциплина \ "Экономика программной инженерии"
])

#v(2cm)

#align(center + horizon, text(16pt)[
  *Лабораторная работа № 2* \
])

#align(center + horizon, text(16pt)[
  Вариант: #link("https://obsidian.md")[obsidian.md] & Scrum
])

#v(4cm)

#align(left, text(16pt)[
  #table(
    columns: 2,
    stroke: none,
    align: left,
    table.header([*Выполнили:*], [Малышев Никита Александрович,]),
    [],
    [Дёмин Артём Витальевич],
    [*Группа:*],
    [P3412],
    [*Проверила:*],
    [Харитонова Анастасия Евгеньевна])
])

#align(center + bottom, text(16pt)[
  Санкт-Петербург\
  #datetime.today().year() год
])

#pagebreak()

#set heading(numbering: "1.")
#outline(
  title: [Содержание]
)

#set page(numbering: "1")

#pagebreak()

#set par(justify: true)

= Задание

Зарегистрироваться для использования бесплатной облачной версии ПО YouTrack для управления своим программным проектом:

+ Сформировать проектную команды из набора специалистов разного профиля.
+ Подготовить ресурсный план загруженности команды по этапам реализации проекта.
+ Создать учётные записи для всей своей проектной команды.
+ Интегрировать YouTrack с  git репозиторием.
+ Настроить интеграцию с электронной почтой.
+ Создать проект с заданным в варианте профилем (Scrum / Kanban).
+ Настроить столбцы доски для своего проекта.
+ Создать план работ над проектом и зафиксировать его в YouTrack (создать спринты, релизы и задачи, а также необходимые для работы ветви в репозитории).
+ Симулировать процесс разработки проекта, постепенно закрывая "выполненные" задачи и открывая новые.
+ После завершения снять метрики проекта и предоставить отчет, содержащий описания 
    - команды и ресурсного плана,
    - процесса конфигурации и настройки,
    - выбранного workflow и
    - сформированные с помощью YouTrack отчеты, отражающие статистику работы над проектом. Обязательно должны быть приведены: отчет по исполнителям, burndown-диаграмма, отчет по времени, диаграмма Ганта.

= Выполнение
== Создание учетных записей для проектной команды

#figure(
  image("img/obsidian_team.png", width: 80%), 
  caption: [Проектная команда]
)

== Интеграция с Git-репозиторием

#figure(
  image("img/github_integration.png", width: 100%), 
  caption: [Интеграция с GitHub]
)

== Интеграция с электронной почтой

#figure(
  image("img/email_integration.png", width: 100%), 
  caption: [Интеграция с электронной почтой]
)

#figure(
  image("img/email_rule.png", width: 100%), 
  caption: [Почтовое правило]
)

#figure(
  image("img/emails.png", width: 100%), 
  caption: [Полученные на YouTrack-почту письма]
)

= Создание Scrum-проекта

#figure(
  image("img/created_project.png", width: 80%), 
  caption: [Созданный проект]
)

= Настройка столбцов доски для проекта

Столбцы доски:
- Backlog (Бэклог)
- To Do (К выполнению)
- In Progress (В работе)
- Code Review (Ревью кода)
- Testing (Тестирование)
- Done (Выполнено)

#figure(
  image("img/columns_setting.png", width: 80%), 
  caption: [Настройка столбцов]
)

#figure(
  image("img/project_columns.png", width: 100%), 
  caption: [Столбцы доски]
)

= Создание плана работ над проектом и фиксация в YouTrack