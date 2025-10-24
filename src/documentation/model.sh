#!/bin/bash
  sparql --results=TTL --data=../main/resources/be/vlaanderen/omgeving/data/id/conceptscheme/hoofdfunctie_stedenbouw/hoofdfunctie_stedenbouw.ttl  --query model.rq | sed -e 's;label;Label;'  > model.ttl
  rdf2dot  model.ttl | dot -Tpng > model.png
  rdf2dot  model.ttl  > model.dot

