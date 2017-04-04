-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 04 2017 г., 09:41
-- Версия сервера: 5.7.14
-- Версия PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `habr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_04_062425_create_posts_table', 1),
(2, '2017_04_04_062448_create_tags_table', 1),
(3, '2017_04_04_062852_create_post_tags_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `habr_id` int(11) NOT NULL,
  `post` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `unix_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `habr_id`, `post`, `unix_time`) VALUES
(5, 325558, '<div class="post post_full" id="post_325558">\r\n  <div class="post__header">\r\n    <span class="post__time_published">\r\n       вчера в 16:09 \r\n    </span>\r\n\r\n    <h1 class="post__title">\r\n      <span class="post__title-text">«Облакотека» выбрала серверы Lenovo в качестве платформы для новейших сервисов IaaS</span>\r\n      \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    </h1>\r\n\r\n      <div class="hubs">\r\n          <a href="https://habrahabr.ru/hub/s_admin/" class="hub " title="Вы не подписаны на этот хаб" onclick="if (typeof ga === \'function\') { ga(\'send\', \'event\', \'hub\', \'post page\', \'Серверное администрирование\'); }">Серверное администрирование</a><span class="profiled_hub" title="Профильный хаб">*</span>, \r\n          <a href="https://habrahabr.ru/hub/it-infrastructure/" class="hub " title="Вы не подписаны на этот хаб" onclick="if (typeof ga === \'function\') { ga(\'send\', \'event\', \'hub\', \'post page\', \'IT-инфраструктура\'); }">IT-инфраструктура</a><span class="profiled_hub" title="Профильный хаб">*</span>, \r\n          <a href="https://habrahabr.ru/company/lenovo/" class="hub " title="Вы не подписаны на этот хаб" onclick="if (typeof ga === \'function\') { ga(\'send\', \'event\', \'hub\', \'post page\', \'Блог компании Lenovo\'); }">Блог компании Lenovo</a>\r\n      </div>\r\n  </div>\r\n\r\n  <div class="post__body post__body_full">\r\n    <div class="content html_format">В декабре 2016 года компания «<a href="http://oblakoteka.ru/">Облакотека</a>», входящая в группу компаний МОНТ и специализирующаяся на организации и размещении частных облаков и ИТ-инфраструктур клиентов на собственной платформе и на платформе Windows Azure от Microsoft, объявила о запуске в России IaaS-сервиса «Виртуальная инфраструктура на Windows Server 2016».<br>\r\n<br>\r\n<a href="https://habrahabr.ru/company/lenovo/blog/325558/"><div style="text-align:center;"><img src="https://habrastorage.org/getpro/habr/post_images/ba5/5c0/76b/ba55c076bbf4b059ec0df115962c5dfd.png"></div></a><a name="habracut"></a><br>\r\nСтоит отметить, что в компании с 2012 года развернута и эксплуатируется в коммерческом режиме IaaS-платформа на базе Microsoft Hyper-V 2012 R2 — два кластера (по одному в каждом ЦОД) с резервированием вычислительных узлов в режиме N+2.<br>\r\n<br>\r\n<div style="text-align:center;"><img src="https://habrastorage.org/getpro/habr/post_images/c28/641/db5/c28641db5644dbee32f87b0f6f4c6e8e.png"></div><br>\r\nОсновой аппаратной составляющей нового сервиса IaaS на платформе Windows Server 2016 стали серверы Lenovo x3650 M5 и сетевое оборудование Mellanox.<br>\r\n<br>\r\nВысокопроизводительное серверное оборудование Lenovo было специально протестировано и подготовлено для использования совместно с программной платформой Windows Server 2016. Для обеспечения высокой производительности развернута площадка на гиперконвергентной среде с флэш-массивом на базе технологии Storage Space Direct, позволяющем свести к минимуму задержки при работе с хранилищем.<br>\r\n<br>\r\nЭто одна из первых в России реализаций IaaS-сервиса на новейшей платформе виртуализации Microsoft Windows Server 2016. Сервис предоставляется в рамках инициативы Microsoft COSN Russia из дата-центров в России и дает уникальные возможности обеспечения безопасности и производительности виртуальных ресурсов. Управление им осуществляется через привычный интерфейс Windows Azure Pack, знакомый пользователям Microsoft Azure.<br>\r\n<br>\r\n<div style="text-align:center;"><img src="https://habrastorage.org/getpro/habr/post_images/196/ad4/08b/196ad408bc01dbe8666b35f16ce2c743.png"></div><br>\r\n<i><font color="#999999">Гиперконвергентная платформа: кластер серверов для размещения виртуальных машин.</font></i><br>\r\n<br>\r\nВ частности, технология Shielded VMs обеспечивает надежную защиту данных виртуальных машин, в том числе от администраторов провайдера. Технология контейнеров значительно упрощает управление жизненным циклом ПО для разработчиков. Шаблоны виртуальных машин и Nano Server сокращают затраты, позволяют разместить множество ролей ВМ на минимальном количестве ресурсов.<br>\r\n<br>\r\nНовая платформа имеет также встроенный сетевой балансировщик нагрузки, дает возможность динамически изменять емкость выделенной ВМ оперативной памяти и хранилища, задействованные ею вычислительные мощности, предлагает множество других инструментов. Теперь это полноценный сервис, включающий в себя как платформу виртуализации Windows Server 2016, так и возможности Windows Server 2016 на гостевых виртуальных машинах.<br>\r\n<br>\r\n<img src="https://habrastorage.org/getpro/habr/post_images/c0e/c30/d98/c0ec30d983bc7e38930bb971ab68f886.png"><br>\r\n<br>\r\nНовые энергоэффективные серверы<a href="http://www.lenovo-parts.com/catalog-lenovo/servery-lenovo-system-x3650-m5-rack/"> Lenovo System x3650 M5</a> в корпусе 2U представляют собой производительные, масштабируемые и компактные платформы, построенные на 8-ядерных процессорах AMD и Intel, имеют оперативную память емкостью 768 Гбайт и используют твердотельные накопители SSD.<br>\r\n<br>\r\nОсобенности этой системы: диски и блоки питания с «горячей» заменой, различные варианты дисковой корзины, 9 слотов PCIe 3.0, возможность расширения функций RAID-контроллера.<br>\r\n<br>\r\nДанные серверы востребованы в тех областях, где необходимо выполнение облачных приложений, производительных вычислений, доставки медиаданных и других задач. Серверы Lenovo System x3650 M5 рассчитаны на высокие рабочие нагрузки в режиме 24/7, нередко применяются для предоставления услуг хостинга, используются в качестве платформы виртуализации, серверов терминалов, распределенных и высокопроизводительных вычислений, серверов баз данных и приложений.<br>\r\n<br>\r\nСерверы поддерживают централизованное управление ресурсами, обеспечивают надежное шифрование и защиту данных. Инструменты диагностики позволяет быстро находить и исправлять ошибки, а горячая замена вентиляторов и накопителей помогает при необходимости оперативно провести ремонт. Сетевая инфраструктура построена на сетевых адаптерах Mellanox ConnectX-4 Lx Dual Port и коммутаторах SN2100 (с портами 100GbE).<br>\r\n<br>\r\nСетевой контроллер ConnectX-4 Lx EN с поддержкой коммутационных решений для Ethernet с пропускной способностью 1/10/25/40/50 Гбит/с спроектирован для решения задач виртуализованных инфраструктур и отличается наивысшей в своем классе производительностью для различных приложений и рынков. В этих адаптерах настоящая аппаратная изоляция ввода-вывода сочетается с масштабируемостью и эффективностью, что делает их экономичным решением для облачных инфраструктур, баз данных и платформ хранения данных.<br>\r\n<br>\r\n<div style="text-align:center;"><img src="https://habrastorage.org/getpro/habr/post_images/6c1/c55/070/6c1c55070b336d811a8ffa22eb3f1aba.png"></div><br>\r\nConnectX-4 Lx EN поддерживает скорости 1, 10, 25, 40 и 50 GbE, обеспечивает задержку менее 1 микросекунды и скорость передачи сообщений 75 млн пакетов в секунду. Они содержат аппаратную поддержку RDMA over Converged Ethernet, механизмов разгрузки протоколов Ethernet без контроля состояния, оверлейных сетей и технологии GPUDirect.<br>\r\n<br>\r\nМы попросили представителей «Облакотеки» рассказать о развертывании данных и об особенностях реализации проекта, позволившего предложить клиентам и партнерам самые современные технологии.<br>\r\n<br>\r\n<b>«Облакотека» — пока что единственный российский облачный провайдер, предлагающий IaaS-сервисы на базе Windows Server 2016?</b><br>\r\n <br>\r\nДа, это так. На момент запуска сервиса в России не было ни одного провайдера, построившего сервис IaaS на платформе Windows Server 2016. Некоторые лишь поддерживали эту ОС в качестве гостевой на виртуальных машинах. По нашим данным, мы по-прежнему единственный такой провайдер, причем уже более полугода.<br>\r\n<b> <br>\r\nПочему в качестве платформы виртуализации были выбраны именно серверы Lenovo, в какой конфигурации? Какими средствами удалось добиться высокой производительности сервиса?</b><br>\r\n <br>\r\nИдея создания сервиса возникла в августе 2016 года совместно с российским представительством Microsoft. Важнейшим требованием было наличие у вендора аппаратного комплекса, протестированного на совместимость с Windows Server 2016 в части развертывания гиперконвергентного кластера Storage Space Direct и поддержки Shielded VMs.<br>\r\n <br>\r\nКроме того, оборудование должно было быть поставлено в очень сжатые сроки поставки, по сути – со склада в Москве. Компания Lenovo отвечала всем этим требованиям, она уже имела опыт в развертывания подобного решения на своей платформе и готова была оказать нам необходимое содействие в выборе и настройке конфигурации серверов под данную задачу.<br>\r\n <br>\r\nСовместно с Microsoft мы определили требования по конфигурации. В качестве подсистемы хранения данных было решено использовать только флэш-накопители и задействовать накопители NVMe для кеширования. Такой подход позволил добиться отличных показателей в производительности виртуального дискового массива.<br>\r\n <br>\r\nАрхитектуру решения разрабатывали специалисты «Облакотеки» совместно с российским представительством Microsoft. В проработке деталей проекта изучались рекомендации Microsoft и решения от Lenovo.<br>\r\n <br>\r\n<b>Какая роль отводится сетевой инфраструктуре? Чем был обусловлен выбор оборудования компании Mellanox? Какова пропускная способность сети? Какими средствами реализована SDN?</b><br>\r\n <br>\r\nДля любого гиперконвергентного решения сетевая инфраструктура является важнейшим элементом. Все управление, обмен данными, восстановление после сбоя осуществляется через сеть и поэтому требования к качеству ее работы очень высокие. В случае с S2D (<a href="https://special.habrahabr.ru/microsoft/hybridlaunch/article/748091/">Storage Spaces Direct</a>) требуется поддержка протокола SMB3. Наиболее полно она реализована в оборудовании Mellanox.<br>\r\n <br>\r\nВыбранное решение позволило нам построить высокодоступную сеть передачи данных со скоростью до 50 Гбит/с на узел. Программно-конфигурируемая сеть (<a href="https://www.microsoft.com/en-us/cloud-platform/software-defined-networking">Software-Defined Networking</a>, SDN) строится средствами операционной системы Windows Server 2016: она предусматривает роли контроллера SDN, балансировщика и остальные сопутствующие роли.<br>\r\n <br>\r\n<b>На базе высокопроизводительного оборудования Lenovo и Mellanox под управлением Windows Server 2016 реализована гиперконвергентная среда с SDNv2. В чем именно заключается гиперконвергентность платформы? В чем отличия SDN «нового поколения»?</b><br>\r\n <br>\r\nГиперконвергентная архитектура объединяет вычислительные ресурсы, сетевые ресурсы и ресурсы хранения в один уровень. Windows Server 2016 позволяет на одном и том же оборудовании развернуть службы управления хранилищем (SDS), сетью (SDN) и гипервизором (Hyper-V) в отказоустойчивом режиме. В отличии от предыдущей версии SDN, в новой добавились важные службы, например, балансировщик нагрузки — LoadBalancer (SLB).<br>\r\n<br>\r\nУ гиперконвергентных систем нет единой точки отказа, существуют широкие возможности горизонтального масштабирования: если требуется нарастить ресурсы и производительность кластера для работы дополнительных ВМ, а также увеличить емкость и производительность хранилища, то достаточно просто добавить в кластер новые узлы. Вместо SAN используется обычная локальная сеть (SDN с RDMA). Поэтому нет необходимости покупать дорогие решения FC, FCoE или конфигурировать iSCSI. Благодаря новым функциям SDS и SDN с помощью Windows Server 2016 можно создавать гиперконвергентные решения для облака.<br>\r\n<br>\r\n<b>Расскажите о подсистеме хранения серверов с N2215 SAS/SATA HBA и пулом хранения данных, платах PCI NVMe, SATA SSD. Как она построена, используется ли тиринг?</b><br>\r\n<br>\r\nСистема хранения Storage Spaces Direct (S2D) построена на основе локальных накопителей с SSD NVMe для кэширования. Для S2D важно выполнять требования по аппаратной совместимости. Так для подключения дисков пула нельзя использовать RAID контроллеры (даже в режиме HBA). Поэтому применяются только совместимые HBA.<br>\r\n<br>\r\nПоскольку у нас в пуле – только накопители SSD, то тиринг смысла не имеет. Согласно рекомендациям Microsoft для кеширования мы используем PCI-накопители с интерфейсом NVMe. Они заметно ускоряют операции записи по сравнению с обычными SSD.<br>\r\n <br>\r\n<b>Для обеспечения высокой производительности и с учетом всех особенностей новой операционной системы развернута площадка на гиперконвергентной среде с флэш-массивом на базе технологии Storage Space Direct. Расскажите о данной составляющей проекта.</b><br>\r\n <br>\r\nСегодня все большую популярность получает технология SDS (Software Defined Storage), программно-конфигурируемые хранилища. Множество вендоров предлагают собственные решения SDS (VMWare VSAN, HPE/Nutanix, Ceph и т.п.). В Windows Server 2016 корпорация Microsoft предложила свою версию SDS – Storage Space Direct (S2D). Она позволяет на обычных серверах с локальными накопителями разного типа построить высокодоступную, производительную систему хранения.<br>\r\n <br>\r\nПри этом можно использовать технологии классических СХД старших моделей – кеширование, тиринг, высокую доступность на уровне стоек и ЦОД. В случае гиперконвергентной конфигурации, серверы «видят» СХД как классический для Windows кластерный диск.<br>\r\n <br>\r\nЕсли необходимо предоставить доступ к хранилищу внешним потребителям, то можно использовать классические технологии – iSCSI, SMB, NFS. На уровне виртуального диска можно контролировать параметры IOPS, определять верхние и нижние границы по количеству IOPS, нормализованных под нужный размер блока данных.<br>\r\n <br>\r\n<b>Какие именно возможности Windows Server 2016 уже востребованы или могут быть востребованы заказчиками? Как вы оцениваете перспективы защиты конфиденциальных данных заказчика от доступа со стороны сотрудников сервис-провайдера (Shielded VMs)? Какие задействованы новые технологии для более быстрого развертывания виртуальных машин и приложений?</b><br>\r\n <br>\r\nWindows Server 2016 содержит много новаций. Новейшие встроенные компоненты защиты серверов в Microsoft Windows Server 2016 обеспечивают предотвращение атак и обнаружение подозрительных действий. Вопрос безопасности и защищенности данных для ряда пользователей очень важен. Причем угроза рассматривается не только внешняя, но и внутренняя, со стороны сервис провайдера. Теперь можно ограничить доступ к данным внутри виртуальной машины администраторам провайдера. Это поможет данной категории клиентов принять решение о переходе в облака. Shielded VMs — самый безопасный способ защиты ВМ арендаторов от злоумышленников с правами администратора.<br>\r\n<br>\r\nПомимо Shielded VMs, наши пользователи-разработчики могут использовать технологию контейнеров. На мощностях с графическими ускорителями теперь можно комфортно работать с программами САПР, управления анимацией и т.п. без использования дополнительного ПО третьих фирм. Для администраторов появился Nano Server — самый безопасный режим выполнения Windows Server 2016, а также «встроенный» балансировщик Load Balancer.<br>\r\n <br>\r\n<b>Расскажите немного о ходе реализации данного проекта. Как все это создавалось, какие были трудности, что удалось решить, а что отложили в задачи «на перспективу»?</b><br>\r\n <br>\r\nСамая главная проблема – скудность документации и средств диагностики. Большую часть времени мы потратили на устранение неисправностей, вызванных, казалось бы, незначительными ошибками в конфигурации драйвера сетевого адаптера. Мы очень плотно работали с командой поддержки Lenovo для выполнения серверами кластера требований службы Host Guardian Services (она используется Shielded VMs). А для запуска всех возможностей SDN активно общались со специалистами Microsoft.<br>\r\n <br>\r\nСейчас с каждым днем объем доступной информации растет, документация улучшается. Возьмись мы за проект сегодня – было бы проще.<br>\r\n <br>\r\n<b>До июня стенд работает в тестовом режиме. Каковы дальнейшие планы? Планируется переход с Azure Pack на Azure Stack? Что можно ожидать в этой связи?</b><br>\r\n <br>\r\nЗадача ближайшей перспективы – перевод основной инфраструктуры на Windows 2016 и дальнейшее развитие сервиса. Полноценный стенд с нагрузкой, близкой к реальной, — это отличная возможность пройти этапы обучения сотрудников и «детских болезней» технологии без ущерба для коммерческих клиентов.<br>\r\n <br>\r\n Несмотря на сходство названий, Azure Pack и Azure Stack — совершенно разные платформы с принципиально разным подходом. В Azure Stack существенно больше сервисов, но возможностей контроля, кастомизации, управления и обеспечения качества со стороны провайдера существенно меньше. К тому же у Azure Stack принципиально новая модель монетизации и она ещё окончательно не определена. В общем, мы в настоящий момент считаем, что они не замещают друг друга, а скорее рассчитаны на разную целевую аудиторию.<br>\r\n <br>\r\n<b>Как вы оцениваете результаты проекта?</b><br>\r\n<br>\r\nМы всегда стараемся максимально оперативно предложить нашим клиентам и партнерам самые современные технологии, чтобы дать им конкурентные технологические преимущества. Гиперконвергентные решения на базе Windows Server 2016 и серверного оборудования Lenovo — простой и экономичный способ внедрения облака любого масштаба и развертывания современных облачных сервисов.</div>\r\n    \r\n    <div class="post__tags">\r\n  <ul class="tags icon_tag">\r\n      <li><a href="https://habrahabr.ru/search/?q=%5B%D0%9E%D0%B1%D0%BB%D0%B0%D0%BA%D0%BE%D1%82%D0%B5%D0%BA%D0%B0%5D&amp;target_type=posts" rel="tag">Облакотека</a>, </li>\r\n      <li><a href="https://habrahabr.ru/search/?q=%5BIaaS%5D&amp;target_type=posts" rel="tag">IaaS</a>, </li>\r\n      <li><a href="https://habrahabr.ru/search/?q=%5BLenovo%5D&amp;target_type=posts" rel="tag">Lenovo</a></li>\r\n  </ul>\r\n</div>\r\n  </div>\r\n</div>', 1491235740);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_habr_id_index` (`habr_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
