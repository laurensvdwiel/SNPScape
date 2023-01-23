# SNV-Scape #

An implementation to generates VCF files containing Single Nucleotide Variant Mutational Space of a genomic region or a gene based on the Reference Genome.

## Citation ##

If you make use of this software for academic purposes, please cite the software [10.5281/zenodo.7562930](https://doi.org/10.5281/zenodo.7562930).

## How to run (Containerized, Legacy see below) ##

### Dependencies ###

Please ensure you have the following software installed on your machine:

	docker

You can get docker [here](https://www.docker.com/get-docker)

## Build Docker image ##

Run the following command in the root directory of this project

    docker build -t snv_scape .

### Example run ###

Example for a hypothetical gene

    docker run --rm -v $(pwd):/app --name snv_scape_container snv_scape python /app/snv_scape/snv_scape.py --gene_name=TESTGENE

This should result in the following output:
    
    ...


## TBD

[//]: # (The arguments '--n_permutations', '--parallel', `--random_seed`, and, `--correction` are optional and need not be included.)

[//]: # ()
[//]: # (For further information on arguments, please refer to the help file:)

[//]: # ()
[//]: # (    -h, --help            show this help message and exit)

[//]: # (    --gene_name GENE_NAME)

[//]: # (                          &#40;Required&#41; Name of the gene of interest, example)

[//]: # (                          usage: --gene_name=BRCA1)

[//]: # (    --variant_cDNA_locations VARIANT_CDNA_LOCATIONS)

[//]: # (                          &#40;Required&#41; cDNA based variant locations, example)

[//]: # (                          usage: --variant_cDNA_locations=10,50,50,123)

[//]: # (    --cDNA_length CDNA_LENGTH)

[//]: # (                          &#40;Required&#41; total cDNA length of the gene &#40;including)

[//]: # (                          stop codon&#41;, example usage: --cDNA_length=1337)

[//]: # (    --n_permutations N_PERMUTATIONS)

[//]: # (                          &#40;Optional&#41; total nunber of permutations,)

[//]: # (                          default=100000000 &#40;1.00E+08&#41;, example usage:)

[//]: # (                          --n_permutations=100)

[//]: # (    --parallel PARALLEL   &#40;Optional&#41; should the algorithm make use of parallel)

[//]: # (                          computation?, default=True, example usage:)

[//]: # (                          --parallel=True)

[//]: # (    --random_seed RANDOM_SEED)

[//]: # (                          &#40;Optional&#41; The seed used for initialization of the)

[//]: # (                          random permutations, default=1, example usage:)

[//]: # (                          --random_seed=1)

[//]: # (    --correction CORRECTION)

[//]: # (                          &#40;Optional&#41; The number of genes the p-value must be)

[//]: # (                          corrected for in a Bonferonni manner, default=1,)

[//]: # (                          example usage: --correction=1)

[//]: # ()
