FROM mcr.microsoft.com/devcontainers/python:3.12 as base


# ---------------------------------------------------
# 依存パッケージやビルド・デバッグ用ツールなど
# ---------------------------------------------------
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    # apt-utils \
    # git \
    # cmake \
    # gcc \
    # build-essential \
    # wget \
    # unzip \
    # zlib1g \
    locales-all \
    && apt autoremove -y \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/*


# ---------------------------------------------------
# ロケール
# ---------------------------------------------------
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ=Asia/Tokyo


# ---------------------------------------------------
# port
# ---------------------------------------------------
EXPOSE 3000
EXPOSE 8000

