# Subindo o postgres
docker run --name postgres_estadao -e POSTGRES_PASSWORD=stack -d postgres

# Subindo ao Airflow compose
docker run -d -p 8080:8080 -v "$PWD/airflow/dags:/opt/airflow/dags/" --entrypoint=/bin/bash --name AirflowCurso apache/airflow:2.1.1-python3.8 -c '(airflow db init && airflow users create --username admin --password stack --firstname Felipe --lastname Lastname --role Admin --email admin@example.org); airflow webserver & airflow scheduler'