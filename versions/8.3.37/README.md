# XAMPP 8.3.37 portable

- **PHP:** 8.3.37
- **Plataforma:** Windows x64
- **Distribución:** ZIP portable
- **Origen:** Instalador oficial dividido en cinco fragmentos y reconstruido
- **Método:** `split-installer-reconstruction`

## Descargas

- [Descargar XAMPP-8.3.37-portable-reconstruido.zip](https://github.com/Harilai/Xamp-Portable/releases/download/v8.3.37/XAMPP-8.3.37-portable-reconstruido.zip)
- [Abrir Release v8.3.37](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.3.37)
- [Checksum SHA-256](https://github.com/Harilai/Xamp-Portable/releases/download/v8.3.37/SHA256SUMS.txt)

## Validación

Reconstrucción del instalador y comprobación CRC del ZIP.

Arranque y funcionamiento de servicios en Windows pendientes de prueba funcional.

## Uso

Extrae el ZIP en una carpeta donde tengas permisos de escritura. Si el paquete incluye `setup_xampp.bat`, ejecútalo desde la carpeta raíz de XAMPP para adaptar las rutas. Abre después `xampp-control.exe` sin usar «Ejecutar como administrador» ni instalar Apache o MariaDB como servicios.

Consulta el [README principal](../../README.md) para las instrucciones generales.

> El ZIP y su checksum son assets de GitHub Releases. No se duplican dentro del historial Git del repositorio.


## Receta de construcción archivada

- [Workflow original de GitHub Actions](./build/publish-xampp-release.yml)

Este YAML se conserva como referencia histórica dentro de `versions/`. Al estar fuera de `.github/workflows/`, no se ejecuta automáticamente. Para volver a construir o publicar una versión habrá que adaptar o copiar su receta a un workflow activo.
- [Script para unir los cinco fragmentos del ZIP](./build/unir-XAMPP.bat)
