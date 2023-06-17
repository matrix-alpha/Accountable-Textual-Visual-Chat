## Prepare datasets

It is recommended to symlink your dataset root to `Accountable-Textual-Visual-Chat/data`. If your folder structure is different, you may need to change the corresponding path.

Download the datasets from
+ CLEVR-ATVC: [[Google Drive]](https://drive.google.com/drive/folders/1TqBzkyqxOSg1hgCXF8JjpYIAuRV-uVft)
+ Fruit-ATVC: [[Google Drive]](https://drive.google.com/drive/folders/1Saaia2rRRb1nz5sKdmpzYdS4jHiMDaP0)

Save them under
```shell
Accountable-Textual-Visual-Chat
└── data
    ├── CLEVR-ATVC
    │       └── train2023
    │       │       └── tain_annotation.json
    │       │       └── V
    │       │       └── M
    │       └── test2023
    │       │       └── test_annotation.json
    │       │       └── V
    │       │       └── M
    ├── Fruit-ATVC
    │       └── train2023
    │       │       └── tain_annotation.json
    │       │       └── V
    │       │       └── M
    │       └── test2023
    │       │       └── test_annotation.json
    │       │       └── V
    │       │       └── M
