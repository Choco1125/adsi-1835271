import os
from flask import Flask, render_template, request, session, flash,redirect, url_for
from flask_bootstrap import Bootstrap
from bson.objectid import ObjectId
import pymongo
from werkzeug.security import generate_password_hash, check_password_hash
from forms.CrearUser import CrearUsuarioForm
from forms.EditarUser import EditarUsuarioForm
from forms.LoginForm import LoginForm
import time

#Instacia un objeto de Flask
app = Flask(__name__)
#Settings del app
app.secret_key = "momongo-sama"
app.config['UPLOAD_FOLDER'] = os.path.dirname(os.path.abspath(__file__))
bootstrap = Bootstrap(app)

#Muestra los valores por consola-------------------------
def showUsers():
    #Seleccionamos la tabal o colección
    cursor = collection.find()
    
    for doc in cursor:
        print(doc)
#--------------------------------------------------------

#Para usar con la rita, este devuelve todos los registros
def get_users():
    #Select * FROM users
    cursor = collection.find()
    return cursor
#---------------------------------------------------------

#Consultar Usuario----------------------------------------
def get_user(_id):
    _id = ObjectId(_id)
    cursor = collection.find_one({"_id":_id})
    return cursor
#---------------------------------------------------------

#Validar sesión-------------------------------------------
def validate_sesion():
    return 'firstname' in session

#Upload file
def upload_files():
    target = os.path.join(app.config['UPLOAD_FOLDER'],'static/uploads/')
    if not os.path.isdir(target):
        os.makedir(target)

    for file in request.files.getlist('photo'):
        seconds = int(time.time())
        filename = file.filename
        extension = filename.rsplit('.',1)[1].lower()
        n_filename = "{}.{}".format(seconds,extension)
        destination = "/".join([target,n_filename])
        file.save(destination)
    
    return n_filename

def delete_file(_id):
    cursor = get_user(_id)
    print(cursor)
    target = os.path.join(app.config['UPLOAD_FOLDER']+'/static/',cursor['photo'])
    if os.path.isfile(target):
        os.remove(target)
        return True
    else:
        return False

#Conexión a MongoDB---------------------------------------
try:
    host = 'mongodb://127.0.0.1:27017/'
    #Conexión a mongo
    mongo = pymongo.MongoClient(host)
    #Seleccionamos la db
    database = mongo.adsimongo
    #showUsers()
    collection = database.users

except Exception as e:
    print("Error: Problemas con MongoDB" + e)
#---------------------------------------------------------

#Rutas----------------------------------------------------
@app.route('/')
def welcome_view():
    if 'firstname' in session:
        return render_template('index.html',cursor = get_users())
    else: 
        form = LoginForm(request.form)
        return render_template('login.html',form= form)

@app.route('/login',methods = ['post'])
def login():
    try:
        form = LoginForm(request.form)

        _firstname = form.firstname.data
        _password = form.password.data

        #_firstname = request.form['firstname']
        #_password = request.form['password']

        check_user = collection.find_one({'firstname':_firstname})
        if check_user:
            if check_password_hash(check_user['password'],_password):
                session['firstname'] = check_user['firstname']
                session['lastname'] = check_user['lastname']
                session['photo'] = check_user['photo']
                return redirect('/')
            else:
                flash('Contraseña errónea')
                return redirect('/')
        else:
            flash('Usuario no encontrado')
            return redirect('/')
    except Exception as e:
        print(e)

@app.route('/logout')
def logout():
    session.pop('firstname',None)
    session.pop('lastname',None)
    session.pop('photo',None)
    return redirect('/')

@app.route('/user/add')
def users_add_form():
    if validate_sesion():
        form = CrearUsuarioForm(request.form)
        return render_template('users/add.html', form=form)
    else:
        return redirect('/')

@app.route('/user', methods = ['post'])
def user_add():
    try:

        form = CrearUsuarioForm(request.form)

        if form.validate():
            _firstname = form.firstname.data
            _lastname = form.lastname.data
            _password = form.password.data
            
            filename = upload_files()
            
            _photo = 'uploads/' + filename
            _hashed_pass = generate_password_hash(_password)

            collection.insert_one({
                'firstname': _firstname,
                'lastname': _lastname,
                'password': _hashed_pass,
                'photo': _photo
            })
            flash("Usuario creado con éxito")
            return redirect("/")
        else:
            return render_template('users/add.html', form=form)
    except Exception as e:
        print(e)

@app.route('/user/edit/<id>')
def user_edit_form(id):
    if validate_sesion():
        _user = get_user(_id = id)
        form = EditarUsuarioForm(id=_user['_id'],firstname=_user['firstname'],lastname=_user['lastname'])
        return render_template('users/edit.html',user = _user,form=form)
    else:
        return redirect('/')

@app.route('/user/edit', methods = ['post'])
def user_edit():
    try:
        form = EditarUsuarioForm(request.form)
        if form.validate():

            _id = ObjectId(form.id.data)
            _firstname = form.firstname.data
            _lastname = form.lastname.data

            # _id = ObjectId(request.form['id'])
            # _firstname = request.form['firstname']
            # _lastname = request.form['lastname']

            if not request.files.get('photo',None):
                n_values = {
                'firstname': _firstname,
                'lastname': _lastname
                }
            else:
                delete_file(_id)
                filename = upload_files()
                _photo = 'uploads/' + filename
                n_values = {
                'firstname': _firstname,
                'lastname': _lastname,
                'photo': _photo
                }

            collection.update_one({'_id': _id},{'$set': n_values})

            flash("Usuario actualizado con éxito")
            return redirect("/")
        else:
            return render_template('users/edit.html',user = get_user(_id=form.id.data),form=form)


    except Exception as e:
        print('DB: ', e)

@app.route('/user/delete/<id>')
def user_delete(id):
    try:

        if delete_file(ObjectId(id)):
            collection.remove({
                '_id': ObjectId(id)
            })
            flash("Usuario eliminado")
            return redirect("/")

    except Exception as e:
        print(e)

@app.errorhandler(404)
def not_found(e):
    return render_template("404.html")
#----------------------------------------------------------


#Monta el servidor
if __name__ == '__main__':
    #Parámetro port=5050 cambia el puerto
    #Debug=True activa el debug 
    app.run(debug=True)
