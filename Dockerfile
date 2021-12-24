FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel
RUN conda upgrade --all
RUN pip install tqdm torchvision albumentations ttach pandas
RUN pip install cython easydict torchcontrib yacs visdom pycocotools mmcv pycocotools
RUN pip install timm einops tensorboard torchnet numpy pandas geopandas
RUN pip install torch-scatter==2.0.5
RUN apt-get update
RUN pip uninstall opencv-python
RUN pip install opencv-python-headless
RUN conda install git
RUN pip install 'git+https://github.com/facebookresearch/detectron2.git'
RUN pip install git+https://github.com/mcordts/cityscapesScripts.git
