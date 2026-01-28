# Manual de Métodos Numéricos para EDOs y EDPs

Este repositorio contiene un manual técnico exhaustivo y una librería de algoritmos implementados en **Matlab/Octave** para la resolución de ecuaciones diferenciales ordinarias (EDO) y parciales (EDP). El proyecto integra derivaciones matemáticas detalladas en **LaTeX** con scripts funcionales, cubriendo desde métodos de un solo paso hasta esquemas implícitos para problemas parabólicos.

## 📚 Contenido del Proyecto

El manual abarca las siguientes áreas clave de la computación científica desarrolladas durante el curso:

### 1. Ecuaciones Diferenciales Ordinarias (IVP)
* **Métodos Iniciales:** Gráfica de soluciones, método de Euler y cálculo de sus cotas de error.
* **Series de Taylor:** Aproximación mediante series de potencias utilizando derivadas de la función.
* **Familia Runge-Kutta:** Implementaciones detalladas de orden 2, 3 y 4.
* **Sistemas de EDOs:** Extensión del método de Runge-Kutta para sistemas de primer orden.
* **Métodos Multipaso:** Algoritmos de Adams-Bashforth (órdenes 2, 3 y 4) y métodos implícitos de Moulton.

### 2. Problemas de Valor en la Frontera (BVP)
* **Método del Disparo:** Técnicas de disparo lineal y no lineal, utilizando el método de las secantes para ajustar la pendiente inicial.
* **Diferencias Finitas:** Resolución de problemas lineales y no lineales mediante la discretización del dominio.

### 3. Ecuaciones Diferenciales Parciales (EDP)
* **Problemas Parabólicos:** Aplicación de diferencias finitas para la evolución temporal de la solución.
* **Método de Crank-Nicolson:** Implementación de un esquema implícito de segundo orden, estable y preciso para la ecuación de difusión o calor.

### 4. Métodos Variacionales y de Colocación
* **Colocación Base:** Uso de funciones base polinomiales y sus derivadas para aproximar la solución de la EDO.
* **Rayleigh-Ritz:** Técnica variacional que minimiza una forma funcional para obtener un sistema de ecuaciones algebraicas.

## 🛠️ Tecnologías Utilizadas
* **Matlab/Octave:** Implementación de algoritmos, cálculos numéricos y generación de gráficos (plot, mesh).
* **LaTeX:** Tipografía técnica para el manual, fórmulas y tablas de resultados.

## 🚀 Guía de Uso
Cada sección del manual incluye una guía de ejecución rápida:
1. Localice el script principal (ej. `RKorden4.m` o `nolineal.m`).

2. Defina los parámetros de la EDO/EDP (intervalo, pasos $N$, condiciones iniciales) dentro del código.

3. Guarde el archivo y ejecute desde la consola de **Octave** o **Matlab**.

4. El programa generará tanto la salida numérica en consola como la gráfica representativa.

---
**Autor:** Rodolfo M. Turpo R.  
