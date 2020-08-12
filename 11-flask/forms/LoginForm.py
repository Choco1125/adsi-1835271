from wtforms import Form, StringField,PasswordField, validators

class LoginForm(Form):
  firstname =  StringField('firstname',[validators.required(),validators.Length(min=4, max=70)])
  password = PasswordField('password',[
    validators.DataRequired(),
    validators.Length(min=4)
  ])
