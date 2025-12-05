
# 📘 flutter_moviedb  
Aplicación Flutter multiplataforma basada en la API de *The Movie Database (TMDb)*.  
Desarrollada para practicar **Clean Architecture**, separación de capas, consumo de APIs REST y escalabilidad del código.

Incluye en este README:  
✔ Versión Español  
✔ Diagrama ASCII de arquitectura  
✔ Versión Inglés  
✔ Explicación orientada a reclutadores  

---

# 🇪🇸 **1. Versión en Español**

## ✨ Características principales
- Consulta de películas desde TMDb (populares, trending, detalles).  
- Construcción orientada a **arquitectura limpia**.  
- Separación por capas: Data → Domain → Presentation.  
- Uso de archivo `.env` para la API Key.  
- Proyecto **multiplataforma** (Android, iOS, Web, Desktop).  

---

## 🗂️ Estructura del proyecto

```
/lib
 ├── core/            # Config general, constantes, helpers
 ├── data/            # Modelos API, servicios HTTP, repositorios
 ├── domain/          # Entidades, contratos y casos de uso
 ├── presentation/    # Pantallas, widgets y manejo de estado
 └── main.dart        # Punto de entrada
```

---

## 🧱 Arquitectura (Clean Architecture)

### Diagrama ASCII

```
                 +-------------------------+
                 |      PRESENTATION       |
                 |  UI (Widgets/Pantallas) |
                 |  State Management        |
                 +------------+------------+
                              |
                              V
                 +-------------------------+
                 |        DOMAIN           |
                 | Entities / Use Cases    |
                 | Abstract Repositories   |
                 +------------+------------+
                              |
                              V
                 +-------------------------+
                 |          DATA           |
                 |  Models / DTOs          |
                 |  TMDb Service (HTTP)    |
                 |  Repository Impl.       |
                 +-------------------------+
```

---

## 🔐 Variables de entorno

Crear archivo `.env` a partir de `.env.template`:

```
API_KEY=TU_API_KEY
BASE_URL=https://api.themoviedb.org/3
```

---

## ▶️ Ejecución

```
flutter pub get
flutter run
```

Para Web:

```
flutter run -d chrome
```

---

## 🚀 Próximas Mejoras
- Añadir Riverpod/BLoC.  
- Paginación.  
- Tests unitarios.  
- Cache local (Hive).  
- Modo oscuro.  

---

---

# 🇬🇧 **2. English Version (Recruiter-friendly)**

# flutter_moviedb
Flutter multi-platform application built using **Clean Architecture** and powered by *The Movie Database (TMDb)* API.

This project demonstrates:
- Scalable code structure  
- Separation of concerns  
- Environment-based configuration  
- API integration and domain modeling  
- Multi-platform delivery (Android, iOS, Web, Desktop)

---

## 🧱 Architecture Overview

```
PRESENTATION
  - Flutter Widgets
  - Screens
  - State Management

DOMAIN
  - Entities
  - Use Cases
  - Repository Interfaces

DATA
  - Models / DTOs
  - HTTP service
  - Repository Implementations
```

---

## 🛠️ Project Structure

```
lib/
 ├── core/          
 ├── data/          
 ├── domain/        
 ├── presentation/  
 └── main.dart      
```

---

## 🔐 Environment variables

```
API_KEY=YOUR_TMDB_API_KEY
BASE_URL=https://api.themoviedb.org/3
```

---

## ▶️ Running the project

```
flutter pub get
flutter run
```

Web:

```
flutter run -d chrome
```

Desktop:

```
flutter run -d windows
```

---

## 📈 Future Improvements

- Add state management (BLoC/Riverpod)  
- Implement error handling  
- Add pagination  
- Add tests  
- Add caching layer  
- Add CI/CD  

---

# 🎯 3. Extra: Data Flow Diagram (ASCII)

```
User Action
    |
    V
Presentation Layer
(Screen / Widget)
    |
    V
Use Case (Domain)
    |
Repository Interface
    |
    V
Repository Implementation (Data)
    |
    V
TMDb API (HTTP)
    |
    V
Response → Model → Domain Entity → UI Update
```

---

Made with ❤️ for clean architecture practice.
