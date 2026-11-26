# Catálogo de versiones

Esta carpeta centraliza la ficha de cada versión disponible.

## Estructura

Cada subcarpeta usa el número exacto de versión de XAMPP y contiene:
- `README.md`: resumen humano, origen, validación y enlaces.
- `version.json`: manifiesto estructurado para automatizaciones y consultas.

Los ZIP no se guardan en Git. Se descargan desde los assets de GitHub Releases para evitar duplicar paquetes de 200–330 MB en el historial del repositorio.

## Versiones incluidas

| Versión XAMPP | PHP | Carpeta | Release |
|---|---:|---|---|
| 8.5.13 | 8.5.13 | [`8.5.13/`](./8.5.13/) | [v8.5.13](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.5.13) |
| 8.5.12 | 8.5.12 | [`8.5.12/`](./8.5.12/) | [v8.5.12](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.5.12) |
| 8.4.28 | 8.4.28 | [`8.4.28/`](./8.4.28/) | [v8.4.28](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.4.28) |
| 8.4.27 | 8.4.27 | [`8.4.27/`](./8.4.27/) | [v8.4.27](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.4.27) |
| 8.3.37 | 8.3.37 | [`8.3.37/`](./8.3.37/) | [v8.3.37](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.3.37) |
| 8.3.36 | 8.3.36 | [`8.3.36/`](./8.3.36/) | [v8.3.36](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.3.36) |
| 8.2.12 | 8.2.12 | [`8.2.12/`](./8.2.12/) | [v8.2.12](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.2.12) |
| 8.1.25 | 8.1.25 | [`8.1.25/`](./8.1.25/) | [v8.1.25](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.1.25) |
| 8.0.30 | 8.0.30 | [`8.0.30/`](./8.0.30/) | [v8.0.30](https://github.com/Harilai/Xamp-Portable/releases/tag/v8.0.30) |

## Criterio de validación

Las fichas distinguen las comprobaciones automatizadas del paquete de una prueba funcional real de arranque de Apache y MariaDB. La primera no implica automáticamente la segunda.
