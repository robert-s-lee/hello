[![gridai hello](https://github.com/robert-s-lee/hello/actions/workflows/gridai_run.yml/badge.svg?branch=main)](https://github.com/robert-s-lee/hello/actions/workflows/gridai_run.yml)

# Run Locally

Step by Step Instruction
This instruction assumes access to a laptop with bash and conda installed. For those with restricted local environment, please use Jupyter and click on Terminal on Grid.ai Session.

```
Local python environment setup
# conda init bash 
conda init bash # exit and come back
# create conda env
conda create --name gridai python=3.8
conda activate gridai
# install packages
pip install lightning-grid
pip install optuna
pip install pytorch_lightning
pip install torchvision
# login to grid
grid login --username <username> --key <grid api key>
```

# Run with Dockerfile

- Setup Grid CLI
```
conda init bash 
conda create --name gridai python=3.8
conda activate gridai
pip install lightning-grid
grid login --username <username> --key <grid api key>
```

- Run from CLI
```
git clone https://github.com/robert-s-lee/hello
cd hello
grid run --dockerfile Dockerfile --name hello-docker-$$ hello.py 
grid status hello-docker-$$
grid logs --show-build-logs hello-docker-$$
```