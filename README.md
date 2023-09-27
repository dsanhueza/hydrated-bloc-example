# Ejemplo flutter_bloc - hydrated_bloc y freezed para mantener el(los) estado(s) de una app.

Versión de flutter utilizada 3.7.12

## Getting Started

1) Instalar las dependencias
   - hydrated_bloc
   - path_provider
2) Definir HydratecBloc.storage en el archivo main.dart
3) Extender el bloc con HydratedMixin y agregar el método hydrate() al constructor del bloc
4) Generar los metodos override from y to JSON
5) En el metodo fromJSON especificar la llave del json que viene por parametro, en este caso 'selectedCategory'
6) En el metodo toJSON retornar el estado del bloc en cuestion en este caso 'onCategorySelect' y especificar en el json
   la misma llave que en el paso 5 (selectedCategory).
