 射线检测是物理引擎里面的，能不能检查到取决于物体是否有collider，与渲染无关


animator transition
- fixed duration：决定了Transition duraiton是百分比还是绝对值
- Transition duraiton：融合时间
- Transition Offset：作用在目标状态上，transition的时候是从目标状态的0时刻开始融合还是从offset开始融合
- Interruptiion Source：transition的时候可以被哪些transition打断

从mixao下载下来的动画文件是fbx格式的，里面自带的animation是只读的，要想修改动画，ctrl+d复制一份出来就可以了。


设置方向的三种方式：
- transform.rotation
- transform.eulerAngle
- transform.forward

lerp的几种方式：
- Vector.Lerp


可以把专门处理输入的脚本，调整他的执行顺序，让他第一个执行


c#中Event和Action的使用


awake先于start调用，现在awake里面初始化自身的一些数据，在start里面初始化对外部对象的引用，确保外部对象已经初始化了。


实例化gameobject 和 实例化transform是一样的?
还是说instaniate方法有重载，既可以返回gameobjct也可以返回transform？
transform总是附加在gameobject上面

传递delegate对象的时候，不管是public还是private都可以调用

Action和Func的区别，Action没有返回值，Func有。他们都是内置的delegate。

EventHandler使用方式，本质上也是一个delegate


Canvas，match_height是什么意思


EventSystem.current.IsPointOverGameObject()
可以检测当前鼠标位置是否在ui上面

不同的action在执行的时候可能会需要不同的参数
三种解决方式
- switch，根据action类型分别调用
- 把所有action执行需要的参数全部放在函数签名里面，这可能会导致参数非常多
- 抽象到类里面去，提供一个基类，各个action需要的参数组成一个类并继承这个基类。

子弹速度非常快，容易穿过目标
- 本帧距离目标的距离一定比上一帧距离目标的距离短，如果大了，说明已经越过目标了，可以判断已经命中目标了


ragdoll，给root下面的每个节点都施加explodeforce，为什么只在y轴上面移动？？？？


监听单位身上的事件
- 每个unit单独监听
- 监听所有的unit事件，在unit里面添加静态事件
- 给action添加一个事件，任何触发action都会触发事件