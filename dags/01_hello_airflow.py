import pendulum

from airflow.sdk import DAG, task

with DAG (
    dag_id = "hello-airflow", 
    start_date = pendulum.datetime(2026, 10, 7, tz="UTC"),
    schedule = None
) as dag:

    @task
    def hello():
        print("Olá, Airflow!")

    hello()