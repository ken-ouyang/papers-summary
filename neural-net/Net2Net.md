# Methodology 

*  Teacher-Student structure
  * Strategy1: Random init larger student net / Learn from the teachers' hidden layer output / Not works very well
  * Strategy2: Net2WiderNet. Widen each layer / copy weight from the small teacher net 
  * Strategy3: Net2DeeperNet. Go deeper with layer / copy weight from the small teacher net
