# Information 
* Paper: [Perceptual Losses for Real-Time Style Transfer and Super-Resolution](https://arxiv.org/pdf/1603.08155v1.pdf)
* Author: Justin Johnson, Alexandre Alahi, Li Fei-Fei
* Implementation: [torch](https://github.com/jcjohnson/fast-neural-style), [tensorflow](https://github.com/lengstrom/fast-style-transfer)

# Summary 
* what:
  * Combining the advantages of feed-forward NN (per-pixel loss) method and optimization-based method (perceptual loss) method. Their network can get a comparable result to optimization-based method in real-time.
* how: 
  * Two basic components: image transformation network and loss network 
  * Image transformation networks： follow the architectural guidelines of DCGAN 
    * For style transfer: A convolutional layer with stride 1, Two convolutional layer with stride 2, 
    Five residual blocks, Two convolutional layers with stride 1/2. More details can be found in the [supplimentary matirials](http://cs.stanford.edu/people/jcjohns/papers/eccv16/JohnsonECCV16Supplementary.pdf)   
    * Why using stride 2 to resize the image:  fast computing and larger respective field size  
  * Loss Network
    * A pre-trained VGG-16 network on imageNet dataset.
    * Two kinds of losses:
      * Feature Reconstruction Loss: Average Euclidean distance between feature representations of content image and output image.
      * Style Reconstruction Loss: Euclidean distance between Gram Matrix of style image and output image. 
      * How to calculate Gram matrix: 
        * The size of gram matrix is [C * C]. C is the channel number of j th layer. 
        * Take the activations at j th layer and reshape it as one-dimension vector
        * Take pairs of activations from style image and output image, performs scalar product and sum it up as an element of gram matrix. 
      * The total loss is a weighted sum of content and style losses of selected layers.

* result: 
* important details: 

# Page-by-Page walk-through 

# Test Result


