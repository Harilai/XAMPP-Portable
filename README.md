# XAMPP portable para Windows x64

Repositorio de paquetes **ZIP portables** de XAMPP para Windows. El objetivo es poder descargar, extraer y ejecutar XAMPP desde una carpeta con permisos de escritura del usuario, sin asistente de instalación ni permisos de administrador.

> **Formato único de descarga: ZIP.** No se publican instaladores `.exe` como paquetes de usuario. Los instaladores oficiales, cuando son la única fuente disponible, se utilizan únicamente como origen para extraer el contenido y reconstruir el ZIP portable.

## Índice de versiones

| Versión | PHP | Paquete | Descarga | Estado |
|---|---:|---|---|---|
| **8.5.13** | 8.5.13 | ZIP portable reconstruido | [Release v8.5.13](https://github.com/Harilai/xamp-versions/releases/tag/v8.5.13) | Conversión desde instalador oficial; validación del workflow |
| **8.4.28** | 8.4.28 | ZIP portable reconstruido | [Release v8.4.28](https://github.com/Harilai/xamp-versions/releases/tag/v8.4.28) | Conversión desde instalador oficial; validación del workflow |
| **8.3.37** | 8.3.37 | ZIP portable reconstruido | [Release v8.3.37](https://github.com/Harilai/xamp-versions/releases/tag/v8.3.37) | ZIP reconstruido; CRC validado; arranque Windows pendiente |
| **8.3.36** | 8.3.36 | ZIP portable reconstruido | [Release v8.3.36](https://github.com/Harilai/xamp-versions/releases/tag/v8.3.36) | Conversión desde instalador oficial; validación del workflow |
| **8.2.12** | 8.2.12 | ZIP portable oficial | [Release v8.2.12](https://github.com/Harilai/xamp-versions/releases/tag/v8.2.12) | ZIP oficial; SHA-256 verificado |

- [Ver todas las Releases](https://github.com/Harilai/xamp-versions/releases)
- [Ver la última Release](https://github.com/Harilai/xamp-versions/releases/latest)

Cada Release debe incluir el ZIP portable y `SHA256SUMS.txt`.

## Qué significa portable en este repositorio

- El usuario extrae el ZIP en una carpeta de su perfil o en una unidad donde tenga permisos de escritura.
- No se ejecuta un asistente de instalación ni se escribe en `Program Files`.
- No se registran servicios de Windows ni se requiere elevar privilegios para iniciar los procesos de forma manual.
- Los directorios de logs y datos necesarios deben existir dentro del paquete.
- La portabilidad del paquete no garantiza que los puertos estén libres ni que el equipo tenga las dependencias de Visual C++ requeridas.

**Importante:** extraer un instalador y validar el ZIP no demuestra que Apache y MariaDB arranquen correctamente en cualquier Windows. La prueba definitiva debe hacerse en Windows con una cuenta estándar, sin «Ejecutar como administrador».

## Instalación y uso

1. Abre la Release de la versión deseada y descarga el archivo que termina en `.zip`.
2. Extrae el ZIP con el Explorador de Windows o 7-Zip en una ruta donde tengas permisos, por ejemplo `%USERPROFILE%\xampp`.
3. Entra en la carpeta extraída.
4. Si el paquete incluye `setup_xampp.bat`, ejecútalo una vez para ajustar las rutas relativas.
5. Abre `xampp-control.exe` normalmente, sin elevar permisos.
6. Inicia Apache y MySQL desde el panel. No los instales como servicios de Windows.
7. Comprueba [http://localhost/](http://localhost/) y [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).

Para comprobar PHP desde CMD:

```cmd
C:\ruta\a\xampp\php\php.exe -v
```

## Verificar la descarga

En PowerShell, dentro de la carpeta que contiene el ZIP:

```powershell
Get-FileHash .\NOMBRE-DEL-ARCHIVO.zip -Algorithm SHA256
```

Compara el resultado con `SHA256SUMS.txt` de la Release. Si no coincide, vuelve a descargar el archivo.

## Solución de problemas

- **Apache se detiene al arrancar:** revisa `apache\logs\error.log` y comprueba si los puertos 80/443 están ocupados.
- **MySQL no arranca:** revisa `mysql\data\mysql_error.log` o los logs disponibles en esa versión y comprueba el puerto 3306.
- **Faltan DLL:** instala o solicita al administrador el Microsoft Visual C++ Redistributable que corresponda a la compilación.
- **No tienes permisos:** extrae el ZIP en tu perfil de usuario, nunca en `C:\Program Files`.
- **No cambies puertos a ciegas:** identifica primero qué proceso los ocupa.

## Verificación y límites

Los workflows deben verificar el hash del origen oficial, extraer el payload sin ejecutar el instalador, comprobar la presencia de los ejecutables principales y directorios requeridos, generar el ZIP y validar su CRC y SHA-256.

Estas comprobaciones automatizadas son estáticas. No equivalen a una prueba funcional de Apache, MariaDB y PHP en Windows. Las versiones que no hayan superado una prueba real en una cuenta estándar deben identificarse como pendientes de validación funcional.

## Cómo se generan las versiones

Cada versión tiene su propia rama `xampp-X.Y.Z` y workflow en `.github/workflows/publish-xampp-release.yml`. El proceso descarga el origen oficial, verifica su hash, obtiene el contenido portable, repara directorios requeridos, empaqueta un ZIP y publica el ZIP junto con su checksum. El instalador EXE no es el artefacto que se entrega al usuario.

## Fuentes oficiales

- [Descargas de Apache Friends](https://www.apachefriends.org/download.html)
- [Archivos de XAMPP para Windows en SourceForge](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/)
- [Releases de este repositorio](https://github.com/Harilai/xamp-versions/releases)
