# Modeling peroxisomal dysfunction in multiple sclerosis

This repository offers a workflow that performs RNA-Seq analysis and integrates the results with a protein-protein interaction (PPI) network to link transcriptomic changes in MS with broader aspects of peroxisomal biology

## Strategy
The basic strategy involves using RNA-seq data as the observed dataset and the PPI network as prior knowledge to build a context-specific sub-network. This sub-network helps elucidate the role of the peroxisome pathway in multiple sclerosis. 

## Overview

The workflow includes the following steps:
1. **Preprocessing RNA-Seq Data**: 

    1.1 The dataset is sourced from this [Paper](https://www.nature.com/articles/s41467-019-14118-w#data-availability)

    1.2 [Dataset](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE141797)

    1.3 [Raw Data Retrieval](./data/GSE141797/download): I used the NCBI SRA tool to fetch the dataset

    1.4 [FASTQ Conversion](./data/GSE141797/sra2fq.sh): The SRA samples were converted into FASTQ files

    1.5 [RNA-seq Pipeline](./pipelines/rnaseq): Building an RNA-seq pipeline from scratch in a short time is challenging, so I used the [nf-core RNA-seq pipeline](https://nf-co.re/rnaseq/3.18.0/) with its default parameters on the dataset. This pipeline integrates all the essential functions, including quality control, trimming, and alignment.

2. **Differential Expression Analysis**: Identifying differentially expressed genes (DEGs). Please check out this Jupyter [notebook](./pipelines/ana_1.ipynb) for complete details.
3. **PPI Network Integration**: Mapping DEGs onto a PPI network to identify key interactions. Please check out this Jupyter [notebook](./pipelines/ana_2.ipynb) for complete details

## Requirements

- **Programming Languages**: Python, R, nextflow
- **Tools**:
    - DESeq2, edgeR, ggplot2, png, grid, gridExtra for R
    - pandas, requests, networkx, matplotlib, io, scipy for python

## Clone

```bash
git clone https://github.com/zhqingit/pero_ms.git
```

## Results
Kindly refer to the [analysis](./pipelines/ana_2.ipynb) for further details.

## Contact

For questions or feedback, please contact [email].
