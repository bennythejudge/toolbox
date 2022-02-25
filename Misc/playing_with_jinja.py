>> from jinja2 import Template
>>> t = Template("Hello {{ something }}!")
>>> t.render(something="World")
u'Hello World!'
>>> t = Template("Hello {{ 12345<56677 | urlencode }}!")
>>> t.render(something="World")
u'Hello True!'
>>> t = Template("Hello {{ 12345<56677 | urlencode }}!")
>>> t = Template("Hello {{ url | urlencode }}!")
>>> url='1234><566'
>>> t.render(url)


dbengine="a_db_engine"
db-master-username="user"
db-master-password="1234<567890"
dbhost="host"
dbport="1234"
db-name="a_db_name"
DATABASE_URL="{{ \"%s://%s:%s@%s:%s/%s\" | format("+
"dbengine,"+
"db-master-username,"+
"db-master-password,"+
"dbhost,"+
"dbport,"+
"db-name) " + 
"| urlencode}}"

