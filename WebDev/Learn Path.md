
### HTML
1. Heading element: h
2. Paragraph element: p
3. Void element: br, hr
4. List element: ol, ul, li
5. Element can nested
6. Anchor element: a, href, 
7. Image element: img, src, alt

### CSS
cascading style sheet
sass
less

- inline
```
<html style="background:blue"> </html>
```
- internal
```
<style> 
	html{
		background:red;
	}
</style>
```
- external
```
styles.css
html{
	background:green;
}
index.html
<link rel="stylesheet" href="./styles.css" />
```

#### css 优先级
当给同一个元素应用多个样式的时候，样式之间存在优先级
position < specificity < type < importance
- position
位置越低，优先级越高，低的覆盖掉比他高的

```
li{
	color:red;
	color:green;
}
li{
	color:blue; // 最终被应用的颜色
}
```
- specificity
```
<li id="first-di" class="first-class" draggable>
li {color: blue;}  // element
.first-class {color:red;}  // class
li[draggable] {color: purple;}  //attribute
#first-id {color:orange}  // id 最终被应用的颜色
```
- type
```
<link rel="styelsheet" href="./style.css"> // external
<style> </style>  // internal
<h1 style=""> hello </h1>  // inline 最终被应用的颜色
```
- importance
```
color: red;
color: blue; !important; // 直接成为最高优先级
```




#### css selector
- element selector
选择特定的html标签，应用相关的设置
```
html{
	background:green;
}
```
- class selector
类可以作为属性添加到任何html标签中
```
.red-heading{
	color:red
}

<h1 class="red-heading"> RED </h1>
```

- id selector
id类似于class，区别是id是唯一的，只有一个标签可以有，class是用来将一类标签分类，多个标签可以同时有class
```
#red-heading{
	color:red
}

<h1 id="red-heading"> RED </h1>
```

- attribute selector
```
选择所有h1标签中带有draggable属性，应用这个css style
h1[draggable]={
	color:red
}
选择所有h1标签中带有draggable属性并且为true，应用这个css style
h1[draggable="true"]={
	color:red
}

<h1 draggable="true"> RED </h1>
<h1 draggable="false"> RED </h1>
```

- universal selector
应用于所有的标签
```
*{
	color:red
}
```


#### css combine
- Group
同时给多个selector应用样式，selector可以是任意的selector，数量也可以是任意的
```
selector, selector{
	...
}
```
- Child
parent > child，child必须是直系的，不能有多层
```
selector > selector{

}
```
- Descendant
parent child，child可以是任意深层次的，
```
selector selector{

}
```
- Chaining
同时满足所有selector的element
如果selector是element selector，需要放到第一个
```
selectorselector{

}
```
- Group Child Descendant Chaining
这四种也可以组合到一起

#### css properties
- color
https://colorhunt.co/palettes/cold
https://developer.mozilla.org/zh-CN/docs/Web/CSS/named-color
https://www.csfieldguide.org.nz/en/interactives/rgb-mixer/
 ```
 color:red
 color:#F90168
 background-color:...
```

- font
```
font-size:20px;
font-weight:bold;
font-family:sans-serif;
text-align:center;
```
表示字体大小的单位：
https://developer.mozilla.org/zh-CN/docs/Web/CSS/font-size
1px：pixel，1/96th inch
1pt：point，1/72nd inch，等同于word里面字体的大小，比px略大
1em：100% of parent，相对大小
1rem：100% of root，相对大小

表示字体粗细：
https://developer.mozilla.org/zh-CN/docs/Web/CSS/font-weight
keywords：normal，bold
relative to parent：lighter(-100)，bolder(+100)
number：100(light)  - 900(bold)

字体外观：
https://developer.mozilla.org/zh-CN/docs/Web/CSS/font-family
https://fonts.google.com/

字体对齐：
https://developer.mozilla.org/zh-CN/docs/Web/CSS/text-align

#### css box model
margin，在border和其他element之间的空间
padding，在element和border之间填充
border
上面三个属性接受值的方式
1，四个值，上右下左，顺时针
2，两个值，上下，左右
3，一个值，四个边全部一起应用
width
height

#### css position
- relative
relative to default position，已经有了一个位置了，相对原始位置作偏移
- absolute
relative to nearest positioned ancestor or top left corner of webpage
位置相对于一个最近的设置了位置属性的父节点，如果没有，则相对于页面左上角
设置了absolute属性的element会单独放置在一层，即使z-index = 0也会在其他元素上面
- fixed
relative to top left corner of browser window( 与absolute 不同，是相对于窗口，页面滚动了也不影响)
- static
default flow，自动布局

### css display
https://appbrewery.github.io/css-display/
每个元素都有一个display的属性
```
<h2> text </>

h2{
	display: block; // 默认是block，不管内容多少，会占领整个宽度，如果还有其他的元素，就会排列到下方，可以设置宽度高度
	display: inline // 只会占据文本实际的大小，无法设置宽度高度，其他的元素会跟在这个元素后面，如果排满了，会自动换行继续
	display: inline-block;可以设置宽度和高度，元素可以排列在同一行
	display: None; 让元素不显示
}
```

### css float
wrapping text using float and clear
![[css-float.png|300x300]]
紫色部分就是希望使用float达到的效果，文字围绕在图片周围
```
<img .../>
<p>text... </>
<footer> copy right</footer>
img{
	float:left;
}
footer{
	clear: left;
}
```


### how to create responsive website
- media queries
https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries
```
@media (max-width: 600px){
	/* CSS for screens below or equal to 600px wide 屏幕宽度低于或者等于600px时应用的css*/ 
}
// (min-width: 200px) and (max-width: 600px)

// 打印机
@media screen(orientation: landscape){
	// ....
}
```
- css grid
- css flexbox（Horizontal，Vertical）
https://saijogeorge.com/css-puns/usa-mexico/
```
区分好container和item，display是container的属性，flex-basis是item的属性
//container：
display: flex/inline-flex(自适应宽度或者高度根据内容);
gap: 10px;


//item:
flex-basis: 100px;// 设置孩子元素的宽度或者高度，取决于方向
默认是auto，长度取决于文本，如果希望每个item长度一样，赋值为0就可以关闭这个特性；
flex-order:
flex-grow:
flex-shrink:

```
- external frameworks, e.g. boostrap

### flex direction
```
flex-direction: row/column;
main-axis, cross-axis
```

### flex layout
https://appbrewery.github.io/flex-layout/
https://css-tricks.com/snippets/css/a-guide-to-flexbox/
https://appbrewery.github.io/flexboxfroggy/
如何创建灵活的布局
flexbox的默认行为是什么
可以设置哪些属性
有些属性是设置给container的，有些是给item 使用的，不能混用
```
order: 0;按照order大小排列，数字大的排在后面，默认等于0

flex-wrap:nowrap;//不自动换行，wrap自动换行，默认是nowrap，属于container的属性，告诉child应该如何排列

justify-content: flex-start;flex-end;center;space-between;设置item沿着主轴(main-axis)如何分布，属于container的属性

align-items:flex-start;flex-end;center;space-between;
设置cross-axis item的位置，设置给container
当flex-wrap设置为wrap，则这个属性不会生效
height: 70vh;70% view port height;
设置container 沿cross axis 的宽度，设置给container
align-self:flex-start;flex-end;center;space-between;
设置给item，单独设置item的属性

align-content:flex-start;flex-end;center;space-between;
当flex-wrap设置为wrap时生效
```


### flex sizing
content width < width < flex-basis < min-width / max-width
默认行为，没有设置任何size属性，自动根据内容设置大小：
当窗口缩小，每一个item 会自动shrink 直到到达minimum content size（即达到单词的最小长度，就不会更小了）
设置了width/flex-basis/min-width / max-width属性之后，如果长度足够，则会应用width，如果长度不够了，应用minimum content width

Grow & Shrink
https://appbrewery.github.io/flexbox-sizing-exercise/
```
flex的默认设置
flex-grow: 0; //0不会自动增长宽度,1自动增长宽度，并尽可能填充满，此时的宽度设置设置的是最小宽度的意思
flex-shrink: 1;//0不会自动缩小宽度，1会自动缩小宽度，此时的宽度设置是最大宽度的意思，小于指定的宽度之后应用miimum content size
简写：
flex: 1 1 0; grow, shrink, basis
flex: 1;//等效于上面
```




### display grid 
https://appbrewery.github.io/grid-vs-flexbox/
https://appbrewery.github.io/grid-sizing/
```
.container{
	display: grid;
	//1
	grid-template-columns: 1fr 1fr ;//按照比例分配宽度,还可以使用px，rem，但是窗口宽高变化后无法自适应
	grid-template-rows: 1fr 1fr;
	//2
	grid-templeate: 1fr 1fr / 1fr 1fr;//
	//3
	grid-template-columns: 100px auto; //第二列会填充剩余宽度
	grid-template-rows: 100px auto; // 会根据内容自适应高度
	//4
	grid-template-columns: 100px minmax(200px, 400px);
	//5
	grid-template-columns: repeat(2, 200px); // 重复200px 2次
	grid-template-columns: 200px 200px;等价于上面
	gap: 1px;

	// 当item的数量多于定义的colum * row时，多出来的item应用下面定义的宽高，如果下面的属性没有定义，自动匹配宽度，但是高度根据内容自适应
	grid-auto-rows: 200px;
	grid-auto-columns: 200px;
}
```

fr: fractional ratio

### grid item placement




