# XAMPP 8.5.13 portable

- **PHP:** 8.5.13
- **Plataforma:** Windows x64
- **Distribución:** ZIP portable
- **Origen:** Instalador oficial reconstruido como ZIP portable
- **Método:** `installer-reconstruction`

## Descargas

- [Descargar XAMPP-8.5.13-portable-Windows-x64.zip](https://github.com/Harilai/Xamp-Portable/releases/download/v8.5.13/XAMPP-8.5.13-portable-Windows-x64.zip)
- [Abrir Release v8.5.13](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.5.13)
- [Checksum SHA-256](https://github.com/Harilai/Xamp-Portable/releases/download/v8.5.13/SHA256SUMS.txt)

## Validación

Workflow correcto: PHP -v, configuración Apache (httpd -t), versión de MariaDB y extracción del ZIP.

No consta prueba de arranque conjunto de Apache y MariaDB en un Windows real.

## Uso

Extrae el ZIP en una carpeta donde tengas permisos de escritura. Si el paquete incluye `setup_xampp.bat`, ejecútalo desde la carpeta raíz de XAMPP para adaptar las rutas. Abre después `xampp-control.exe` sin usar «Ejecutar como administrador» ni instalar Apache o MariaDB como servicios.

Consulta el [README principal](../../README.md) para las instrucciones generales.

> El ZIP y su checksum son assets de GitHub Releases. No se duplican dentro del historial Git del repositorio.
