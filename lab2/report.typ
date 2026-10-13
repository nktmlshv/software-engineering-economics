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

= Создание хоста в YouTrack Cloud

Создали хост в YouTrack Cloud: https://obsidian.youtrack.cloud.

= Создание учетных записей для проектной команды

#figure(
  image("img/obsidian_team.png", width: 80%), 
  caption: [Проектная команда]
)

= Интеграция с Git-репозиторием

Создали Git-репозиторий и настроили с ним интеграцию: https://github.com/nktmlshv/itmo-see-obsidian.

#figure(
  image("img/github_integration.png", width: 100%), 
  caption: [Интеграция с GitHub]
)

= Интеграция с электронной почтой

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
== Спринты
*Спринт 1 (06.07.2026 - 17.07.2026) - "Старт, планирование и каркас"*

- Цель: зафиксировать требования и оценку, выбрать стек, подготовить репозиторий, CI и CMS.
- Задачи:
    - Сбор и согласование функциональных требований
    - Use-Case модель (38 прецедентов, 7 акторов), расчёт UCP, PF и CONST, план спринтов
    - Выбор стека и архитектуры (Next.js, Node.js, Strapi, PostgreSQL)
    - Репозиторий, ветвление, линтеры и CI
    - Wireframes ключевых страниц
    - Развёртывание Strapi и настройка ролей
    - UC-2 «Навигация по меню и подвалу», UC-3 «Переключение языка»
- Ветка репозитория: sprint/1-start-planning (от develop).

*Спринт 2 (20.07.2026 - 31.07.2026) - "Дизайн-система и информационные страницы"*

- Цель: создать дизайн-систему и макеты, поднять окружения и БД, собрать информационные страницы.
- Задачи:
    - UI-кит и макеты (главная, скачивание и тарифы, аккаунт и оплата, каталог и админ-панель)
    - Окружения dev и stage, схема PostgreSQL и миграции, CD на stage
    - Настройка Strapi: локализация, медиабиблиотека, бэкапы, webhooks
    - Каркас сайта (роутинг, SSR, кэширование) и интеграция с почтовым сервисом
    - UC-1, 9, 10, 14, 15, 16: главная, FAQ по лицензиям, корпоративное обращение, ссылки на справку и сообщество, информация о компании и безопасности, правовые документы
- Ветка репозитория: sprint/2-design-system (от develop).

*Спринт 3 (03.08.2026 - 14.08.2026) - "CMS и админ-панель"*

- Цель: дать редакторам и администраторам управлять контентом, тарифами и ролями без изменения кода.
- Задачи:
    - Настройка форм и действий админ-панели Strapi
    - UC-31 «Вход в админ-панель», UC-36 «Администраторы и роли»
    - UC-26 «Публикация блога и журнала изменений», UC-37 «Редактирование тарифов», UC-38 «Страницы и FAQ», UC-35 «Категории и теги»
    - План тестирования и тестовые данные
- Ветка репозитория: sprint/3-cms-admin (от develop).

*Спринт 4 (17.08.2026 - 28.08.2026) - "Каталог плагинов и тем, блог"*

- Цель: запустить каталог расширений и контентные разделы на данных из CMS.
- Задачи:
    - UC-29 «Поиск и фильтрация в каталоге», UC-30 «Страница расширения»
    - UC-32 «Добавление в каталог», UC-33 «Новая версия расширения», UC-34 «Снятие с публикации»
    - UC-11 «Чтение блога», UC-12 «Журнал изменений»
    - Каркас e2e-тестов
    - Миграция страниц, FAQ и каталога в Strapi
- Ветка репозитория: sprint/4-catalog-blog (от develop).

*Спринт 5 (31.08.2026 - 11.09.2026) - "Скачивание, тарифы и аккаунты"*

- Цель: открыть скачивание и тарифы, запустить регистрацию.
- Задачи:
    - UC-4 «Скачивание для ПК», UC-5 «Мобильное приложение», UC-6 «Web Clipper», UC-27 «Синхронизация релизов»
    - Клиент API хранилища релизов
    - UC-7 «Тарифы», UC-8 «Период оплаты», UC-13 «RSS-лента»
    - UC-17 «Регистрация учётной записи»
    - Миграция блога и журнала изменений, интеграционные тесты аккаунтов и тарифов
- Ветка репозитория: sprint/5-downloads-tariffs-accounts (от develop).

*Спринт 6 (14.09.2026 - 25.09.2026) - "Оформление и оплата заказа"*

- Цель: реализовать путь от входа до оплаты.
- Задачи:
    - UC-18 «Вход и выход», UC-19 «Восстановление пароля», UC-20 «Возврат к оформлению после входа»
    - UC-21 «Подтверждение заказа», UC-22 «Оплата услуги», UC-23 «Результат оплаты»
    - Интеграция с API платёжного провайдера
    - Мониторинг, логи и алерты
    - Регрессионное тестирование
- Ветка репозитория: sprint/6-order-payment (от develop).

*Спринт 7 (28.09.2026 - 09.10.2026) - "Подписки, личный кабинет и релиз"*

- Цель: завершить подписки, пройти комплексное тестирование и выпустить версию 1.0.
- Задачи:
    - UC-24 «Личный кабинет», UC-25 «Управление автопродлением»
    - UC-28 «Обработка уведомлений платёжного провайдера»
    - Комплексное тестирование и исправление дефектов
    - Развёртывание на production и проверка запуска
    - Итоговая отчётность и закрытие проекта
- Ветка репозитория: sprint/7-subscriptions-release (от develop).

#figure(
  image("img/sprints.png", width: 80%), 
  caption: [Спринты]
)

== Релизы
Релизы (Versions):

- Alpha (Запланирована на 28.08.2026) - конец спринта 4, когда готовы CMS, каталог и блог.
- Beta (Запланирована на 11.09.2026) - конец спринта 5, когда добавлены скачивание, тарифы и регистрация.
- Release Candidate 1 (Запланирована на 25.09.2026) - конец спринта 6, когда работает оплата.
- Release Candidate 2 (Запланирована на 06.10.2026) - закончены подписки и вебхуки, но ещё идёт исправление дефектов.
- Production v1.0 (Запланирована на 09.10.2026) - конец спринта 7.

== Ветки в Git-репозитории
=== Принцип создания веток
```
main                                  только выпущенные версии
 └─ develop                           интеграция всей разработки
     ├─ sprint/N-*                    один спринт, 7 штук
     │    └─ feature|design|chore|docs/*   одна единица работы
     └─ release/*                     подготовка релиза, 5 штук
```
=== Список веток
```
  chore/cms-localization-media-backup-webhooks
  chore/content-migration-blog-changelog
  chore/content-migration-pages-catalog
  chore/e2e-skeleton
  chore/environments-and-db
  chore/final-testing
  chore/monitoring-and-alerts
  chore/production-deploy
  chore/regression-tests
  chore/repo-linters-ci
  chore/strapi-setup
  chore/test-plan
  design/ui-kit-and-mockups
  design/wireframes
  develop
  docs/requirements-and-ucp
  feature/admin-panel-customization
  feature/mail-integration
  feature/payment-provider-client
  feature/release-storage-client
  feature/site-shell-ssr
  feature/uc-01-home
  feature/uc-02-navigation
  feature/uc-03-language-switch
  feature/uc-04-desktop-download
  feature/uc-05-mobile-install
  feature/uc-06-web-clipper
  feature/uc-07-pricing-plans
  feature/uc-08-billing-period
  feature/uc-09-license-faq
  feature/uc-10-corporate-request
  feature/uc-11-blog
  feature/uc-12-changelog
  feature/uc-13-rss
  feature/uc-14-help-community-links
  feature/uc-15-company-security
  feature/uc-16-legal-documents
  feature/uc-17-registration
  feature/uc-18-login-logout
  feature/uc-19-password-reset
  feature/uc-20-return-to-checkout
  feature/uc-21-order-confirmation
  feature/uc-22-payment
  feature/uc-23-payment-result
  feature/uc-24-account-dashboard
  feature/uc-25-auto-renewal
  feature/uc-26-publish-blog-changelog
  feature/uc-27-release-sync
  feature/uc-28-payment-webhooks
  feature/uc-29-catalog-search
  feature/uc-30-extension-page
  feature/uc-31-admin-login
  feature/uc-32-add-extension
  feature/uc-33-publish-extension-version
  feature/uc-34-unpublish-extension
  feature/uc-35-categories-tags
  feature/uc-36-admins-roles
  feature/uc-37-edit-pricing
  feature/uc-38-edit-pages-faq
* main
  release/1.0
  release/alpha
  release/beta
  release/rc1
  release/rc2
  sprint/1-start-planning
  sprint/2-design-system
  sprint/3-cms-admin
  sprint/4-catalog-blog
  sprint/5-downloads-tariffs-accounts
  sprint/6-order-payment
  sprint/7-subscriptions-release
```

= Симуляция процесса разработки проекта

Задачи были созданы, распределены и обновлены.

#figure(
  image("img/obsidian_tasks.png", width: 100%), 
  caption: [Задачи в YouTrack]
)

#figure(
  image("img/sprint.png", width: 100%), 
  caption: [Один из спринтов в YouTrack]
)

= Метрики проекта
== Отчёт по исполнителям
*Исполнители:*
- Nikita Malyshev, `malyshev.2005n@gmail.com` – Project Owner / Team Leader / Tech Lead
- Artem Demin, `demin.artem.private@gmail.com` – Backend Developer
- Mark Scherbatsky, `mark.scherbatsky@gmail.com` – Frontend Developer / UX/UI Designer
- Nik Baby, `malyshev1995@icloud.com` – Fullstack Developer / QA Engineer
- Niki Vzroslov, `malyshev.n.a@yandex.ru` – DevOps Engineer
- Nikusha Malyshenko, `malyshev.nikita.job@gmail.com` – System Administrator

#figure(
  image("img/issues_per_assignee.png", width: 100%), 
  caption: [Отчёт по исполнителям]
)

== Burndown-диаграмма

#figure(
  image("img/burndown.png", width: 100%), 
  caption: [Burndown-диаграмма]
)

== Отчёт по времени

#figure(
  image("img/time_report.png", width: 80%), 
  caption: [Отчёт по времени]
)

== Диаграмма Ганта

#figure(
  image("img/gantt.png", width: 100%), 
  caption: [Диаграмма Ганта]
)

= Вывод

В ходе лабораторной работы был освоен процесс организации управления программным проектом в YouTrack с использованием методологии Scrum. Создана команда из шести участников с распределением ролей и зон ответственности. Сформирован план разработки из семи спринтов продолжительностью около двух недель каждый.

Для организации процесса разработки настроены столбцы Scrum-доски. Созданы задачи по функциональным требованиям проекта, подготовлена структура Git-веток для спринтов, отдельных функций и релизов. Также настроены интеграции с GitHub и электронной почтой.

В ходе симуляции разработки задачи распределялись между исполнителями, оценивались и переводились между этапами выполнения. Для анализа проекта сформированы отчёт по исполнителям, Burndown-диаграмма, отчёт по трудозатратам и диаграмма Ганта. Эти инструменты позволяют оценивать распределение нагрузки, затраченное время, динамику выполнения работ и соблюдение сроков.

В результате получены практические навыки настройки YouTrack, планирования спринтов, организации командной работы и контроля хода разработки программного продукта с использованием Scrum.
