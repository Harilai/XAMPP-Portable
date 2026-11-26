# XAMPP 8.3.37 — paquete portable reconstruido

Material auxiliar para reconstruir el paquete portable de XAMPP 8.3.37 para Windows x64.

## Archivos

- `unir-XAMPP.bat`: une los cinco segmentos binarios cuando estén en la misma carpeta.
- `MANIFEST.sha256`: hashes SHA-256 de cada segmento y del ZIP final.
- `XAMPP-8.3.37-informe-verificacion.txt`: informe de extracción, inventario y comprobaciones.

## Unión de los segmentos

Cuando tengas los cinco archivos `XAMPP-8.3.37-parte-N.bin` (N de 0 a 4), colócalos junto a `unir-XAMPP.bat` y ejecútalo. Se generará:

`XAMPP-8.3.37-portable-reconstruido.zip`

Comprueba el ZIP con:

```powershell
Get-FileHash .\XAMPP-8.3.37-portable-reconstruido.zip -Algorithm SHA256
```

El resultado esperado es:

`59432c65eb6d1ade0d2cf9ad2ab6d98acf888c53f52f993186d1f58be98a53ef`

## Estado de publicación de los binarios

Esta rama contiene por ahora los archivos auxiliares y el manifiesto. Los cinco segmentos (70 MiB, 70 MiB, 70 MiB, 70 MiB y 49,45 MiB) no se han podido adjuntar mediante la conexión GitHub disponible, que solo admite la creación de archivos de texto. No se deben considerar publicados hasta que aparezcan como archivos descargables en esta rama.

## Verificación y limitaciones

El archivo ZIP reconstruido pasó la comprobación CRC de sus miembros y se calculó el SHA-256 indicado. No se ejecutaron los binarios de Windows en el entorno de reconstrucción, por lo que no se certifica el arranque real de Apache, PHP, MariaDB ni del panel en Windows. Lee el informe antes de usarlo. No usar como servidor de producción.
