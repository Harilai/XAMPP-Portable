# XAMPP portable para Windows x64

Catálogo de paquetes **ZIP portables de XAMPP para Windows x64**. El objetivo es descargar, extraer y ejecutar XAMPP desde una carpeta con permisos de escritura, sin utilizar un asistente de instalación.

- [Descargar la última versión](https://github.com/Harilai/xamp-versions/releases/latest)
- [Ver todas las versiones](https://github.com/Harilai/xamp-versions/releases)

## Versiones recomendadas

Estas son las versiones más recientes publicadas por Apache Friends para Windows. Para proyectos nuevos, utiliza preferentemente una de ellas.

| XAMPP | PHP | Paquete | Descarga |
|---|---:|---|---|
| **8.5.13** | 8.5.13 | ZIP portable | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.5.13/XAMPP-8.5.13-portable-Windows-x64.zip) |
| **8.4.28** | 8.4.28 | ZIP portable | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.4.28/XAMPP-8.4.28-portable-Windows-x64.zip) |
| **8.3.37** | 8.3.37 | ZIP portable reconstruido | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.3.37/XAMPP-8.3.37-portable-reconstruido.zip) |

## Versiones anteriores y compatibilidad

Disponibles para mantener o probar proyectos que dependan de versiones anteriores de PHP o de los componentes incluidos en cada distribución.

| XAMPP | PHP | Paquete | Descarga |
|---|---:|---|---|
| 8.5.12 | 8.5.12 | ZIP portable | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.5.12/XAMPP-8.5.12-portable-Windows-x64.zip) |
| 8.4.27 | 8.4.27 | ZIP portable | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.4.27/XAMPP-8.4.27-portable-Windows-x64.zip) |
| 8.3.36 | 8.3.36 | ZIP portable | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.3.36/XAMPP-8.3.36-portable-Windows-x64.zip) |
| 8.2.12 | 8.2.12 | ZIP portable oficial | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.2.12/xampp-portable-windows-x64-8.2.12-0-VS16.zip) |
| 8.1.25 | 8.1.25 | ZIP portable oficial | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.1.25/XAMPP-8.1.25-portable-Windows-x64.zip) |
| 8.0.30 | 8.0.30 | ZIP portable oficial | [Descargar](https://github.com/Harilai/xamp-versions/releases/download/v8.0.30/XAMPP-8.0.30-portable-Windows-x64.zip) |

> **Aviso de mantenimiento:** las versiones antiguas se conservan por compatibilidad. No las utilices para desplegar servicios expuestos a Internet sin revisar previamente el estado de soporte y seguridad de PHP y del resto de componentes.

## Qué significa portable en este repositorio

- El paquete se distribuye como ZIP y se extrae en una carpeta elegida por el usuario.
- No es necesario ejecutar el instalador gráfico de XAMPP.
- No se deben instalar Apache o MariaDB como servicios de Windows para utilizarlos desde el panel.
- Los paquetes reconstruidos desde instaladores se generan en un runner Windows y se someten a comprobaciones de los binarios principales.
- Los paquetes oficiales portables mantienen su estructura de distribución original. En versiones antiguas puede ser necesario ejecutar `setup_xampp.bat` para adaptar las rutas al directorio de extracción.

**Importante:** que un ZIP se pueda extraer y que sus ejecutables respondan a pruebas básicas no garantiza que Apache y MariaDB arranquen correctamente en cualquier equipo Windows. La validación funcional definitiva debe hacerse en el equipo de destino, con una cuenta estándar y sin «Ejecutar como administrador».

## Instalación y uso

1. Abre la Release de la versión deseada y descarga el archivo `.zip`.
2. Extrae el ZIP en una carpeta donde tengas permisos de escritura, por ejemplo `%USERPROFILE%\\xampp`.
3. Entra en la carpeta `xampp` extraída.
4. Ejecuta `setup_xampp.bat` una vez si el paquete lo incluye.
5. Abre `xampp-control.exe` normalmente, sin elevar permisos.
6. Inicia Apache y MySQL desde el panel. No los instales como servicios de Windows.
7. Comprueba [http://localhost/](http://localhost/) y [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).

Para comprobar PHP desde CMD:

```cmd
C:\\ruta\\a\\xampp\\php\\php.exe -v
```

## Verificar la descarga

Cada Release incluye `SHA256SUMS.txt`. En PowerShell, dentro de la carpeta que contiene el ZIP, ejecuta:

```powershell
Get-FileHash .\\NOMBRE-DEL-ARCHIVO.zip -Algorithm SHA256
```

Compara el SHA-256 obtenido con el valor de `SHA256SUMS.txt`. Si no coincide, no utilices el archivo y vuelve a descargarlo.

## Solución de problemas

- **Apache se detiene al arrancar:** revisa `apache\\logs\\error.log` y comprueba si los puertos 80/443 están ocupados.
- **MySQL no arranca:** revisa los logs disponibles en `mysql\\data` y comprueba si el puerto 3306 está ocupado.
- **Faltan DLL:** instala el Microsoft Visual C++ Redistributable que corresponda a la compilación.
- **No tienes permisos:** extrae el ZIP dentro de tu perfil de usuario, no en `C:\\Program Files`.
- **Las rutas no coinciden:** ejecuta `setup_xampp.bat` desde la carpeta raíz de XAMPP.

## Verificación técnica

Los workflows de GitHub Actions automatizan, según el origen de cada paquete:

- Verificación SHA-256 del instalador o ZIP original.
- Extracción del payload o del ZIP portable en Windows.
- Comprobación de la presencia de PHP, Apache, MariaDB y los archivos de configuración requeridos.
- Pruebas básicas de ejecución de PHP, validación de sintaxis de Apache y consulta de versión de MariaDB.
- Generación del ZIP portable y de su archivo `SHA256SUMS.txt`.

Estas pruebas no sustituyen una prueba manual de inicio y funcionamiento conjunto de Apache y MariaDB en una instalación Windows real.

## Estructura del repositorio

Cada versión tiene su propia rama `xampp-X.Y.Z` y su workflow en `.github/workflows/publish-xampp-release.yml`. El resultado se publica como una GitHub Release con el ZIP portable y su checksum.

## Fuentes

- [Apache Friends — Descargas oficiales](https://www.apachefriends.org/download.html)
- [SourceForge — Archivos oficiales de XAMPP para Windows](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/)
- [Releases de este repositorio](https://github.com/Harilai/xamp-versions/releases)


## Estructura de versiones en el repositorio

Las fichas técnicas de cada versión están organizadas en [`versions/`](./versions/). Cada carpeta contiene un `README.md` y un `version.json` con el origen, el paquete publicado, los enlaces de descarga y el nivel de validación.

Consulta el [índice de versiones](./versions/README.md) para acceder a las nueve fichas individuales. Los ZIP se mantienen en GitHub Releases para no duplicar archivos grandes en el historial Git.
