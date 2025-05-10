configfile: "default.yaml"


module trichromat_workflow:
    snakefile:
        # You can also link to the trichromat workflow directly from github
        # github("y9c/trichromat", path="Snakefile", tag="main")
        "external/trichromat/Snakefile"
    config:
        config


use rule * from trichromat_workflow as trichromat_*
