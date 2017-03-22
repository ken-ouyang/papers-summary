# ideas
## 实验计划
* 现在只做关于landscape的水墨风格的style transfer
* 难点在于什么东西该舍弃,什么东西该保留 -- 需要一定的统计信息 这种信息并不是单张图就可以得到的
* 先解决visualization的问题

* 一个关于prisma的发现:
  * 关于prisma的测试 图片大小在 1000 × 1000 只测试wave
  * 各种颜色的纯色块 （蓝白黑黄等）
  * 渐变映射（相同的颜色可以考虑横竖斜都各生成一张）
  * 条纹
  * 中文文字 （大 小 稀疏 密集）
  * 英文文字 (大 小 稀疏 密集)
  * 一些普通的图片
* 测试结果 highlight：
  * 纯色块会生成纯色块， 而且生成的是与纯色块相近的style图中的颜色
  * 输入style原图会输出与原图相似的feature
  * 对倾斜的角度不敏感， 可以准确match到边界
  * 并不是完全把texture粘贴过来，感觉更像是基于content的变化
  * 对位置不敏感， 相同的字在不同的位置， 大体变化是一样的， 但是细节有略微差异
  * Deconvolution的网格效应在放大的情况下比较明显(SR + style transfer综合的task)
  * 对边缘做过特殊处理 
  
  * 基本可以确定是用matching在做 
  * 可能用了比较低层的feature 或者 直接用过原图 -- 点保留的比较完整
  * 可能对style进行了augmentation
  * 如何进行patch matching 以及如何利用相似性取得对应信息
  * 如何进行multi scale的操作
  
  自测结果:
  * 在conv3 + gram matrix确实在会生成与prisma类似的扭曲效果 如自己的'自'，但大多数字是没有太大变化的 -- gram matrix 可能是可行的但要多尝试
  
## 关于patch-based loss
* 做region的proposal， 对region来做match或者给同属一个region的patch加上一定的限制
* 做多层以及multiscale的match 然后根据多层的结果以及各自的confidence来确定match的好坏
* 可视化做feature match的过程，探究图像的大小,旋转等对于feature match的影响
* 如果matching的confidence都不足 -- 如何去合理解决这个case
* 改变matching的标准， 比如用gram-matrix， 或者一些其他标准来达到特殊效果
* 有了合理的matching过后，如何去利用, 已经提出的swap feature和per-pixel loss， 可不可能用于color transfer等一些其他的task
## 关于perceptual loss
* 对于Gram-Matrix的理解, 如果去掉一些项或者增强一些项， 对于效果的影响
* 数学上分析
* 对于local上不match的解决方法（暂时没想到）
## 关于loss的组合:
* content 
* style 
* content + style 
## 对于选用网络的讨论:
* VGG-16, VGG-19
* RES
* Inception Net
## 对于人像特殊处理
* 如果有人像关键点，可用于纠正错误的以及不该存在的matching（比如背景或者其他身体部位出现眼睛）
* 可以先做人像的alignment
* Matting以及加一些refinement
## 对于realistic photography的特殊处理
* 白天变黑夜， 夏天变冬天
## 与其他算法结合
* patch matching based method与semantic segementation相结合 -> 语义上像的地方增强prior
* 与search算法相结合， 给每个content配合上适合的style

## 关于初始化对结果的影响:
* 用content初始化
* 用style初始化
* 用Random Noise初始化 (可以用多种Random Noise, 以及Noise本身的大小程度等等)
* 初始时用content或者style的信息，但不完全与之相等

## 关于训练feed-forward的网络:
* Transformer结构的改变, 如多个Transformer的串联与并联来做训练
* GAN的训练方法 - 还需要看新的几篇paper， W-GAN等等
* 尝试另外的generator网络例如pixel-cnn
* 尝试使用decoder来decode feature
  * decoder的设计与initialize
  * decoder的训练，所用的数据集

## 现在还没有看明白的paper:
* Demystifying Neural Style Transfer
* Pixel CNN++
