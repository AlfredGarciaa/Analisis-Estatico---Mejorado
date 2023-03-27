# TUTORIAL INSTALACION Y USO DE SONARQUBE

## Recursos:

1. *Pagina principal:* 

`https://www.sonarsource.com/products/sonarqube/`

2. *Pagina descarga sonarqube:* 

`https://www.sonarsource.com/products/sonarqube/downloads/`

3. *Pagina sonarscanner:* 

`https://docs.sonarqube.org/latest/analyzing-source-code/scanners/sonarscanner/`

4. *Pagina generar tokens sonarqube:*

`https://docs.sonarqube.org/latest/user-guide/user-account/generating-and-using-tokens/`

5. *Pagina tutorial agregar archivo al PATH en Windows*

`https://www.neoguias.com/agregar-directorio-path-windows/`

## Instalacion Paso a Paso

### Instalar Sonarqube:
1. Descargar sonarqube desde la pagina de "downloads".

2. Descomprimir archivo descargado en una carpeta a eleccion, para alojar sonarqube.

3. En la carpeta donde se aloja sonarqube dirigirse a `.\sonarqube-9.9.0.65466\bin\windows-x86-64` para Windows. Agregar dicho directorio al PATH del sistema operativo para facil ejecucion.

4. Ejecutar el batch file `StartSonar.bat` en una terminal o dentro del directorio que se agrego al PATH, para inicializar el servidor local de Sonarqube (por defecto el el puerto 9000).

5. Dirigirse al `http://localhost:9000` en un navegador para abrir el servidor y loguearse con las credenciales "admin", "admin".

6. Generar un token global desde el servidor de sonarqube para ejecutar cualquier analisis deseado, con el mismo token.

### Instalar SonarScanner:
1. Dirigirse a la pagina de documentacion, a la seccion de "Scanners"

2. Descargar el Scanner para Windows `Windows 64-bit`

3. Descomprimir archivo descargado en una carpeta a eleccion, para alojar el SonarScanner. 

4. Ingresar a la carpeta de sonar-scanner y agregar el directorio `\bin` al PATH del sistema operativo para ejecutar el scanner desde cualquier directorio en la terminal.

## Ejecucion Analisis Estatico

### Ejecutar analisis estatico en javascript

1. Ejecutar `StartSonar.bat`, abrir servidor sonarqube en `http://localhost:9000` y loguearse.

2. Ir al directorio raiz del proyecto a analizar.

3. En dicho directorio crear un archivo `sonar-project.properties` donde se coloca el nombre que identificara al proyecto en el servidor de SonarQube de la siguiente manera:

```
#Dentro de sonar-project.properties:

sonar.projectKey=NombreDelProyecto
```

4. En el mismo directorio raiz del proyecto, ejecutar el comando `sonar-scanner -D sonar.login=myAuthenticationToken` colocando ahi el token global generado anteriormente.

5. Esperar ejecucion y dirigirse al servidor local de sonarqube para ver los resultados del analisis en la seccion de proyectos o en la pagina principal.

### Ejecutar analisis estatico en C# .Net Core

1. Ejecutar `StartSonar.bat`, abrir servidor sonarqube en `http://localhost:9000` y loguearse.

2. Dirigirse al servidor local de sonarqube y crear un nuevo proyecto desde la interfaz (boton en esquina superior derecha). Ingresar nombre del proyecto, generar o usar token existente y escoger opcion de almacenamiento local.

3. Ir al directorio raiz del proyecto a analizar (no al nivel del archivo .sln, sino uno mas adentro).

4. Instalar sonarscanner para .Net solo una vez por proyecto con el comando: 
```
dotnet tool install --global dotnet-sonarscanner
```
5. Cada que querramos ejecutar el analisis en el proyecto, en el mismo directorio raiz del proyecto, ejecutar los siguientes 3 comandos en orden:
```
dotnet sonarscanner begin /k:"NombreProyecto" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="TokenAsignado"
```
```
dotnet build
```
```
dotnet sonarscanner end /d:sonar.login="TokenAsignado"
```

6. Esperar ejecucion y dirigirse al servidor local de sonarqube para ver los resultados del analisis en la seccion de proyectos o en la pagina principal.