# SHARK ATTACKS - Pandas Project
## Análisis de los ataques de tiburones en los siglos XX y XXI

### Primeros pasos - Limpieza
Antes de empezar a analizar, hay que echar un vistazo a los datos para ver en qué estado están. 
Este archivo de inicio contenía muchos datos sucios y hay que limpiarlos. Primero, eliminar las columnas y filas duplicadas, comprobar el data type en las columnas para que sea el mismo y poder realizar operaciones.
También, renombrar columnas que tienen mal escrito los nombres.
Es muy importante comprobar qué columnas tienen missing values y cuantos, para decidir si los eliminamos o no. Por ejemplo, casi el 100% de Unnamed 22 y Unnamed 23 están vacías, las podemos borrar. La columna Species también está muy vacía, pero no merece la pena borrarla porque podemos sacar alguna conclusión de los datos que hay.
Además, eliminamos los años menores al 1900, y de esta forma el análisis será más actual.

### Análisis
Primero, he creado el Ranking de países más afectados por ataques de tiburones. Podemos ver que un 37% de los accidentes de tiburones se producen en USA. Después en Australia, con un 21%. Al ranking le sigue South África, con un 10%.

Después, he creado el Ranking de años más sangrientos por ataques de tiburones. Podemos ver que el año más sangriento es el 2015 con un 3% de accidentes. Vemos que del 2011 al 2015 hubo el máximo de ataques de tiburones desde el siglo XX.

También podemos ver el Ranking de las actividades más realizadas en los ataques de tiburones. La actividad más realizada es el Surf con un 18%, después nadar con un 15% y después pescar con un 7%.

Filtramos el país y el año donde han ocurrido más ataques de tiburones, es decir, EEUU y el 2015: tenemos 72 casos de ataques. De estos casos, un 24% son mujeres y un 76% son hombres. Los hombres, por lo general, son más atacados.

Podemos ver la frecuencia de accidentes en cada Área, ordenado por País. Florida es la zona más afectada, después New South Wales (AUS), y en tercer lugar, California. 

Por último, queremos saber qué especie de tiburón se repite más, por lo tanto es más propensa a atacar. Sacamos la conclusión de que la especie más peligrosa o con más tendencia a atacar es el tiburón blanco, que además suele aparecer más por Western Cape Province y California.
El tiburón blanco no sólo ataca en EEUU, también en Australia (west & south sobretodo).







