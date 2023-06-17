![Python >=3.6](https://img.shields.io/badge/Python->=3.6-blue.svg)
![PyTorch >=1.1](https://img.shields.io/badge/PyTorch->=1.1-yellow.svg)

## Accountable Textual-Visual Chat Learns to Reject Human Instructions in Image Re-creation

The *official* repository for [Accountable Textual-Visual Chat Learns to Reject
Human Instructions in Image Re-creation]().

![ Qualitative results of CLEVR-ATVM dataset.](./assets/atvc.png)

### Requirements

- Python 3.6
- matplotlib == 3.1.1
- numpy == 1.19.4
- pandas == 0.25.1
- scikit_learn == 0.21.3
- torch == 1.8.0

### Installation

We provide an environment file; ``environment.yml`` containing the required dependencies. Clone the repo and run the following command in the root of this directory:
```
conda env create -f environment.yml
```

### Train

#### Training commands

+ To train the first stage:
```shell
bash dist_train_vae.sh
```
+ To train the second stage:
```shell
bash dist_train_atvc.sh
```

### Test

#### Testing commands

+ To test image reconstruction ability of the first stage:
```shell
bash gen_vae.sh
```
+ To test atvc final model:
```shell
bash gen_atvc.sh
```

## Citation
If you find this code useful for your research, please cite our paper
```
@article{zhang2023accountable,
  title={Accountable Textual-Visual Chat Learns to Reject Human Instructions in Image Re-creation},
  author={Zhang, Zhiwei and Liu, Yuliang},
  journal={arXiv preprint arXiv:2303.05983},
  year={2023}
}
```
