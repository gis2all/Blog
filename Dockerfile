# 获取sphinx镜像, 下载相关依赖
FROM sphinxdoc/sphinx AS sphinx
RUN pip install --upgrade pip
RUN pip install sphinx-rtd-theme recommonmark sphinx_markdown_tables

# 将宿主机上活动目录下的所有文件拷贝至 sphinx容器的/docs目录下, 即将Clone下来的项目拷贝至/docs/
COPY . /docs/
WORKDIR /docs

# 构建项目，生成html文件, 目录为 /docs/build/html/
RUN make html

#==============================

# 获取sphinx镜像
FROM nginx

# 将sphinx生成的html结果托管至nginx
COPY --from=sphinx /docs/build/html/. /usr/share/nginx/html/