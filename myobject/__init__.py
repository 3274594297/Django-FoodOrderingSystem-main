import pymysql
pymysql.install_as_MySQLdb()
# 这一行就是为了对付 Django 强制要求的 2.2.1 版本限制
pymysql.version_info = (2, 2, 1, "final", 0)