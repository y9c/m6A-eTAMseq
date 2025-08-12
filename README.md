# m<sup>6</sup>A-eTAM-seq

![diagram](./docs/diagram.svg)

## Qucik start (Run in docker environment)

- Prepare configuration file

minimum configuration example:

```yaml
genome_index: ~/reference/genome/Ho mo_sapiens/hisat2_tx_3n/GRCh38.release110

reference:
  contamination:
    - test/ref/contamination.fa.gz
  genes:
    - test/ref/spikein.fa
    - test/ref/human_rRNA.fa

samples:
  HeLa-treat-rep1:
    data:
      - R1: test/data/SRR21070405_1.fastq.gz
        R2: test/data/SRR21070405_2.fastq.gz
      - R1: test/data/SRR21070406_1.fastq.gz
  HeLa-treat-rep2:
    data:
      - R1: test/data/SRR21070404_1.fastq.gz
```

advanced configuration:

_Refer to documentation at [https://y9c.github.io/m6A-eTAMseq/](https://y9c.github.io/m6A-eTAMseq/)_

- Install apptainer and run

```bash
apptainer run -B /data docker://y9ch/etamseq -c data.yaml -j 48
```

## Local environment and customization

- If you want to test the code under local environment, you can clone the repository by the following command:

  ```bash
  git clone --recurse-submodules https://github.com/y9c/m6A-eTAMseq.git
  ```

- This package has been tested on Linux operating systems. It requires the following software dependencies:

  - [Python](https://www.python.org/downloads/) 3.9 or higher
  - [Snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html) 8.0.0 or higher
  - [hisat2-3n](https://github.com/DaehwanKimLab/hisat2/tree/hisat-3n)
  - [cutseq](https://github.com/y9c/cutseq)

- Run the code by snakemake

  ```bash
  snakemake -j 48 --configfile data.yaml -s Snakefile
  ```

## Changelog

- The data pre-processing stesps are now based on [trichromat](https://github.com/y9c/trichromat)

## Citation

- Coming soon
- Use our [previous work](https://github.com/shunliubio/eTAM-seq_workflow) if you try to reproduce the results of the eTAMseq v1 protocol

&nbsp;

<p align="center">
<img
  src="https://raw.githubusercontent.com/y9c/y9c/master/resource/footer_line.svg?sanitize=true"
/>
</p>
<p align="center">
Copyright &copy; 2024-present
<a href="https://github.com/y9c" target="_blank">Chang Y</a>
</p>
<p align="center">
