# ServeRest Users API Automation Suite (Karate DSL)

Este proyecto contiene una suite de pruebas automatizadas para la API de gestión de usuarios de [ServeRest](https://serverest.dev/) desarrollada con **Karate DSL**.

---

##  Prerrequisitos

Antes de ejecutar el proyecto, asegúrate de contar con las siguientes herramientas instaladas:

* **Java JDK:** Versión 8 o superior (Configurada la variable de entorno `JAVA_HOME`).
* **Apache Maven:** Versión 3.6 o superior.
* **IDE Recomendado:** IntelliJ IDEA / Eclipse / VS Code (con plugin de Cucumber/Karate para ejecución directa).

Tecnologías Utilizadas

* **Framework de Pruebas:** Karate DSL (v1.3.0)
* **Lenguaje de Programación:** Java
* **Motor de Pruebas:** JUnit 5
* **Gestor de Dependencias:** Apache Maven
* **Lógica Auxiliar:** Java (Generador de datos dinámicos `DataGenerator`)


##  Instrucciones de Configuración y Ejecución

### 1. Clonar el repositorio
```
bash
git clone https://github.com/NetFanely2/ProyectoRetoBack.git
cd karate-serverest-users
```
### 2. Ejecutar todas las suites de prueba:
```
mvn clean test
```
### 3. Ejecutar un archivo .feature en específico:
```
mvn test -Dtest=users/users-get.feature
```
### 4. Reportes de Ejecución:

target/karate-reports/karate-summary.html
