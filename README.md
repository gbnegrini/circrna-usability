# Usability evaluation of circRNA tools
> This repository contains files to reproduce the heuristic evaluation environment described in the paper *"Usability evaluation of circRNA identification tools: Development of a heuristic-based framework and analysis"*.
> [Link to article](https://doi.org/10.1016/j.compbiomed.2022.105785).

## Contents
A small test dataset of *Homo sapiens* data is provided, including reference genome, annotation, one paired-ended library, and genome indexes (bowtie, bowtie2, bwa, STAR). Genome, annotation, and RNA-Seq data were originally obtained from [CirComPara](https://github.com/egaffo/CirComPara) test data. We also provide support scripts to install some libraries and packages.

```
├── data  # Test dataset    
│   ├── annotation
│   ├── index
|   │   ├── bowtie
|   │   ├── bowtie2
|   │   ├── bwa
|   │   └── star
│   ├── reads
│   └── reference
│   
├── support   # support scripts

```
## How to use
### Install Docker according to your OS
Docker can be installed on multiple platforms. Please refer to the specific instructions on the [official documentation](https://docs.docker.com/get-docker/).

### Build the image
Download or clone this repository. After that, build the Docker image from the Dockerfile:

```
cd circrna-usability/
docker build -t usability-env .
```

### Run a container
Create a new container to evaluate each tool.

```
docker run -v $(pwd):/circrna-usability -it usability-env bash
```

This command will create a container running an interactive shell in a Ubuntu 18.04 system. It will also map the `circrna-usability` folder on your host system to the `circrna-usability` folder inside the container. Any changes made inside this folder will reflect on both systems.

### Perform the heuristic evaluation

Download and install a circRNA tool inside the container system. Perform your heuristic evaluation and fill the [evaluation sheet](evaluation_sheet.odt).

## Citation
Guilherme Bauer-Negrini, Guilherme Cordenonsi da Fonseca, Carmem Gottfried, Juliana Herbert. Usability evaluation of circRNA identification tools: Development of a heuristic-based framework and analysis. Computers in Biology and Medicine, 2022, 105785, ISSN 0010-4825, https://doi.org/10.1016/j.compbiomed.2022.105785.
