# 🐚 Bash Scripting – Prácticas de Sistemas Operativos (UNLP)

Colección de **scripts en Bash** utilizados como práctica de la materia **Sistemas Operativos (ISO)** en la **UNLP**.
Incluye ejercicios básicos e intermedios para trabajar con archivos, procesos, permisos, bucles y estructuras de control en shell.

## 📂 Estructura del repositorio

```
Bash-scripting-master/
└─ practica de ISO/
   ├─ ej12a.sh
   ├─ ej12b.sh
   ├─ ej12c.sh
   ├─ ej13a.sh
   ├─ ej13b.sh
   ├─ ej13c.sh
   ├─ ej14.sh
   ├─ ej16.sh
   ├─ ej17.sh
   ├─ ej18.sh
   ├─ ej19.sh
   ├─ ej20.sh
   ├─ ej22.sh
   ├─ ej23.sh
   ├─ ej24.sh
   ├─ ej25.sh
   ├─ ej26.sh
   ├─ ej27.sh
   ├─ ej28.sh
   ├─ ej29.sh
   ├─ ej30.sh
   ├─ practicaExamen1.sh
   └─ practicaExamen2.sh
```

> **Nota:** El archivo `.ej12b.sh.swp` es un backup temporal de editor (puede ignorarse).

## ⚙️ Requisitos

* **Sistema operativo:** Linux (cualquier distro)
* **Shell:** Bash (`bash >= 4`)
* **Permisos:** otorgar permisos de ejecución a los scripts:

```bash
chmod +x *.sh
```

## ▶️ Ejecución de los scripts

Para ejecutar cualquier script:

```bash
./ej12a.sh
```

o de forma explícita con Bash:

```bash
bash ej12a.sh
```

Si un script requiere parámetros:

```bash
./ej14.sh arg1 arg2
```

Consulta el propio archivo con un editor de texto para conocer los argumentos necesarios.

## 📘 Contenido por ejercicios

* **ej12a.sh – ej12c.sh:** primeros ejercicios sobre lectura/escritura de archivos y control de flujo.
* **ej13a.sh – ej13c.sh:** estructuras condicionales, manejo de parámetros y redirecciones.
* **ej14.sh – ej20.sh:** operaciones sobre procesos, permisos y bucles `while` / `for`.
* **ej22.sh – ej30.sh:** ejercicios avanzados: filtrado, pipes, expresiones regulares, etc.
* **practicaExamen1.sh / practicaExamen2.sh:** simulacros de examen con resolución en shell script.

## 🔎 Sugerencias de uso

* **Aprendizaje:** revisar y modificar los scripts para entender cada comando.
* **Pruebas:** crear archivos de entrada (si los scripts los requieren) y probar distintos casos.
* **Documentación:** leer `man` de cada comando usado en los scripts (por ejemplo, `man grep`, `man awk`).

## 👥 Créditos

Repositorio preparado como práctica académica para **Sistemas Operativos – UNLP**.
