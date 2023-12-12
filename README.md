# gnatss-fortran-benchmark

Welcome! This repository contains code to benchmark the GNATSS code against Chadwell's Fortran code.

There are two important directories:

- [`data`](data/README.md): Contains the input data files for the benchmarking.
- [`chadwell`](chadwell/README.md): Contains the Fortran code results to compare against.

The configuration for GNATSS can be found in [`config.yaml`](./config.yaml) file.
This file will be read automatically during a GNATSS run.

## Running on the Cloud (Github Codespaces)

This repository is configured to work with Github Codespaces.
To use Github Codespaces to run the benchmark, simply click on the button below:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/seafloor-geodesy/gnatss-fortran-benchmark/tree/main)

You'll be directed to a page that asks for various configurations for codespace.
You can leave the default values and click on "Create Codespace".
Github will then build the codespace for you, which may take a few minutes ☕.

Once your codespace is launched, follow the instructions below:

- [Visual Studio Code](https://code.visualstudio.com/) Interface will open up within your browser.
- On the left hand side, you'll see a file explorer. Navigate to a file called `main.ipynb` and open it.
- Once the notebook opens up, you need to select the kernel to run the notebook.
  - Click on the "Select Kernel" button on the top right corner of the notebook.
  - This will open up a drop down menu in the top center of the page.
    Select "Python Environments...", and then
    select "notebook (Python 3.10.13)" conda environment from the list.
  - You'll know that the kernel is selected when you see
    "notebook (Python 3.10.13)" in the top right corner of the notebook.
- Now you can run the notebook by clicking on the "Run All" button on the top left corner of the notebook.
  Or you can choose to run the cells one by one to see what's happening in each step.

### What is Github Codespaces?

A codespace is "a development environment that's hosted in the cloud".
This particular codespace uses the [`environment.yml`](conda/environment.yml)
to create a conda environment with all the dependencies needed to run the benchmark.

GitHub currently gives every user [120 vCPU hours per month for free](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts), beyond that you must pay. **So be sure to explicitly stop or shut down your codespace when you are done by going to this page (https://github.com/codespaces).**

## Running Locally

Below are instructions for running the benchmark locally in your own machine.

### Setting up for the benchmark

To run the benchmark, you will need to have GNATSS installed.
We recommend using `conda` to install GNATSS for quick setup.
You can find the conda environment file in [`conda/environment.yml`](./conda/environment.yml).

Simply install that environment and activate it:

```bash
conda env create -f conda/environment.yml
conda activate gnatss-benchmark
```

### Running the benchmark

Once the environment is setup, you can run the benchmark by spinning up
a Jupyter lab server.

```bash
jupyter lab
```

Then, open the [`main.ipynb`](./main.ipynb) notebook and run the cells.
