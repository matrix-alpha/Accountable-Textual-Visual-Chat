![Python >=3.8](https://img.shields.io/badge/Python->=3.8-blue.svg)
![PyTorch >=1.1](https://img.shields.io/badge/PyTorch->=1.1-yellow.svg)

## Accountable Textual-Visual Chat Learns to Reject Human Instructions in Image Re-creation

The *official* repository for [Accountable Textual-Visual Chat Learns to Reject
Human Instructions in Image Re-creation](https://arxiv.org/pdf/2303.05983.pdf).

![ The overall framework of ATVC.](./assets/atvc.png)

### Requirements

- Python 3.8
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

### Dataset

Please refer to [DOWNLOAD.md](data/DOWNLOAD.md) for dataset preparation.


### Pretrained Models
Please refer to [pretrained-models](pretrained-models/README.md) to download the released models.


### Train

#### Training commands

+ To train the first stage:
```shell
bash dist_train_vae.sh ${DATA_NAME} ${NODES} ${GPUS}
```
+ To train the second stage:
```shell
bash dist_train_atvc.sh ${VAE_PATH} ${DATA_NAME} ${NODES} ${GPUS}
```

#### Arguments

+ `${VAE_PATH}`: path of pretrained vae model.
+ `${DATA_NAME}`: dataset for training, e.g. `CLEVR-ATVC`, `Fruit-ATVC`.
+ `${NODES}`: number of node.
+ `${GPUS}`: number of gpus for each node.


### Test

#### Testing commands

+ To test image reconstruction ability of the first stage:
```shell
bash gen_vae.sh ${GPU} ${VAE_PATH} ${IMAGE_PATH}
```
+ To test atvc final model:
```shell
bash gen_atvc.sh ${GPU} ${ATVC_PATH} ${TEXT_QUERY} ${IMAGE_PATH}
```

#### Arguments

+ `${GPU}`: id of one gpu, e.g. `0`.
+ `${VAE_PATH}`: path of pretrained vae model.
+ `${IMAGE_PATH}`: image path for reconstrction, e.g. `input.png`.
+ `${ATVC_PATH}`: path of pretrained atvc model.
+ `${TEXT_QUERY}`: text-based query, e.g. `"Please put the small blue cube on top of the small yellow cylinder."`.


### License

`ATVC` is released under the [Apache 2.0 license](LICENSE).


### Citation
If you find this code useful for your research, please cite our paper
```
@article{zhang2023accountable,
  title={Accountable Textual-Visual Chat Learns to Reject Human Instructions in Image Re-creation},
  author={Zhang, Zhiwei and Liu, Yuliang},
  journal={arXiv preprint arXiv:2303.05983},
  year={2023}
}
```

## Acknowledgement

Our code is learned from [DALLE-pytorch](https://github.com/lucidrains/DALLE-pytorch) and [CLIP](https://github.com/openai/CLIP). We would like to thank all the people who help label text-image pairs and participate in human evaluation experiments. We hope our explorations and findings contribute valuable insights regarding the accountability of textual-visual generative models.

## Contact

This project is developed by Zhiwei Zhang ([@zzw-zwzhang](https://github.com/zzw-zwzhang)) and Yuliang Liu ([@Yuliang-Liu](https://github.com/Yuliang-Liu)).
