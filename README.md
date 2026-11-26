# XAMPP 8.3.37 portable (Windows x64)

Este repositorio distribuye una reconstrucción portable de XAMPP 8.3.37 para Windows x64. La descarga recomendada es el ZIP completo publicado en GitHub Releases.

## Descarga

Abre **[Releases](https://github.com/Harilai/xamp-versions/releases/latest)** y descarga:

- `XAMPP-8.3.37-portable-reconstruido.zip`: paquete completo.
- `SHA256SUMS.txt`: suma SHA-256 para verificar la descarga.

No necesitas clonar el repositorio ni descargar por separado los segmentos para instalar la versión.

## Verificar la descarga

En PowerShell, desde la carpeta donde descargaste el ZIP, ejecuta:

```powershell
Get-FileHash .\XAMPP-8.3.37-portable-reconstruido.zip -Algorithm SHA256
```

El resultado esperado es:

```
59432c65eb6d1ade0d2cf9ad2ab6d98acf888c53f52f993186d1f58be98a53ef
```

El valor también está en el asset `SHA256SUMS.txt` de la Release.

## Instalación y primer inicio

1. Extrae `XAMPP-8.3.37-portable-reconstruido.zip` con el Explorador de Windows o 7-Zip.
2. Se creará una carpeta `xampp`. Muévela a una ruta donde tu usuario tenga permisos de escritura, por ejemplo `%USERPROFILE%\xampp`.
3. Entra en esa carpeta y ejecuta `setup_xampp.bat` una vez para ajustar las rutas a la ubicación elegida.
4. Abre `xampp-control.exe`.
5. Inicia Apache y MySQL desde el panel. No es necesario instalarlos como servicios de Windows; no uses la opción Service si no tienes permisos de administrador.
6. Para comprobar la versión de PHP incluida en este XAMPP, ejecuta desde CMD:

```cmd
%USERPROFILE%\xampp\php\php.exe -v
```

Si Apache o MySQL no arrancan, comprueba si otro programa (por ejemplo Laragon) está utilizando los puertos 80, 443 o 3306. Cierra el otro servidor o cambia los puertos antes de volver a iniciar XAMPP.

## Organización del repositorio

- `main`: documentación e instrucciones de uso.
- `xampp-8.3.37`: contenido mínimo de la versión (cinco segmentos binarios, script de unión y workflow de publicación).

El workflow de la rama de versión concatena los cinco segmentos, comprueba el SHA-256 y actualiza la Release `v8.3.37` con un único ZIP completo. Así, las próximas actualizaciones de esta versión se publicarán en Releases sin que tengas que unir los archivos manualmente.

## Procedencia y límites de verificación

El paquete se reconstruyó a partir del instalador de XAMPP para Windows x64 8.3.37-0 VC16. Se comprobó la integridad estructural del ZIP y el CRC de sus miembros.

**No se ejecutaron los binarios de Windows en el entorno de reconstrucción.** Por tanto, aunque el ZIP supera las comprobaciones de integridad del contenedor, no se certifica que Apache, PHP, MariaDB o el panel arranquen correctamente en todos los equipos Windows. No lo utilices como servidor de producción. Si Windows informa de DLL ausentes, puede ser necesario el Microsoft Visual C++ Redistributable correspondiente.
