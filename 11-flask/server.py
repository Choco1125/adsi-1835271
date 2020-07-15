from flask import Flask, render_template, request, session, flash,redirect
from flask_bootstrap import Bootstrap
from bson.objectid import ObjectId
import pymongo

#Instacia un objeto de Flask
app = Flask(__name__)
#Settings del app
app.secret_key = "momongo-sama"
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
    return render_template('index.html',cursor = get_users())

@app.route('/user/add')
def users_add_form():
    return render_template('users/add.html')

@app.route('/user', methods = ['post'])
def user_add():
    try:
        _firstname = request.form['firstname']
        _lastname = request.form['lastname']
        collection.insert_one({
            'firstname': _firstname,
            'lastname': _lastname
        })
        flash("Usuario creado con éxito")
        return redirect("/")
    except Exception as e:
        print(e)

@app.route('/user/edit/<id>')
def user_edit_form(id):
    return render_template('users/edit.html',user = get_user(_id = id))

@app.route('/user/edit', methods = ['post'])
def user_edit():
    try:
        _id = ObjectId(request.form['id'])
        _firstname = request.form['firstname']
        _lastname = request.form['lastname']
        collection.update(
            {
                '_id': _id
            },
            {
            'firstname': _firstname,
            'lastname': _lastname
            }
        )
        flash("Usuario actualizado con éxito")
        return redirect("/")
    except Exception as e:
        print(e)

@app.route('/user/delete/<id>')
def user_delete(id):
    try:
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