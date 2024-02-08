{% macro check_valid_sources(graph) %}
   
   {% for node in graph %}
      
      {% do log('something', info=true)%}
      {% do log(node, info=true) %}

   {% endfor %}

{% endmacro %}