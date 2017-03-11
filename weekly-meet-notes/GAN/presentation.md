# Generative Adversarial Nets (GAN)

## Papers

- **GAN:** [Generative Adversarial Nets](https://arxiv.org/pdf/1406.2661.pdf) (2014)
- **DCGAN:** [Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks](https://arxiv.org/pdf/1511.06434.pdf) (2016)
- **cGAN:** [Image-to-Image Translation with Conditional Adversarial Networks](https://arxiv.org/pdf/1611.07004.pdf) (2016)

## How does the name come from?

- **Generative** Adversarial Nets
  * Generative model: `p(x,y)`
  * Discriminative model: `p(y|x)`
  * _Bayes rule_: `p(x,y) -> p(y|x)`

- Generative **Adversarial** Nets
  * Generator (fake money maker)
  * Discriminator (police)
  * Game theory
    * Simultaneous Game
    * Sequential Game
      * minimax game
      ![minimax](/images/minimax_move_tree.gif)

## Other Materials

- [Slides for GAN](https://www.slideshare.net/xavigiro/deep-learning-for-computer-vision-generative-models-and-adversarial-training-upc-2016)
