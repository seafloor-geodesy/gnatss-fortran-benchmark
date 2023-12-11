# gnatss-fortran-benchmark

Welcome! This repository contains code to benchmark the GNATSS code against Chadwell's Fortran code.

There are two important directories:

- [`data`](data/README.md): Contains the input data files for the benchmarking.
- [`chadwell`](chadwell/README.md): Contains the Fortran code results to compare against.

The configuration for GNATSS can be found in [`config.yaml`](./config.yaml) file.
This file will be read automatically during a GNATSS run.

## Setting up for the benchmark

To run the benchmark, you will need to have GNATSS installed.
We recommend using `conda` to install GNATSS for quick setup.
You can find the conda environment file in [`conda/environment.yml`](./conda/environment.yml).

Simply install that environment and activate it:

```bash
conda env create -f conda/environment.yml
conda activate gnatss-benchmark
```

## Running the benchmark

Once the environment is setup, you can run the benchmark by spinning up
a Jupyter lab server.

```bash
jupyter lab
```

Then, open the [`main.ipynb`](./main.ipynb) notebook and run the cells.
