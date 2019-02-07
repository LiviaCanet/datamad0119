# Pipeline - World Population Percentage Change

He creado un Pipeline que genera dos gráficas .png para comparar la población de ciertos países.

### Los archivos del repositorio your-code:
1-. country_population.csv - La base de datos descargada de Kaggle (World Bank).
2-. demo_wrangling.ipynb - El jupyter donde he trabajado para hacer el wrangling.
3-. PipelineWorldPopulationPercentageChange.ipynb - El Pipeline en formato ipynb.
4-. PipelineWorldPopulationPercentageChange.py - El Pipeline en formato py, convertido para que pueda ejecutarlo desde la terminal
5-. Este README.md
6-. Output: Imagen 1 (es generada después de ejecutarlo en la terminal)
7-. Output: Imagen 2 (es generada después de ejecutarlo en la terminal)

### La idea:
La idea es que cada año, una vez se recopilen los datos del censo de población de cada país y se actualice la base de datos del World Bank, este Pipeline puede generar las dos gráficas de representación de datos sin tener que volver a programar el código.

### Análisis:
1-. Gráfica 1 : Most populated countries comparison - Population
    Podemos ver cómo China en los 80's alcanza el billón de habitantes y sigue creciendo hasta los 00's que frena un poco por el single child policy.
    Igualmente India llega al billón más adelante, en los 00's, y sigue creciendo hasta alcanzar prácticamente a China hoy en día.
    
2-. Gráfica 2 : Percentage Change - Most to least populated contries comparison
    Vemos en esta tabla de Percentage Change cómo curiosamente Nauru, que es un estado de Micronesia, situado en el océano Pacífico, que comprende una sola isla justo al sur de la línea del ecuador; cambia drásticamente de población. En el 2014, Nauru aumentó su poplación en casi un 10% (que es un montón). Según datos publicados por la ONU, esto se debió a entrada de inmigrantes (refugiados). También es interesante fijarse en la línea roja, España, vemos como en los años 80's la población disminuye. En los 00's sube mucho, hasta un 2%.
    
### Reporting
El output, las dos imágenes, se descargan directamente a mi carpeta your-code. En terminal aparece el mensaje: Se ha guardado la imagen + name de la imagen.

