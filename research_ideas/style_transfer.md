# A summary on the state-of-art methods: 
* The first method: a [neural style transfer algorithm](../neural-net/A_Neural_Algorithm_of_Artistic_Style.md)(based on optimization)
* Then three feed-forward methods:
  * Use the loss function proposed in the first method
  * Three different transformation networks
    * [DC(Res)GAN](../neural-net/Perceptual_Losses_for_Style_Transfer_and_Super_Resolution.md)
      * Generative Net: pre-conv + two ds-conv + five res-block + two fs-convDisc
      * Discriminative Net: VGG-16
    * [MGAN]()
      * Generative Net: VGG-16 ReLU4_1 + conv + 3 fs-conv 
      * Discriminative Net: for texture(style)  add a conv layer after VGG-16 ReLU3_1 for training
    * [Texure_Net]()
      * Generative Net: multi-scale input， k-level input and join the feature by the weighted sum
      * Discriminative Net: VGG-16
  * Seems that DC(Res)GAN performs out of the other two nets
* A more advanced version: 
  * [Multi-Style Transfer]()
    * G and D same as DC(Res)GAN while using the conditional instance normalization
  
# Ideas
* The loss function: 
  * perceptual loss (Gram Matrix ? )
  * content loss （Euclidean Difference of high-level features ?）
  * 一些关于content loss的想法： 
   * 用现有的per-pixel loss是很难模拟国画这种抽象的风格 （可以用只带content_loss的optimization method来验证）
   * 方案一： 首先提出来的大部分feature可能只有少部分是反应content的核心信息的， 那如果我提出这一部分feature 来还原content， 是否能使表现形式更加抽  象。 （也就是生成图片的分类要与content一类 但却不需要每一个feature都接近）
   * 方案二： 
* Improve the feed-forward network 
  * pooling layers / deconvolution layers -> End-to-End layer
  * conditional instance normalization -> improvement
  * using pixelRNN/CNN net 
  * one encoder two decoders (problem: hwo to train the style image decoder)
  * a coarse to fine method (from high level to low level features)
  * training a net to distinguish different styles and using the features of this net to calculate style loss 
  * guided filter?
* Apply RL（How to define a reward）
* Fast Style Transfer (How to squeeze network)
