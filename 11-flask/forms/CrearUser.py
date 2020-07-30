from wtforms import Form, StringField,PasswordField, validators

class CrearUsuarioForm(Form):
  firstname =  StringField('firstname',[validators.required(),validators.Length(min=4, max=70)])
  lastname =  StringField('lastname',[validators.Length(min=4, max=70)])
  password = PasswordField('password',[
    validators.DataRequired(),
    validators.Length(min=4)
  ])