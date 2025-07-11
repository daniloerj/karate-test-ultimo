# karate-test-ultimo

Automatización de pruebas de APIs REST usando [Karate DSL](https://github.com/karatelabs/karate) y Maven.

## Descripción

Este proyecto contiene pruebas automatizadas para la API pública [jsonplaceholder](https://jsonplaceholder.typicode.com/), cubriendo escenarios de usuarios y más.

## Estructura

- `src/test/java/examples/jsonplaceholder/`: Features de Karate para cada endpoint.
- `Jenkinsfile`: Pipeline para integración continua en Jenkins.
- `.github/workflows/karate.yml`: Workflow para CI en GitHub Actions.

## Ejecución local

```sh
mvn clean test
```

## Integración continua

- **Jenkins:** Usa el Jenkinsfile para ejecutar las pruebas automáticamente y descargar el reporte HTML.
- **GitHub Actions:** El workflow ejecuta las pruebas y permite descargar el reporte HTML como artifact.

## Requisitos

- Java 17+
- Maven 3.6+

## Autor

Danilo Efrain