# 🐱 Cat Breeds App - Prueba Técnica Ludycom

Aplicación Flutter que muestra un catálogo de razas de gatos con búsqueda y vista detallada.

## 📱 Funcionalidades

- **Lista de razas de gatos** con información básica
- **Búsqueda en tiempo real** por nombre
- **Vista detallada** de cada raza
- **Imágenes** de cada raza

## 🛠️ Tecnologías

- Flutter 3.29.0
- Provider (gestión de estado)
- GoRouter (navegación)
- HTTP (API calls)
- Clean Architecture

## 🚀 Instalación

```bash
# Clonar repositorio
git clone https://github.com/jgravier1/ludycom_test.git
cd ludycom_test

# Instalar dependencias
flutter pub get

# Ejecutar app
flutter run
```

## 📋 Características Implementadas

✅ **Arquitectura limpia** - Separación por capas  
✅ **Gestión de estado** - Provider pattern  
✅ **Consumo de API** - The Cat API  
✅ **Búsqueda funcional** - Filtrado en tiempo real  
✅ **Navegación** - GoRouter  
✅ **UI responsive** - Adaptable a diferentes pantallas  
✅ **Manejo de errores** - Estados de carga y error  

## 📂 Estructura

```
lib/
├── data/           # Modelos y repositorios
├── domain/         # Entidades y casos de uso  
├── presentation/   # UI y providers
└── main.dart      # Punto de entrada
```

## 🌐 API

Utiliza [The Cat API](https://thecatapi.com/) para obtener información de razas de gatos.

## 👨‍💻 Desarrollador

**Juan Camilo Gravier Ortega**  
Prueba técnica para Ludycom - 2025

---

💡 *Aplicación desarrollada siguiendo buenas prácticas de Flutter y Clean Architecture*