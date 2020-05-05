#!/bin/bash

JQ=$(which jq)

error=0
for ii in ../*.ipynb; do
  echo "Validating $ii"

  out_name=test_out_$(basename ${ii})

  # Try to detect kernel name
  if [[ -n "$JQ" && -x "$JQ" ]]; then
    KERNEL=$(cat $ii | $JQ -r .metadata.kernelspec.name | sed 's/^conda_//')
    if [ -z "$KERNEL" ]; then 
      KERNEL=python3
    fi
  else
    KERNEL=python3
  fi

  jupyter nbconvert --to notebook --ExecutePreprocessor.kernel_name=python3 --execute "${ii}" --output tests/${out_name}
  if [ $? -ne 0 ]; then
    echo "... $ii failed validation"
    error=1
  else
    echo "... success"
  fi
done
