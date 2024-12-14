# LocalMind

让本地部署的大模型成为你的专属智能大脑！

LocalMind 是一个开源项目，旨在帮助用户轻松部署、管理和使用本地化的大语言模型（LLM），提供灵活、安全且高效的 AI 体验。无论是个人开发者还是企业团队，都可以通过 LocalMind 打造属于自己的 AI 助手。

---

## 项目特点

- **简单易用**：通过直观的配置文件和命令行工具，即可完成部署。
- **支持多种模型**：兼容主流的大语言模型（如 LLaMA、GPT-NeoX、Stable Diffusion 等）。
- **高性能**：优化的推理引擎和高效的资源管理，充分利用本地硬件性能。
- **数据安全**：所有数据处理均在本地完成，无需上传到云端，确保隐私安全。
- **模块化设计**：支持插件扩展，灵活定制功能。

---

## 快速开始

以下步骤将帮助你快速部署一个大语言模型。

### 1. 租用实例

确保算力实例满足以下基本要求：

- **操作系统**：Ubuntu 22.04+
- **硬件**：
  - GPU (推荐 NVIDIA GPU，支持 CUDA)
  - 至少 16GB 内存
  - 充足的存储空间
- **依赖工具**：
  - Python 3.10+
  - PyTorch 2.0+
  - JupyterLab
  - Git

### 2. 安装 LocalMind

实例启动成功后，在快捷工具栏会出现 JupyterLab 链接。

进入终端界面，输入以下代码

```bash
# 克隆项目代码
git clone https://github.com/twotwo/LocalMind.git
# 如果访问 github.com 失败，可以试一下
git clone https://github.site/twotwo/LocalMind.git
```

### 3. 安装服务

在 JupyterLab 界面上，切换到项目目录：LocalMind
根据需要选择对应的安装脚本(*-installation.ipynb)：
  - ollama-installation.ipynb
  - sd-webui-installation.ipynb

按照脚本中的提示，完成服务的安装和启动

### 4. 访问服务

在管理实例的界面上，选择“自定义服务”，拷贝对应的启动脚本

黏贴到本地的终端中，类似

```bash
ssh -CNg -L 7860:127.0.0.1:7860 root@gpucloud.com
```

访问 [http://localhost:7860](http://localhost:7860) 开始使用！

---

## 常见问题

### 1. 如何加速模型推理？

- 确保使用 GPU 并安装相应的加速库（如 NVIDIA 的 `cuDNN`）。
- 启用量化（quantization）选项以减少模型大小。

### 2. 模型加载失败怎么办？

- 检查 `model_path` 是否正确。
- 确认硬件资源是否满足模型运行需求。

---

## 社区与支持

欢迎加入 LocalMind 社区！

- 提交问题或功能请求：[GitHub Issues](https://github.com/twotwo/LocalMind/issues)
- 贡献代码或文档：[贡献指南](CONTRIBUTING.md)
- 加入讨论：[社区论坛]()

---

## 许可证

本项目基于 [MIT License](LICENSE) 开源。

