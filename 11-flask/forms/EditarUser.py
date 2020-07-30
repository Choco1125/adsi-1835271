from wtforms import Form, StringField, validators, HiddenField

class EditarUsuarioForm(Form):
  id = HiddenField('id',[validators.required()])
  firstname =  StringField('firstname',[validators.required(),validators.Length(min=4, max=70)])
  lastname =  StringField('lastname',[validators.Length(min=4, max=70)])