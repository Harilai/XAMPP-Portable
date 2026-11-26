# XAMPP 8.4.27 portable

- **PHP:** 8.4.27
- **Plataforma:** Windows x64
- **Distribución:** ZIP portable
- **Origen:** Instalador oficial reconstruido como ZIP portable
- **Método:** `installer-reconstruction`

## Descargas

- [Descargar XAMPP-8.4.27-portable-Windows-x64.zip](https://github.com/Harilai/Xamp-Portable/releases/download/v8.4.27/XAMPP-8.4.27-portable-Windows-x64.zip)
- [Abrir Release v8.4.27](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.4.27)
- [Checksum SHA-256](https://github.com/Harilai/Xamp-Portable/releases/download/v8.4.27/SHA256SUMS.txt)

## Validación

Workflow correcto: PHP -v, configuración Apache (httpd -t), versión de MariaDB y extracción del ZIP.

No consta prueba de arranque conjunto de Apache y MariaDB en un Windows real.

## Uso

Extrae el ZIP en una carpeta donde tengas permisos de escritura. Si el paquete incluye `setup_xampp.bat`, ejecútalo desde la carpeta raíz de XAMPP para adaptar las rutas. Abre después `xampp-control.exe` sin usar «Ejecutar como administrador» ni instalar Apache o MariaDB como servicios.

Consulta el [README principal](../../README.md) para las instrucciones generales.

> El ZIP y su checksum son assets de GitHub Releases. No se duplican dentro del historial Git del repositorio.


## Receta de construcción archivada

- [Workflow original de GitHub Actions](./build/publish-xampp-release.yml)

Este YAML se conserva como referencia histórica dentro de `versions/`. Al estar fuera de `.github/workflows/`, no se ejecuta automáticamente. Para volver a construir o publicar una versión habrá que adaptar o copiar su receta a un workflow activo.
 
