# finance-planner...

Для запуска:

docker build -t finance-planner:latest .

docker run -d -p 8080:8080 \
  --name finance-planner-app \
  -v finance-planner-db-data:/data \
  finance-planner:latest

http://82.146.40.100/finance-planner/expenses




---------------------------------------------------------------------------


 Finance Planner CI/CD 
 
## Устройство репозитория 
- Код приложения хранится в папке `src`. 
- CI/CD конфигурация находится в `.github/workflows/ci-cd.yml`. 
 
## Развёртывание инфраструктуры 
- Используйте Terraform для создания виртуальной машины. 
- Запустите `terraform init` и `terraform apply`. 
 
## Развёртывание приложения 
- Приложение автоматически разворачивается при каждом пуше в ветки `master`, `develop`, `feature/*`, `hotfix/*`. 
 
## Правила внесения изменений в инфраструктуру 
- Все изменения должны проходить через pull request. 
- Обязательно обновляйте версию приложения при внесении изменений. 
 
## Релизный цикл приложения и правила версионирования 
- Используйте семантическое версионирование: MAJOR.MINOR.PATCH. 
- Увеличивайте MAJOR при внесении несовместимых изменений, MINOR для новых функций, PATCH для исправлений. 
