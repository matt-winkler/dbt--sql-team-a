{% macro check_valid_sources(graph) %}
   
   {# if execute #}
     
     {% for node in graph.nodes.values() | selectattr("resource_type", "equalto", "source") %}
       {% do log(node.unique_id, info=true) %}
     {% endfor %}

  {# endif #}

{% endmacro %}