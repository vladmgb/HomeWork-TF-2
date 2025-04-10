# Домашнее задание к занятию «Основы Terraform. Yandex Cloud»

## Задание 1

Инициализировал проект, исправил ошибки, выполнил код.
+ Ошибки в строке: platform_id = "standart-v4". Во-первых, правильно будет standard, во-вторых, v4 не существует. ([ссылка](https://cloud.yandex.ru/docs/compute/concepts/vm-platforms)).
+ ВМ с одним ядром нельзя создать, минимуим надо 2. ([ссылка](https://cloud.yandex.ru/docs/compute/concepts/performance-levels))

Скриншот после выполнения terraform apply:

![1](https://github.com/user-attachments/assets/7354b509-9fb0-4570-b6ae-74684e55c246)

скриншот ЛК Yandex Cloud с созданной ВМ, где видно внешний ip-адрес:

![2](https://github.com/user-attachments/assets/5f4237bd-ade5-4c53-88af-d9ba2f9ed91f)

Скриншот консоли, curl должен отобразить тот же внешний ip-адрес:

![3](https://github.com/user-attachments/assets/06b98541-e0a9-478f-8b51-aa2b328d4e3b)

Ответы на вопросы:
+ Параметр `preemptible = true` следует указывать, если нужно сделать прерываемую ВМ. Это ВМ, которые могут быть принудительно остановлены в любой момент. Это происходит, если с момента запуска прошло 24 часа или произошла нехватка ресурсов. ВМ такого типа стоят дешевле.
+ Параметр `core_fraction=5` задает уровень производительности vCPU в процентах. Чем меньше уровень, тем дешевле.


## Задание 2
Объявил переменные в variables.tf. Внес изменения в main.tf.
Выполнил `terraform plan` - изменений нет.

![4](https://github.com/user-attachments/assets/504c7c18-5de1-411d-afcc-d0ac86956401)

## Задание 3

Внес изменения 

![7](https://github.com/user-attachments/assets/f025746e-63a5-4b80-b2f9-ec8bd3e45734)


Применил изменения.

![5](https://github.com/user-attachments/assets/b27490e8-4b10-485c-ac61-0ae944e41036)


Еще одна ВМ создана в другой зоне.
![6](https://github.com/user-attachments/assets/6d214d27-7356-4bb7-b533-69a5f7f2066e)



## Задание 4

Собрал данные в map:

![8](https://github.com/user-attachments/assets/a1c669d1-01cb-4750-8dc1-3bff71a10648)

Применил изменения.

`terraform output`

![9](https://github.com/user-attachments/assets/dcbd0d32-e52c-4c0f-8e02-bc5b25ace630)


## Задание 5

Описал имена ВМ с помощью интерполяции.

![10](https://github.com/user-attachments/assets/04eff259-2cb9-4a76-a6e6-8f83c8395b93)

Заменил в main.tf и применил изменения.

![11](https://github.com/user-attachments/assets/4d848bf8-a1b6-464b-8c55-c50dc8909e83)


## Задание 6

Выполнено. Завел переменные, заменил их в main.tf

![12](https://github.com/user-attachments/assets/463a39d4-b647-4739-9131-8532086e2120)

Лишние переменные закомментировал.
Изменений нет.

## Задание 7

![13](https://github.com/user-attachments/assets/7dbbbf50-d290-4d45-87dc-12c1fb85b7ed)

