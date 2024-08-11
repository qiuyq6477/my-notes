
input transfer：将输入发送给服务器，服务器处理游戏逻辑，fusion，netick，
client side authority：客户端自己处理逻辑，将结果发送给服务器，net code，fishnet，mirror
tick rates：1s中tick多少次
- update is not equal send rate
- csgo,overwatch, 60-120hz
- dota,20-60hz
- turn base game, 1-20hz
client side prediction， 玩家输入之后，客户端立即执行操作，等服务器收到输入然后返回结果给客户端，如果预测一致，就继续执行，不一致则重置为服务器的结果
resimulation：recorrecting self  to avoid misprediction to make sure that the prediction still in control
interpolation：