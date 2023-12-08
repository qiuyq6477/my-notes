monobehaviour只会序列化字段，不会序列化属性
但是可以通过 \[field: Serializbleb] 来学序列化属性


animator.setfloat，可以设置damptime，可以逐渐缓冲到目标值


blendtree:
2d simple directinal
2d freeform directional
2d freeform cartesan

posx, posy, speed中的speed是什么意思


Vector.smoothDamping

Animator.CrossFadeInFixedTime


jump and fall

爬墙效果实现：
直接设置位置到爬墙之后动画的位置，从爬墙动画回到idle不要过渡，直接播放idle动画，手动在pullup动画最后面添加idle的第一帧，在动画里面融合

ClosestPointOnBounds