使用 sphinx + markdown + nginx + docker 搭建自己的博客平台, 效果如下

![picture](/source/img/doc.jpg)


使用步骤

1. Clone项目至本地, 例如`D:\temp\blog\`目录
2. 使用docker命令build一个名为`doc`的镜像
   ```
   D:\temp\blog>docker image build -t doc . 
   ```
3. 启动容器, 访问本机8080端口 [http://localhost:8080](http://localhost:8080) 查看文档
   ```
   docker run --name doc_container -d -p 8080:80 doc
   ```


更多配置信息查看我的这篇博客 [https://blog.csdn.net/DynastyRumble/article/details/118379119](https://blog.csdn.net/DynastyRumble/article/details/118379119)