# XAMPP 8.3.37 portable (Windows x64)

Repositorio para distribuir una reconstrucción portable de XAMPP 8.3.37.

## Descargar desde Releases

La forma recomendada de obtener la versión es desde **[Releases](https://github.com/Harilai/xamp-versions/releases/latest)**. Descarga los seis archivos adjuntos a la Release:

- `XAMPP-8.3.37-parte-0.bin`
- `XAMPP-8.3.37-parte-1.bin`
- `XAMPP-8.3.37-parte-2.bin`
- `XAMPP-8.3.37-parte-3.bin`
- `XAMPP-8.3.37-parte-4.bin`
- `unir-XAMPP.bat`

No descargues solo el código fuente que GitHub ofrece como ZIP. Necesitas los seis assets de la Release.

## Reconstruir el ZIP

1. Descarga los cinco segmentos y `unir-XAMPP.bat`.
2. Coloca los seis archivos en una misma carpeta. No cambies sus nombres.
3. Haz doble clic en `unir-XAMPP.bat`.
4. El script concatena los cinco segmentos y crea `XAMPP-8.3.37-portable-reconstruido.zip`.
5. Extrae ese ZIP con el Explorador de Windows o 7-Zip.

El SHA-256 esperado del ZIP reconstruido es:

```
59432c65eb6d1ade0d2cf9ad2ab6d98acf888c53f52f993186d1f58be98a53ef
```

Para comprobarlo desde PowerShell, en la carpeta del ZIP ejecuta:

```powershell
Get-FileHash .\XAMPP-8.3.37-portable-reconstruido.zip -Algorithm SHA256
```

## Primer inicio en Windows

1. Extrae el ZIP en una ruta sencilla y con permisos de escritura del usuario, por ejemplo `%USERPROFILE%\xampp`.
2. Entra en la carpeta `xampp` y ejecuta `setup_xampp.bat` una vez para ajustar las rutas a la ubicación elegida.
3. Abre `xampp-control.exe`.
4. Inicia Apache y MySQL desde el panel. No es necesario instalarlos como servicios de Windows; evita usar la opción Service.
5. Para comprobar la versión de PHP de este paquete, ejecuta desde CMD:

```cmd
%USERPROFILE%\xampp\php\php.exe -v
```

Si Apache o MySQL no arrancan, comprueba si otro programa (por ejemplo Laragon) está usando los puertos 80, 443 o 3306.

## Estructura del repositorio

- `main`: documentación, instrucciones y avisos generales.
- `xampp-8.3.37`: únicamente los segmentos binarios, el script de unión y la automatización que publica la Release.

Las Releases contienen los archivos descargables ya adjuntos; no hace falta clonar el repositorio para instalar la versión.

## Procedencia y límites de verificación

El paquete se reconstruyó a partir del instalador de XAMPP para Windows x64 8.3.37-0 VC16. Se comprobó la integridad estructural del ZIP y el CRC de sus miembros, y se calculó el SHA-256 anterior.

**No se ejecutaron los binarios de Windows en el entorno de reconstrucción.** Por ello, aunque el archivo supera las comprobaciones de integridad del contenedor, no se certifica que Apache, PHP, MariaDB o el panel arranquen correctamente en todos los equipos Windows. No lo utilices como servidor de producción. Revisa los requisitos oficiales de Microsoft Visual C++ Redistributable si Windows informa de DLL ausentes.
