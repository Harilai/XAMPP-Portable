# XAMPP 8.0.30 portable

- **PHP:** 8.0.30
- **Plataforma:** Windows x64
- **Distribución:** ZIP portable
- **Origen:** ZIP portable oficial
- **Método:** `official-portable-zip`

## Descargas

- [Descargar XAMPP-8.0.30-portable-Windows-x64.zip](https://github.com/Harilai/Xamp-Portable/releases/download/v8.0.30/XAMPP-8.0.30-portable-Windows-x64.zip)
- [Abrir Release v8.0.30](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.0.30)
- [Checksum SHA-256](https://github.com/Harilai/Xamp-Portable/releases/download/v8.0.30/SHA256SUMS.txt)

## Validación

SHA-256 de origen, extracción, setup_xampp.bat, PHP -v, configuración Apache (httpd -t) y versión de MariaDB: workflow correcto.

No consta prueba de arranque conjunto de Apache y MariaDB en un Windows real.

## Uso

Extrae el ZIP en una carpeta donde tengas permisos de escritura. Si el paquete incluye `setup_xampp.bat`, ejecútalo desde la carpeta raíz de XAMPP para adaptar las rutas. Abre después `xampp-control.exe` sin usar «Ejecutar como administrador» ni instalar Apache o MariaDB como servicios.

Consulta el [README principal](../../README.md) para las instrucciones generales.

> El ZIP y su checksum son assets de GitHub Releases. No se duplican dentro del historial Git del repositorio.


## Receta de construcción archivada

- [Workflow original de GitHub Actions](./build/publish-xampp-release.yml)

Este YAML se conserva como referencia histórica dentro de `versions/`. Al estar fuera de `.github/workflows/`, no se ejecuta automáticamente. Para volver a construir o publicar una versión habrá que adaptar o copiar su receta a un workflow activo.
 
