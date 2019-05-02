### Useful Commands
```
# https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user 
pip install virtualenv --user

cd /home/eleve/Documents/
mkdir projet
virtualenv .env
source .env/bin/activate

pip install flask
mkdir app
cd app

vi __init__.py

--
from flask import Flask

app = Flask(__name__)

from app import routes
--

vi routes.py

--
from app import app

@app.route('/')
@app.route('/index')
def index():
    return "Hello, World!"
--python app/init_db.py


cd ..

vi myapp.py

--
from app import app
--

export FLASK_APP=myapp.py
flask run
```

### SQL Queries
```

source .env/bin/activate
python
import app.db as db
db = db.db_handler()
db.query('select * from user')
	
```

### Générer les hash
```
# ouvrir le dossier du projet
source .env/bin/activate

python
import app.utils as utils
utils.hash_sha1('test')
```


# génère la base en fonction du contenu de schema.sql
python app/init_db.py


```


### Regénérer la base de données
```
# ouvrir le dossier du projet
rm database.db

# génère la base en fonction du contenu de schema.sql
python app/init_db.py


```
### 

