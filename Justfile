build:
    pandoc --from markdown+smart --to=html5 --css=static/css/styling.css -s \
        index.md \
        -o index.html

validate-jsonschema:
    check-jsonschema -v --schemafile http://json-schema.org/draft-07/schema \
        schema/array_index.json \
        schema/auxiliary_array.json \
        schema/cv_list.json \
        schema/data_processing.json \
        schema/file_description.json \
        schema/instrument_configuration.json \
        schema/ms_run.json \
        schema/mzpeak_index.json \
        schema/param.json \
        schema/sample.json \
        schema/scan_settings_list.json \
        schema/software.json

