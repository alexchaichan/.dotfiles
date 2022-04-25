# import some libraries

## import yaml settings-file
import yaml
with open("settings.yaml") as yaml_stream:
    settings = yaml.load(yaml_stream)

# import classe
from _class import CamelCase

