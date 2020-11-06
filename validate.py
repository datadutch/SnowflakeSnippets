from sqlalchemy import create_engine

engine = create_engine(
    'snowflake://{user}:{password}@{account}/'.format(
        user='jkooij',
        password='Nd3mMz6ydFp6',
        account='xu81264.eu-west-1',
    )
)
try:
    connection = engine.connect()
    results = connection.execute('select current_version()').fetchone()
    print(results[0])

finally:
    connection.close()
    engine.dispose()

