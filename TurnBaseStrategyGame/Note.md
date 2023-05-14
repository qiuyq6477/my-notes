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