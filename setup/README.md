# Setup


# Integrantes de equipo
Paola Lisset Santollo Vargas
Alejandro Cabrera Moncada
Ana Laura Arreola

# Pasos para ejecutar el proyecto
Descargar el repositorio

Instalar gemas
bundle install

Ejecutar proyecto 
ruby lib/args_parser.rb -l -p 8080 -d /usr/logs

Nota, si es una lista  se ejecuta 
ruby lib/args_parser.rb -g this,is,a,list -d 1,2,3,4,-5

# Pasos para ejecutar el archivo de pruebas
Ejecutar


# Verificar puntuacion de rubycritic en el proyecto
Ejecutar comando
rubycritic lib


# Verificar la puntuacion de rubycritic en las pruebas
Ejecutar comando 
rubycritic specs


# Verificar puntuación Sandi-meter
Ejecutar comando
sandi_meter 