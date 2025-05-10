---
title: Quick Start
nav_exclude: false
nav_order: 2
---

<!-- prettier-ignore-start -->
# Quick Start
{: .fs-9 }
<!-- prettier-ignore-end -->

1. **Specific the path of references (_.fasta_) and samples (_.fastq_) in a configure file (_.YAML_).**

   For example, write down and save the following block into a text file and named it as `data.yaml`.

   ```yaml
   genome_index: ~/reference/genome/Homo_sapiens/hisat2_tx_3n/GRCh38.release110

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

2. **Run all the analysis by one command**:

   ```bash
   git clone --recurse-submodules https://github.com/y9c/m6A-eTAMseq.git
   snakemake -s Snakefile -c config.yaml
   ```
