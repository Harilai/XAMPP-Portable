# XAMPP para Windows x64

Repositorio de versiones de XAMPP para Windows. Aquí encontrarás un índice de descargas, instrucciones de instalación y el historial de publicaciones.

> **Importante:** no todos los paquetes tienen el mismo formato. Algunas versiones son ZIP portables y otras son instaladores oficiales `.exe`. El formato está indicado en la tabla.

## Índice de versiones disponibles

| Versión | PHP | Formato | Descarga | Estado |
|---|---:|---|---|---|
| **8.5.13** | 8.5.13 | Instalador oficial (.exe) | [Release v8.5.13](https://github.com/Harilai/xamp-versions/releases/tag/v8.5.13) | Publicada; SHA-256 verificado |
| **8.4.28** | 8.4.28 | Instalador oficial (.exe) | [Release v8.4.28](https://github.com/Harilai/xamp-versions/releases/tag/v8.4.28) | Publicada; SHA-256 verificado |
| **8.3.37** | 8.3.37 | ZIP portable reconstruido | [Release v8.3.37](https://github.com/Harilai/xamp-versions/releases/tag/v8.3.37) | Publicada; ZIP íntegro; arranque pendiente de prueba en Windows |
| **8.3.36** | 8.3.36 | Instalador oficial (.exe) | [Release v8.3.36](https://github.com/Harilai/xamp-versions/releases/tag/v8.3.36) | Publicada; SHA-256 verificado |
| **8.2.12** | 8.2.12 | ZIP portable oficial | [Release v8.2.12](https://github.com/Harilai/xamp-versions/releases/tag/v8.2.12) | Publicada; SHA-256 verificado |

- [Ver todas las Releases](https://github.com/Harilai/xamp-versions/releases)
- [Ver la última Release](https://github.com/Harilai/xamp-versions/releases/latest)

Cada Release contiene el paquete y, cuando está disponible, un archivo `SHA256SUMS.txt` para verificarlo.

## ¿Qué versión debo descargar?

- **Para usar PHP 8.5:** elige 8.5.13.
- **Para usar PHP 8.4:** elige 8.4.28.
- **Para trabajar con PHP 8.3:** elige 8.3.37 o 8.3.36. La 8.3.37 es portable; la 8.3.36 es instalador.
- **Para proyectos que requieren PHP 8.2:** elige 8.2.12.

Comprueba siempre qué versión de PHP necesita tu proyecto antes de cambiar de XAMPP.

## Guía paso a paso para Windows

### 1. Descargar

1. Abre el enlace de la versión que quieras en la tabla.
2. En la página de GitHub Releases, localiza la sección **Assets**.
3. Descarga el archivo principal:
   - Si termina en `.zip`, es un paquete portable.
   - Si termina en `.exe`, es un instalador.
4. Descarga también `SHA256SUMS.txt` si aparece en esa Release.

No descargues el código fuente de GitHub (`Source code.zip` o `.tar.gz`): no es el paquete de XAMPP.

### 2. Verificar la descarga (recomendado)

Abre PowerShell en la carpeta donde guardaste el archivo y ejecuta:

```powershell
Get-FileHash .\NOMBRE-DEL-ARCHIVO -Algorithm SHA256
```

Compara el valor obtenido con el hash publicado en `SHA256SUMS.txt` o en la descripción de la Release. Si no coincide, no uses ese archivo y vuelve a descargarlo.

### 3. Instalar según el formato

**Si has descargado un ZIP portable:**

1. Extrae el ZIP con el Explorador de Windows o 7-Zip.
2. Coloca la carpeta resultante en una ruta sencilla donde tengas permisos de escritura, por ejemplo `%USERPROFILE%\xampp`.
3. Si dentro aparece `setup_xampp.bat`, ejecútalo una vez desde esa carpeta para ajustar las rutas.
4. Abre `xampp-control.exe`.

**Si has descargado un instalador EXE:**

1. Ejecuta el instalador.
2. Si Windows solicita permisos que no tienes, elige una carpeta de instalación dentro de tu perfil de usuario o consulta con el administrador del equipo.
3. Sigue el asistente y selecciona los componentes que necesites.
4. Al terminar, abre el XAMPP Control Panel desde la carpeta de instalación.

Evita instalar XAMPP dentro de `C:\Program Files` si no tienes permisos de administrador. Para un entorno de clase suele ser más sencillo utilizar una ruta dentro de tu perfil de usuario.

### 4. Iniciar Apache y MySQL/MariaDB

1. En XAMPP Control Panel, pulsa **Start** en Apache.
2. Pulsa **Start** en MySQL.
3. Comprueba que ambos servicios aparecen como iniciados.
4. Abre [http://localhost/](http://localhost/) en el navegador.
5. Para phpMyAdmin, prueba [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).

No instales Apache o MySQL como servicios de Windows si no tienes permisos de administrador; puedes iniciarlos desde el panel.

### 5. Comprobar PHP

Abre CMD y ejecuta la ruta de PHP correspondiente a tu carpeta de instalación:

```cmd
C:\ruta\a\xampp\php\php.exe -v
```

Debe aparecer la versión de PHP incluida en el paquete que has elegido.

### 6. Si Apache o MySQL no arrancan

1. Cierra otros entornos locales, como Laragon, WAMP u otra instancia de XAMPP.
2. Comprueba si los puertos habituales están ocupados: Apache usa normalmente 80 y 443; MySQL/MariaDB suele usar 3306.
3. Revisa los logs de Apache y MySQL dentro de la carpeta `logs` de cada componente.
4. Si aparece un error de DLL, instala el Microsoft Visual C++ Redistributable requerido por esa versión.
5. No cambies puertos a ciegas: identifica primero el proceso que los está utilizando.

## Verificación y limitaciones

- Los workflows comprueban el SHA-256 de los archivos oficiales antes de publicarlos cuando se dispone de un hash de origen conocido.
- Los ZIP se comprueban además con la herramienta de validación del formato ZIP.
- **La verificación de hash e integridad no equivale a una prueba de ejecución.** No se afirma que Apache, PHP o MariaDB hayan arrancado en todos los equipos Windows.
- La versión 8.3.37 es una reconstrucción portable y se ha corregido para incluir la carpeta `apache/logs`; aun así, su arranque debe validarse en Windows.
- Utiliza estas distribuciones para desarrollo y pruebas locales, no como servidores de producción expuestos a Internet.

## Cómo se añaden nuevas versiones

Cada versión tiene su propia rama `xampp-X.Y.Z` y un workflow en `.github/workflows/publish-xampp-release.yml`.

1. Se identifica el paquete oficial de Windows y su formato.
2. Se configura el origen y el SHA-256 oficial conocido.
3. GitHub Actions descarga o reconstruye el paquete y verifica su integridad.
4. Si las comprobaciones pasan, el workflow crea o actualiza la Release `vX.Y.Z`.
5. Se añade la versión a la tabla de este README.

Las nuevas versiones deben indicar claramente si son ZIP portables o instaladores. No se deben etiquetar instaladores como paquetes portables.

## Fuentes oficiales

- [Descargas de Apache Friends](https://www.apachefriends.org/download.html)
- [Archivos de XAMPP para Windows en SourceForge](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/)
- [Releases de este repositorio](https://github.com/Harilai/xamp-versions/releases)
