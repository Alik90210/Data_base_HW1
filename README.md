# Data_base_HW1
В ходе проектирования базы данных удалось преобразовать БД до 2_НФ, т.к. БД находится в 1-НФ (значения в ячейках атомарны, отсутвуют списки и массивы в ячейках, для каждого столбца определен тип данных, нет дублирующих строк) присутвует связь между неключевыми столбцами от которой весь трудоемко избавится. Но в то же время все данные опредляются однозначно с помощью ключей transaction_id, customer_id, prod_unique_id. Ключ  prod_unique_id составной, формируемый из столбцов product_id, product_line,  product_size, product_class, brand таблицы Product. 
