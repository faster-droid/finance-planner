# finance-planner...

Для запуска:

docker build -t finance-planner:latest .

docker run -d -p 8080:8080 \
  --name finance-planner-app \
  -v finance-planner-db-data:/data \
  finance-planner:latest

http://82.146.40.100/finance-planner/expenses


------------------------------------------------------------
