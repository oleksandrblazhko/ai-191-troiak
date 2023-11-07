1. Створіть у БД структури даних, необхідні для роботи повноважного керування доступом.

![1](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/a7016cbf-a931-4c5c-b35a-5afa5b2ec57a)

![2(a)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/cda61319-d0ca-4a4d-9db7-6c2c0ba54f32)

2. Додайте до таблиці з даними стовпчик, який буде зберігати мітки конфіденційності.
Визначте для кожного рядка таблиці мітки конфіденційності (для кожного рядка своя мітка).

![2(0)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/0125e267-e1c5-4f3d-a736-ec6c05259a29)


3. Визначте для користувача його рівень доступу.

![3(a)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/6b6237a6-e676-4efe-be42-28c44baa53cc)

![3(b)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/a0ceeb5e-b0ef-4f22-b6cf-3923528338c7)

4. Створіть нову схему даних, назва якої свіп.

![4](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/35038c08-a96d-45f6-8ff2-2489a2491436)

5. Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка
забезпечує SELECT-правила повноважного керування доступом для користувача.

![5(a)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/22315ccd-c8ac-4739-951b-b9f07d5d67cf)

6. Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача.

INSERT:

![6(a)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/dcbd59f4-f63e-4243-bff1-92c3691b0468)

UPDATE:

![6(b)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/7944c38e-687f-4ff4-bd06-6d8cbe7231f5)

DELETE:

![6(c)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/1cd811e2-35eb-44fa-8ac5-2540e438aef1)
  
7. Перевірте роботу механізму повноважного керування, виконавши операції SELECT,
INSERT, UPDATE, DELETE

SELECT:

![5(b)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/19e33d57-3409-41ce-adc3-d243448fb261)

INSERT:

![7(a)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/28c013c0-8222-4688-8b60-8f7511feece8)

UPDATE:

![7(b)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/c6387266-7ac4-441b-888a-13488a0d5d2d)

DELETE:

![7(c)](https://github.com/oleksandrblazhko/ai-191-troiak/assets/95746995/c77f2845-8659-49da-b661-3ab923dec9f8)

