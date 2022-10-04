class SystemConfig:

  DEBUG = True

#   SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://{user}:{password}@{host}/{db_name}?charset=utf8'.format(**{
#       'user': 'mysql_outer_user',
#       'password': 'Hidechy4819@',
#       'host': '160.16.145.135',
#       'db_name': 'brain'
#   })



  SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://{user}:{password}@{host}/{db_name}?charset=utf8'.format(**{
      'user': 'root',
      'password': 'Hidechy4819@',
      'host': 'localhost',
      'db_name': 'laratest'
  })






Config = SystemConfig
