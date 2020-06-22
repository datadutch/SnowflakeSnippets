from sqlalchemy import create_engine

engine = create_engine(
    'snowflake://{user}:{password}@{account}/'.format(
        user='<your_user_login_name>',
        password='<your_password>',
        account='<your_account_name>',
    )
)
try:
    connection = engine.connect()
    results = connection.execute('select current_version()').fetchone()
    print(results[0])
finally:
    connection.close()
    engine.dispose()