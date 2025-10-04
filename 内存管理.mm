<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="内存管理" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1755265948135" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_tags="UNDER_NODES" associatedTemplateLocation="template:/standard-1.6.mm" fit_to_viewport="false" show_icons="BESIDE_NODES"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#afd3f7" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#afd3f7"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.flower" COLOR="#ffffff" BACKGROUND_COLOR="#255aba" STYLE="oval" TEXT_ALIGN="CENTER" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="22 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f9d71c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="CLOSE_DOTS" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<node TEXT="对象、指针和引用" FOLDED="true" POSITION="bottom_or_right" ID="ID_1749060608" CREATED="1755266039531" MODIFIED="1755266049920">
<edge COLOR="#ff0000"/>
<node TEXT="内存的表示" ID="ID_1169956871" CREATED="1755266076433" MODIFIED="1755266083409">
<node TEXT="wg21.link/basic.memobj" ID="ID_1222929851" CREATED="1755266114202" MODIFIED="1755266119267"/>
<node TEXT="wg21.link/intro.memory" ID="ID_634964585" CREATED="1755266293681" MODIFIED="1755266297834"/>
<node TEXT="C++中的内存表示为一个或多个连续字节序列。" ID="ID_175071743" CREATED="1755266140887" MODIFIED="1755266346399"/>
<node TEXT="字节是程序中最小的可寻址内存单元" ID="ID_1459514672" CREATED="1755266359930" MODIFIED="1755266375918"/>
</node>
<node TEXT="对象" ID="ID_1260203450" CREATED="1755266393116" MODIFIED="1755266395099">
<node TEXT="wg21.link/intro.object" ID="ID_374491621" CREATED="1755266395228" MODIFIED="1755266408453">
<node TEXT="对象是如何显式创建的，例如定义对象时或通过多种operator new变体之一构造对象时。对象也可能隐式创建，例如作为某个表达式的结果创建临时对象，或更改联合体的活动成员时。" POSITION="bottom_or_right" ID="ID_72630871" CREATED="1755266547728" MODIFIED="1755266559346"/>
<node TEXT="对象存在于某处（它有地址）并占据一块非零大小的存储区域，从其构造开始到销毁结束。" POSITION="bottom_or_right" ID="ID_1806933630" CREATED="1755266560161" MODIFIED="1755266563597"/>
<node TEXT="对象的其他属性，包括其名称（如果有）、类型以及存储持续时间（自动、静态、线程局部等）。" POSITION="bottom_or_right" ID="ID_1194360496" CREATED="1755266564345" MODIFIED="1755266564627"/>
</node>
<node TEXT="什么是对象？它是具有生命周期并占用存储空间的东西。" ID="ID_337845537" CREATED="1755266492001" MODIFIED="1755266506687">
<node TEXT="std::is_object_v&lt;int&gt; 返回true" ID="ID_772519621" CREATED="1755267467124" MODIFIED="1755267471560"/>
</node>
<node TEXT="函数不是对象" ID="ID_1896856447" CREATED="1755266603518" MODIFIED="1755266613785">
<node TEXT="std::is_object_v&lt;decltype(main)&gt; 返回false" ID="ID_1662050895" CREATED="1755267455213" MODIFIED="1755267459200"/>
</node>
<node TEXT="对象的属性" FOLDED="true" ID="ID_568597477" CREATED="1755267945173" MODIFIED="1755267948964">
<node TEXT="Object lifetime" ID="ID_609953540" CREATED="1755267949206" MODIFIED="1755268014121">
<node ID="ID_1361381449" CREATED="1755268041099" MODIFIED="1755268192168"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="p1">
      局部变量，在作用域结束的时候按照明确的顺序自动销毁
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="静态（全局）对象在程序终止时以明确的顺序销毁，在同一个文件中顺序是清晰的，但是不同文件的静态对象更加复杂" ID="ID_1092993009" CREATED="1755268064968" MODIFIED="1755268179421"/>
<node TEXT="动态分配的对象，需要手动销毁" ID="ID_351260960" CREATED="1755268077621" MODIFIED="1755268202342"/>
</node>
<node TEXT="Object size, alignment, and padding" FOLDED="true" ID="ID_1458674355" CREATED="1755267970798" MODIFIED="1755268001663">
<node TEXT="对象的大小等于于类型的大小，可以通过 sizeof 获得，在编译时返回非零的无符号整数值，表示存储该对象所需的字节数" ID="ID_361513090" CREATED="1755268214551" MODIFIED="1755268269998">
<node TEXT="所有的c++类型都会占用非零的存储空间，即便类型定义中什么都没有" ID="ID_1102567613" CREATED="1755268279601" MODIFIED="1755268337949"/>
<node TEXT="c++对象总是至少占用1字节的存储空间，因为如果大小是0的话，该对象可能与相邻对象占用相同的内存位置，这是不可以的" ID="ID_414906988" CREATED="1755268367404" MODIFIED="1757256786087"/>
<node TEXT="任何结构体或类的对象所占用的大小不能小于其数据成员大小之和（但有例外情况）" ID="ID_1978510007" CREATED="1755268456480" MODIFIED="1755268457453"/>
<node TEXT="空基类优化" ID="ID_1726916650" CREATED="1757256924378" MODIFIED="1757256936075"/>
<node TEXT="sizeof的用法" ID="ID_455448690" CREATED="1755269138260" MODIFIED="1755269142276">
<node TEXT="sizeof是 C++ 的关键字，用于获取类型或变量占用的内存大小（字节数）" ID="ID_822440814" CREATED="1756218942462" MODIFIED="1756218945925"/>
<node TEXT="sizeof(类型)：如sizeof(short)（获取short类型的大小）。" ID="ID_1999218715" CREATED="1756218965229" MODIFIED="1756218966014"/>
<node TEXT="sizeof(变量)：如sizeof x.s（获取变量x.s的大小）。" ID="ID_10390460" CREATED="1756218970692" MODIFIED="1756218971171"/>
</node>
</node>
<node TEXT="对象的对齐属性告诉我们该对象可以放置在内存的哪里" ID="ID_232069588" CREATED="1755268911408" MODIFIED="1755268934665">
<node TEXT="char类型的对齐为1，可以放置在任意地方" ID="ID_400074176" CREATED="1755268934984" MODIFIED="1755268951011"/>
<node TEXT="short的对齐为2，只能放置到地址为2的倍数的地方" ID="ID_1611312067" CREATED="1755268951315" MODIFIED="1755268974063"/>
<node TEXT="一个类型的对齐为n，该类型的对象只能放置到地址为n的倍数的位置。对齐必须是2的正整数幂，否则会导致未定义的行为" ID="ID_1682552063" CREATED="1755268980691" MODIFIED="1755269063579"/>
<node TEXT="数据成员在类中布局的顺序会影响该对象的大小" ID="ID_775789385" CREATED="1755269343844" MODIFIED="1755269364242"/>
<node TEXT="布局很重要，不仅会影响对象的大小，在多线程代码中，保持两个对象之间的距离可以提高缓存使用效率" ID="ID_1098095762" CREATED="1755269436544" MODIFIED="1755269490138"/>
<node TEXT="alignof" ID="ID_1454548386" CREATED="1755269158012" MODIFIED="1755269160507">
<node TEXT="alignof是 C++11 引入的关键字，用于获取类型的对齐要求（alignment requirement），即该类型的对象在内存中存放时，地址必须是该值的倍数（保证访问效率）" ID="ID_711069223" CREATED="1756219001705" MODIFIED="1756219002290"/>
<node TEXT="alignof(类型)：如alignof(short)（获取short类型的对齐要求）" ID="ID_1567401072" CREATED="1756219042308" MODIFIED="1756219042615"/>
<node TEXT="alignof(变量)：如alignof(x)（获取变量x的类型的对齐要求）" ID="ID_726519961" CREATED="1756219047423" MODIFIED="1756219047702"/>
<node TEXT="结构体的对齐要求由其所有成员的对齐要求中最大的值决定，同时还需满足结构体整体大小是其对齐要求的整数倍（若不满足会自动添加尾部填充）" ID="ID_846486231" CREATED="1756219200070" MODIFIED="1756219200572">
<node TEXT="struct Example {&#xa;    char a;      // alignof(char) = 1&#xa;    int b;       // alignof(int) = 4（通常）&#xa;    short c;     // alignof(short) = 2&#xa;};&#xa;&#xa;// 结构体Example的对齐要求 = max(1, 4, 2) = 4&#xa;static_assert(alignof(Example) == 4);&#xa;static_assert(sizeof(Example) == 12);" ID="ID_271311302" CREATED="1756219229823" MODIFIED="1756219262961"/>
</node>
<node TEXT="联合体的所有成员共享同一块内存空间，因此其对齐要求由所有成员的对齐要求中最大的值决定（与结构体相同），但联合体的大小只需满足 “不小于最大成员的大小” 且是其对齐要求的整数倍。" ID="ID_1510040145" CREATED="1756219214732" MODIFIED="1756219215037">
<node TEXT="union ExampleUnion {&#xa;    char arr[5];  // alignof(char) = 1，大小5字节&#xa;    int num;      // alignof(int) = 4，大小4字节&#xa;    short s;      // alignof(short) = 2，大小2字节&#xa;};&#xa;&#xa;// 联合体ExampleUnion的对齐要求 = max(1, 4, 2) = 4&#xa;static_assert(alignof(ExampleUnion) == 4);&#xa;// 联合体大小 = 8（满足：≥5字节，且是4的倍数）&#xa;static_assert(sizeof(ExampleUnion) == 8);" ID="ID_536283490" CREATED="1756219272283" MODIFIED="1756219273572"/>
</node>
</node>
<node TEXT="alignas" ID="ID_1043418345" CREATED="1755269161137" MODIFIED="1755269163401">
<node TEXT="强制指定对象的对齐" ID="ID_933075791" CREATED="1755269189378" MODIFIED="1755269200716">
<node TEXT="// 手动指定对齐要求为8字节（但成员最大对齐要求为4）&#xa;struct AlignedStruct {&#xa;    int a;  // alignof(int) = 4&#xa;} __attribute__((aligned(8)));  // GCC/clang语法（C++11标准用alignas(8)）&#xa;&#xa;// alignof结果为8（手动指定值更大）&#xa;static_assert(alignof(AlignedStruct) == 8);" ID="ID_97645090" CREATED="1756219374970" MODIFIED="1756219376348"/>
</node>
<node TEXT="可以通过alignas关键字手动指定结构体 / 联合体的对齐要求，此时alignof的结果为手动指定值与成员最大对齐要求中的较大者。" ID="ID_567299471" CREATED="1756219388642" MODIFIED="1756219389651"/>
</node>
</node>
</node>
<node TEXT="复制与移动" ID="ID_14535541" CREATED="1757257130268" MODIFIED="1757257136241">
<node TEXT="六个特殊函数" FOLDED="true" ID="ID_478569796" CREATED="1757257221722" MODIFIED="1757257234413">
<node TEXT="默认构造函数" POSITION="bottom_or_right" ID="ID_1054037157" CREATED="1757257136688" MODIFIED="1757257148374">
<node TEXT="编译器合成规则" ID="ID_1389072397" CREATED="1757257654436" MODIFIED="1757257655294">
<node TEXT="只有当类中没有显式定义任何构造函数时，编译器才会自动合成默认构造函数" POSITION="bottom_or_right" ID="ID_313345874" CREATED="1757257629123" MODIFIED="1757257630554"/>
<node TEXT="若显式定义了带参构造（如A(int x)），编译器不再合成默认构造，此时A a;会编译失败。" POSITION="bottom_or_right" ID="ID_912346674" CREATED="1757257638119" MODIFIED="1757257639071"/>
<node TEXT="若需要保留默认构造，可显式声明为 A() = default;（强制编译器合成，C++11 特性）" POSITION="bottom_or_right" ID="ID_1969284109" CREATED="1757257647700" MODIFIED="1757257648050"/>
</node>
<node TEXT="默认行为（编译器合成版）" ID="ID_1242336284" CREATED="1757257662762" MODIFIED="1757257663085">
<node TEXT="对内置类型成员（如int、char*）：不初始化（值为不确定的 “垃圾值”）" ID="ID_1791620039" CREATED="1757257668189" MODIFIED="1757257669124"/>
<node TEXT="对类类型成员（如std::string）：调用该成员的默认构造函数初始化" ID="ID_860521740" CREATED="1757257673139" MODIFIED="1757257673637"/>
</node>
</node>
<node TEXT="析构函数" POSITION="bottom_or_right" ID="ID_913089106" CREATED="1757257150738" MODIFIED="1757257153406">
<node TEXT="编译器合成规则" ID="ID_1681277010" CREATED="1757258077153" MODIFIED="1757258078494">
<node TEXT="未显式定义析构函数，编译器会自动合成 “空体” 的默认析构函数" POSITION="bottom_or_right" ID="ID_1917333402" CREATED="1757258057177" MODIFIED="1757258058082"/>
</node>
<node TEXT="默认行为（编译器合成版）" ID="ID_1702010612" CREATED="1757258084163" MODIFIED="1757258084446">
<node TEXT="执行析构函数体（默认是空的）；" ID="ID_1426299966" CREATED="1757258088840" MODIFIED="1757258089651"/>
<node TEXT="按成员声明的逆序销毁非静态成员：" ID="ID_185138795" CREATED="1757258093518" MODIFIED="1757258093863">
<node TEXT="类类型成员：调用其析构函数" ID="ID_975107798" CREATED="1757258097990" MODIFIED="1757258098579"/>
<node TEXT="内置类型成员：无操作（无需释放）" ID="ID_1088352138" CREATED="1757258103103" MODIFIED="1757258103563"/>
</node>
<node TEXT="销毁基类（若有继承）：调用基类的析构函数（若基类析构非虚，派生类析构不会被调用 → 资源泄漏）" ID="ID_879827214" CREATED="1757258108719" MODIFIED="1757258109196"/>
</node>
</node>
<node TEXT="拷贝构造函数" POSITION="bottom_or_right" ID="ID_201700862" CREATED="1757257153656" MODIFIED="1757257158871">
<node TEXT="用同类型的左值对象初始化新对象的构造函数，签名为 T(const T&amp; other)（参数是 const 左值引用，避免递归调用）" ID="ID_1469353011" CREATED="1757257737054" MODIFIED="1757257738143"/>
<node TEXT="编译器合成规则" ID="ID_452579121" CREATED="1757257747904" MODIFIED="1757257748271">
<node TEXT="若未显式定义拷贝构造函数，编译器会自动合成 “浅拷贝” 版本" ID="ID_1756568095" CREATED="1757257760031" MODIFIED="1757257760574"/>
<node TEXT="若显式定义了移动构造 / 移动赋值，编译器不再合成拷贝构造（需手动定义或= default）" ID="ID_517469698" CREATED="1757257768997" MODIFIED="1757257769444"/>
</node>
<node TEXT="默认行为（编译器合成版：浅拷贝）" ID="ID_719077010" CREATED="1757257774525" MODIFIED="1757257774860">
<node TEXT="“浅拷贝” 即逐个成员复制：" ID="ID_591795696" CREATED="1757257783457" MODIFIED="1757257784562"/>
<node TEXT="对内置类型成员：直接复制值（如x = other.x）。" ID="ID_1914399542" CREATED="1757257788878" MODIFIED="1757257789273"/>
<node TEXT="对类类型成员：调用该成员的拷贝构造函数（如s = other.s）" ID="ID_568493619" CREATED="1757257795373" MODIFIED="1757257795997"/>
</node>
<node TEXT="若类包含动态资源（如new分配的内存、文件句柄），浅拷贝会导致多个对象共享同一份资源，析构时会触发 “双重释放”（内存泄漏 / 崩溃）" ID="ID_228834762" CREATED="1757257808782" MODIFIED="1757257809111"/>
</node>
<node TEXT="拷贝赋值函数" POSITION="bottom_or_right" ID="ID_1698621261" CREATED="1757257159096" MODIFIED="1757257165454">
<node TEXT="给已有对象赋同类型左值对象的值，签名为 T&amp; operator=(const T&amp; other)（返回左值引用，支持链式赋值如a = b = c）" ID="ID_155397003" CREATED="1757257832582" MODIFIED="1757257833513"/>
<node TEXT="编译器合成规则" ID="ID_737048363" CREATED="1757257837583" MODIFIED="1757257837903">
<node TEXT="与拷贝构造类似：若未显式定义拷贝赋值，编译器合成 “浅拷贝” 版本；若显式定义移动操作，拷贝赋值不再自动合成" ID="ID_512108714" CREATED="1757257853287" MODIFIED="1757257854078"/>
</node>
<node TEXT="默认行为（编译器合成版：浅拷贝）" ID="ID_622529402" CREATED="1757257842139" MODIFIED="1757257842950">
<node TEXT="同样是 “逐个成员赋值”，但需注意" ID="ID_708294810" CREATED="1757257866530" MODIFIED="1757257867227"/>
<node TEXT="赋值前不会释放对象自身已有的资源（如动态内存），直接覆盖会导致内存泄漏" ID="ID_635342454" CREATED="1757257875587" MODIFIED="1757257875986"/>
<node TEXT="类类型成员会调用其拷贝赋值运算符" ID="ID_476095371" CREATED="1757257880829" MODIFIED="1757257881318"/>
</node>
</node>
<node TEXT="移动构造函数" POSITION="bottom_or_right" ID="ID_433721473" CREATED="1757257167292" MODIFIED="1757257171536">
<node TEXT="用同类型的右值对象（临时对象、std::move转换的对象）初始化新对象，签名为 T(T&amp;&amp; other)（参数是右值引用，&amp;&amp;表示 “可窃取资源”）" ID="ID_1151088129" CREATED="1757257903500" MODIFIED="1757257904346"/>
<node TEXT="编译器合成规则" ID="ID_1946830185" CREATED="1757257912760" MODIFIED="1757257913105">
<node TEXT="若未显式定义移动构造，且满足以下条件，编译器自动合成 “浅移动” 版本" ID="ID_1079764021" CREATED="1757257940054" MODIFIED="1757257940966"/>
<node TEXT="未显式定义拷贝构造、拷贝赋值、移动赋值、析构" ID="ID_990950949" CREATED="1757257953666" MODIFIED="1757257954052"/>
<node TEXT="所有非静态成员均可移动（即成员的类有移动构造）" ID="ID_1352816065" CREATED="1757257959930" MODIFIED="1757257960344"/>
</node>
<node TEXT="默认行为（编译器合成版：浅移动）" ID="ID_300604386" CREATED="1757257917859" MODIFIED="1757257918216">
<node TEXT="“浅移动” 即逐个成员转移资源" ID="ID_364008049" CREATED="1757257965682" MODIFIED="1757257966428"/>
<node TEXT="对内置类型成员：直接复制值（内置类型无资源，移动 = 复制）" ID="ID_783532313" CREATED="1757257971177" MODIFIED="1757257971540"/>
<node TEXT="对类类型成员：调用该成员的移动构造函数（如std::string的移动构造会窃取字符数组）" ID="ID_1085145258" CREATED="1757257976452" MODIFIED="1757257976873"/>
</node>
<node TEXT="移动后，原右值对象的状态需 “可安全析构”（通常将其资源指针设为nullptr，避免析构时重复释放）" ID="ID_1898638650" CREATED="1757257987166" MODIFIED="1757257987489"/>
</node>
<node TEXT="移动赋值函数" POSITION="bottom_or_right" ID="ID_834756707" CREATED="1757257171778" MODIFIED="1757257179241">
<node TEXT="给已有对象赋同类型右值对象的值，签名为 T&amp; operator=(T&amp;&amp; other)（返回左值引用，支持链式赋值）。" ID="ID_295921453" CREATED="1757257999993" MODIFIED="1757258000774"/>
<node TEXT="编译器合成规则" ID="ID_177662018" CREATED="1757258005159" MODIFIED="1757258005483">
<node TEXT="与移动构造类似：未显式定义移动赋值，且未显式定义其他拷贝 / 移动 / 析构时，编译器合成 “浅移动” 版本" ID="ID_1545966661" CREATED="1757258015967" MODIFIED="1757258017512"/>
</node>
<node TEXT="默认行为（编译器合成版：浅移动）" ID="ID_445117113" CREATED="1757258009557" MODIFIED="1757258009894">
<node TEXT="逐个成员移动赋值" ID="ID_913053017" CREATED="1757258025942" MODIFIED="1757258026525"/>
</node>
</node>
</node>
<node TEXT="当一个类型本身不显式管理任何资源时，通常可以不编写这些特殊函数，因为编译器生成的函数正是所需的。" ID="ID_1459033275" CREATED="1757257214759" MODIFIED="1757257220350"/>
<node TEXT="三法则（Rule of Three）" ID="ID_1571500953" CREATED="1757258180654" MODIFIED="1757258214091">
<node TEXT="若显式定义了以下三个函数中的任意一个，则通常需要显式定义另外两个" POSITION="bottom_or_right" ID="ID_327233869" CREATED="1757258209593" MODIFIED="1757258209875"/>
<node TEXT="拷贝构造函数" POSITION="bottom_or_right" ID="ID_1795654464" CREATED="1757258224822" MODIFIED="1757258225155"/>
<node TEXT="拷贝赋值运算符" POSITION="bottom_or_right" ID="ID_755697397" CREATED="1757258231874" MODIFIED="1757258232293"/>
<node TEXT="析构函数" POSITION="bottom_or_right" ID="ID_354461941" CREATED="1757258232885" MODIFIED="1757258235766"/>
</node>
<node TEXT="五法则（Rule of Five，C++11）" ID="ID_1177895197" CREATED="1757258214668" MODIFIED="1757258215241">
<node TEXT="若显式定义了以下五个函数中的任意一个，则通常需要显式定义另外四个" POSITION="bottom_or_right" ID="ID_1898318148" CREATED="1757258199055" MODIFIED="1757258199941"/>
<node TEXT="拷贝构造函数&#xa;拷贝赋值运算符&#xa;析构函数" POSITION="bottom_or_right" ID="ID_1957924515" CREATED="1757258239062" MODIFIED="1757258239888"/>
<node TEXT="拷贝赋值运算符" POSITION="bottom_or_right" ID="ID_1576235795" CREATED="1757258245330" MODIFIED="1757258245691"/>
<node TEXT="移动赋值运算符" POSITION="bottom_or_right" ID="ID_762513509" CREATED="1757258249915" MODIFIED="1757258250339"/>
</node>
<node TEXT="零法则（Rule of Zero）" ID="ID_345093701" CREATED="1757258257599" MODIFIED="1757258257900">
<node TEXT="若类不直接管理资源（仅包含std::string、std::vector等 RAII 类成员），则无需显式定义任何特殊函数—— 依赖编译器合成的版本即可，既安全又高效（RAII 类已处理资源）" ID="ID_1277238567" CREATED="1757258265206" MODIFIED="1757258266017"/>
</node>
<node TEXT=" = default：强制编译器合成默认版本（即使有其他构造函数），比手动实现更高效。" ID="ID_986979241" CREATED="1757258280548" MODIFIED="1757258289107"/>
<node TEXT=" = delete：禁止编译器合成该函数（如禁止拷贝）。" ID="ID_1444252217" CREATED="1757258294308" MODIFIED="1757258299223"/>
</node>
</node>
</node>
<node TEXT="指针" ID="ID_1464728746" CREATED="1755266683775" MODIFIED="1755266686605">
<node TEXT="是一个带类型的地址" ID="ID_1460876812" CREATED="1755266686792" MODIFIED="1755266694577"/>
<node TEXT="指针种类" ID="ID_262848868" CREATED="1755267477750" MODIFIED="1755267483093">
<node TEXT="void *" POSITION="bottom_or_right" ID="ID_1654610223" CREATED="1755266770405" MODIFIED="1755266777914">
<node TEXT="所有指针都可以隐式转换为void *，反之不可以" ID="ID_1503827807" CREATED="1755266784417" MODIFIED="1755266909574"/>
</node>
<node TEXT="char *" POSITION="bottom_or_right" ID="ID_352575447" CREATED="1755266819875" MODIFIED="1755266823575">
<node TEXT="指向字节的指针" ID="ID_1392080582" CREATED="1755266824955" MODIFIED="1755266837408"/>
</node>
<node TEXT="unsigned char *" POSITION="bottom_or_right" ID="ID_6074280" CREATED="1756476309484" MODIFIED="1756476315335">
<node TEXT="指向字节的指针" ID="ID_1152105601" CREATED="1756476317888" MODIFIED="1756476319934"/>
</node>
<node TEXT="std::byte *" POSITION="bottom_or_right" ID="ID_1885880349" CREATED="1755266847302" MODIFIED="1755266855967">
<node TEXT="c++17引入的指向字节的指针" ID="ID_164651668" CREATED="1755266857768" MODIFIED="1755266878548"/>
</node>
</node>
<node TEXT="如何逐字节比较两个对象" FOLDED="true" ID="ID_243335042" CREATED="1755266946094" MODIFIED="1755267494441">
<node TEXT="需要判单这两个对象是否包含填充字节，填充字节的内容是随机的" ID="ID_968230199" CREATED="1755266953942" MODIFIED="1755266997183"/>
<node TEXT="bool same_bytes(const char *p0, const char *p1, std::size_t n) {&#xd;&#xa;    for(std::size_t i = 0; i != n; ++i)&#xd;&#xa;        if(*(p0 + i) != *(p1 + i))&#xd;&#xa;            return false;&#xd;&#xa;    return true;&#xd;&#xa;}&#xd;&#xa;template &lt;class T, class U&gt;&#xd;&#xa;   bool same_bytes(const T &amp;a, const U &amp;b) {&#xd;&#xa;       static_assert(sizeof a == sizeof b);&#xd;&#xa;       static_assert(std::has_unique_object_representations_v&lt;T&gt;);&#xd;&#xa;       static_assert(std::has_unique_object_representations_v&lt;U&gt;);&#xd;&#xa;       return same_bytes(reinterpret_cast&lt;const char*&gt;(&amp;a),&#xd;&#xa;                         reinterpret_cast&lt;const char*&gt;(&amp;b),&#xd;&#xa;                         sizeof a);&#xd;&#xa;   }" ID="ID_589668447" CREATED="1755267142385" MODIFIED="1755267143339"/>
</node>
</node>
<node TEXT="引用" ID="ID_672677973" CREATED="1755267159131" MODIFIED="1755267161817">
<node TEXT="引用是实体的别名，包括函数" ID="ID_85807138" CREATED="1755267168866" MODIFIED="1755267501523"/>
<node TEXT="引用和指针的区别" ID="ID_459761685" CREATED="1755267516626" MODIFIED="1755267527347">
<node TEXT="指针是对象，占用内存空间，引用不是对象，也不占用内存空间" POSITION="bottom_or_right" ID="ID_318611407" CREATED="1755267196495" MODIFIED="1755267219384">
<node TEXT="std::is_object_v&lt;int*&gt; 返回true" POSITION="bottom_or_right" ID="ID_204937592" CREATED="1755267242992" MODIFIED="1755267256039"/>
<node TEXT="std::is_object_v&lt;int&amp;&gt; 返回false" POSITION="bottom_or_right" ID="ID_1227977515" CREATED="1755267256582" MODIFIED="1755267268835"/>
</node>
<node TEXT="声明引用的同时必须初始化引用，在引用的生命周期内一直绑定该对象，指针在生命周期内可以指向多个对象" POSITION="bottom_or_right" ID="ID_1093046312" CREATED="1755267323699" MODIFIED="1755267416933"/>
<node TEXT="指针可以做运算，引用不可以" POSITION="bottom_or_right" ID="ID_730339261" CREATED="1755267384335" MODIFIED="1755267393279"/>
<node TEXT="sizeof 应用于引用时，返回的是所引用的对象的大小，取地址同理" POSITION="bottom_or_right" ID="ID_359794527" CREATED="1755267280550" MODIFIED="1755267311721"/>
</node>
</node>
</node>
<node TEXT="需要注意的事项" FOLDED="true" POSITION="bottom_or_right" ID="ID_1015255939" CREATED="1756220408299" MODIFIED="1756220412526">
<edge COLOR="#7c0000"/>
<node TEXT="指针" POSITION="bottom_or_right" ID="ID_919759957" CREATED="1756220588063" MODIFIED="1756220590882">
<node TEXT="数组中指针算数的用法" ID="ID_871067350" CREATED="1756220651017" MODIFIED="1756220663899">
<node ID="ID_1067918052" CREATED="1756220787765" MODIFIED="1756220962101"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, SF Pro SC, SF Pro Display, SF Pro Icons, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">数组名可以隐式转换为指向首元素的指针，指针算术运算（</span><code style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">+</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, SF Pro SC, SF Pro Display, SF Pro Icons, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">、</span><code style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">-</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, SF Pro SC, SF Pro Display, SF Pro Icons, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">、</span><code style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">++</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, SF Pro SC, SF Pro Display, SF Pro Icons, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">、</span><code style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Menlo, Monaco, Consolas, Courier New, monospace; font-size: 16px; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">--</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, SF Pro SC, SF Pro Display, SF Pro Icons, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">）的步长由指针指向的类型决定</span>
  </body>
</html>
</richcontent>
</node>
<node TEXT="对于大小为N的数组arr，指针p的合法范围是：&#xa;[ &amp;arr[0], &amp;arr[N] ]（包括首元素地址和尾后地址，但不包括&amp;arr[N]之后的位置）" ID="ID_300941251" CREATED="1756220902517" MODIFIED="1756220902850"/>
<node TEXT="在这个区间内：可以进行指针比较（如p == &amp;arr[5]）、算术运算（如p++），但解引用（*p）只能在[ &amp;arr[0], &amp;arr[N-1] ]范围内（即有效元素）。" POSITION="bottom_or_right" ID="ID_1381237720" CREATED="1756220907392" MODIFIED="1756220912734"/>
<node TEXT="超出&amp;arr[N]后：任何操作都是 UB。" POSITION="bottom_or_right" ID="ID_901767368" CREATED="1756220913165" MODIFIED="1756220913722"/>
</node>
<node TEXT="指针可互换性" ID="ID_800018306" CREATED="1756220788322" MODIFIED="1756221096272">
<node TEXT="两个对象a和b是 “指针可互换的”，如果可以安全地将指向a的指针转换为指向b的指针（通过reinterpret_cast），且转换后的指针仍然指向有效对象" ID="ID_840703175" CREATED="1756221213815" MODIFIED="1756221215647"/>
<node TEXT="任何对象与其自身都是指针可互换的。" ID="ID_745857835" CREATED="1756221238698" MODIFIED="1756221238998"/>
<node TEXT="联合体的所有成员与联合体对象本身是指针可互换的。" ID="ID_966740574" CREATED="1756221245104" MODIFIED="1756221245376"/>
<node TEXT="标准布局类的对象与其首个基类子对象可互换" ID="ID_805160218" CREATED="1756221282405" MODIFIED="1756221369774"/>
</node>
<node TEXT="对象内部指针算数的使用" FOLDED="true" ID="ID_986355509" CREATED="1756221157277" MODIFIED="1756221169723">
<node TEXT="struct A {&#xa;    int a;    // int类型成员（4字节，通常）&#xa;    short s;  // short类型成员（2字节，通常）&#xa;};&#xa;&#xa;// 函数f：接收A的引用，返回short*指针&#xa;short* f(A&amp; a) {&#xa;    // 利用指针可互换性：将A对象的地址转换为int*（指向其第一个成员a）&#xa;    int* p = reinterpret_cast&lt;int*&gt;(&amp;a);&#xa;   &#xa;    p++;  // 指针移动：从int成员a的地址向后移动1个int大小（4字节）&#xa;   &#xa;    // 将移动后的指针转换为short*，指向A的成员s&#xa;    return reinterpret_cast&lt;short*&gt;(p);&#xa;}&#xa;&#xa;int main() {&#xa;    A a;               // 声明A类型对象a&#xa;    short* p = f(a);   // 调用f获取指向a.s的指针&#xa;    *p = 3;            // 给a.s赋值3（合法操作）&#xa;    return 0;&#xa;}" ID="ID_535499465" CREATED="1756221589611" MODIFIED="1756221592923"/>
</node>
<node TEXT="空指针" ID="ID_1075356477" CREATED="1756221173744" MODIFIED="1756221177499">
<node TEXT="使用nullptr表达空指针，它是std::nullptr_t类型的对象，可以转换为任意类型的指针，并且行为符合预期" ID="ID_363988906" CREATED="1756221605696" MODIFIED="1756221649589"/>
<node TEXT="std::is_pointer_v&lt;nullptr_t&gt; == false" ID="ID_818238796" CREATED="1756221674251" MODIFIED="1756221687839"/>
<node TEXT="对空指针加零，代码仍是定义良好的，结果依然是空指针，但是如何是其他值，行为未定义" ID="ID_335173587" CREATED="1756221688245" MODIFIED="1756221761616"/>
</node>
</node>
<node TEXT="union的注意事项" POSITION="bottom_or_right" ID="ID_899687986" CREATED="1756218632080" MODIFIED="1756220477030">
<node TEXT="联合体（union）的 “活动成员” 规则" ID="ID_333017753" CREATED="1756219788236" MODIFIED="1756219791477">
<node TEXT="联合体的所有成员共享同一块内存空间，但同一时间只能有一个成员是 “活动的”（active member）—— 即最后被初始化或赋值的成员。访问非活动成员会导致未定义行为（UB）。" FOLDED="true" ID="ID_436428872" CREATED="1756219799694" MODIFIED="1756219802893">
<node TEXT="union U {&#xa;    float f;  // 浮点型成员&#xa;    int n;    // 整型成员&#xa;};&#xa;&#xa;//  constexpr函数：试图在编译期或运行期执行&#xa;constexpr int f() {&#xa;    U u{1.5f};  // 初始化联合体的f成员（此时f成为“活动成员”）&#xa;    return u.n; // 访问非活动成员n（未定义行为UB）&#xa;}&#xa;&#xa;int main() {&#xa;    // constexpr auto r0 = f(); // 编译失败：constexpr上下文不允许UB&#xa;    auto r1 = f(); // 编译通过：非constexpr上下文不检查UB，但行为仍未定义&#xa;    return 0;&#xa;}" ID="ID_1726021552" CREATED="1756220561552" MODIFIED="1756220563598"/>
</node>
</node>
<node TEXT="联合体中访问共同初始序列的规则" ID="ID_1766744556" CREATED="1756220103312" MODIFIED="1756220103634">
<node TEXT="如果联合体的两个成员是标准布局类型，且它们存在共同初始序列，那么即使其中一个成员不是 “活动成员”（未被初始化或最后赋值），访问这两个成员的共同初始序列部分是合法的（行为定义良好）" FOLDED="true" ID="ID_87959898" CREATED="1756220121191" MODIFIED="1756220122898">
<node TEXT="// 结构体A：包含int和char&#xa;struct A { int n0; char c0; };&#xa;&#xa;// 结构体B：包含int、char和float&#xa;struct B { int n1; char c1; float x; };&#xa;&#xa;// 联合体U：成员为结构体A和B&#xa;union U {&#xa;    A a;  // 成员a（类型A）&#xa;    B b;  // 成员b（类型B）&#xa;};&#xa;&#xa;int f() {&#xa;    // 初始化联合体的成员a（此时a是“活动成员”）&#xa;    U u{ { 1, &apos;2&apos; } };  // 等价于 u.a.n0=1, u.a.c0=&apos;2&apos;&#xa;    return u.b.n1;      // 访问非活动成员b的n1（合法，非UB）&#xa;}&#xa;&#xa;int main() {&#xa;    return f();  // 程序正常执行&#xa;}" ID="ID_701113323" CREATED="1756220229078" MODIFIED="1756220240530">
<font BOLD="false"/>
</node>
</node>
<node TEXT="通常，联合体中访问非活动成员是 UB，但共同初始序列是例外。这一规则的设计目的是：&#xa;允许通过联合体 “安全地” 访问不同结构体中布局兼容的初始部分，例如在解析二进制数据（如网络协议、文件格式）时，不同结构可能共享部分头部信息，通过联合体可以统一访问。" ID="ID_516958079" CREATED="1756220207013" MODIFIED="1756220207729"/>
</node>
</node>
<node TEXT="intptr_t 和 unitptr_t" POSITION="bottom_or_right" ID="ID_1567170146" CREATED="1756221780123" MODIFIED="1756221793668">
<node TEXT="只有指向同一数组或同一对象的指针，才能安全地使用&lt;、&gt;等关系运算符比较。对于两个无关对象（如m和n）的指针，直接比较的行为是未定义的（UB）" ID="ID_1656721033" CREATED="1756475368477" MODIFIED="1756475377048">
<node TEXT="内存中不同对象的地址分布由编译器和操作系统决定，标准不保证其相对顺序的比较结果有意义" ID="ID_1884996909" CREATED="1756475386231" MODIFIED="1756475388364"/>
</node>
<node TEXT="intptr_t" ID="ID_1084330515" CREATED="1756475402009" MODIFIED="1756475402367">
<node TEXT="定义在&lt;cstdint&gt;中" ID="ID_1140374748" CREATED="1756475413873" MODIFIED="1756475414723"/>
<node TEXT="是 C++ 标准定义的整数类型，专门用于存储指针的二进制表示" ID="ID_740764676" CREATED="1756475420588" MODIFIED="1756475420898"/>
<node TEXT="能够精确容纳任何指针类型转换后的数值（即指针的地址值可以完整存入intptr_t变量）" ID="ID_148357637" CREATED="1756475427893" MODIFIED="1756475428303"/>
<node TEXT="二者的位数与系统指针位数一致（32 位系统为 32 位，64 位系统为 64 位），确保指针地址不会被截断" ID="ID_968306157" CREATED="1756475456209" MODIFIED="1756475456665"/>
</node>
<node TEXT="uintptr_t是无符号版本，功能相同但存储无符号整数" ID="ID_1941444615" CREATED="1756475444966" MODIFIED="1756475445387"/>
</node>
<node TEXT="类型别名化规则" FOLDED="true" POSITION="bottom_or_right" ID="ID_795640364" CREATED="1756475872166" MODIFIED="1756476189189">
<node TEXT="不能通过一种类型的指针 / 引用去访问另一种不相关类型的对象，否则行为未定义。" ID="ID_1181982513" CREATED="1756475889568" MODIFIED="1756475890500"/>
<node TEXT="示例1" ID="ID_1352610247" CREATED="1756476151132" MODIFIED="1756476163233">
<node TEXT="// 假设当前平台下int和float大小相同（通常为4字节）&#xa;&#xa;float f = 1.5f;       // 定义float变量f并初始化&#xa;void* p = malloc(sizeof(f));  // 分配一块与f大小相同的内存&#xa;assert(p);            // 确保内存分配成功&#xa;&#xa;// 将f的内存内容拷贝到p指向的内存&#xa;int* q = static_cast&lt;int*&gt;(std::memcpy(p, &amp;f, sizeof(f)));&#xa;&#xa;int value = *q; // 解引用q，试图将float的内存解读为int（UB）" POSITION="bottom_or_right" ID="ID_1750558382" CREATED="1756475909254" MODIFIED="1756475949440"/>
<node TEXT="内存的 “类型” 由存储的数据决定，而非指针的类型" POSITION="bottom_or_right" ID="ID_1424266304" CREATED="1756475994469" MODIFIED="1756475995633"/>
<node TEXT="即使两种类型大小相同，也不能通过一种类型的指针访问另一种类型的对象。" POSITION="bottom_or_right" ID="ID_898836519" CREATED="1756476000976" MODIFIED="1756476001232"/>
<node TEXT="memcpy仅负责字节拷贝，无法解决类型不匹配导致的 UB 问题" POSITION="bottom_or_right" ID="ID_1493519807" CREATED="1756476007621" MODIFIED="1756476007915"/>
<node TEXT="若需在不同类型间转换（如浮点数与整数的二进制表示互转），应使用reinterpret_cast（尽管仍需谨慎），或通过联合体（在特定条件下合法）" POSITION="bottom_or_right" ID="ID_800342070" CREATED="1756476049786" MODIFIED="1756476050098"/>
</node>
<node TEXT="示例2" ID="ID_1446868827" CREATED="1756476163438" MODIFIED="1756476166943">
<node TEXT="float f = 1.5f;&#xa;int value;&#xa;std::memcpy(&amp;value, &amp;f, sizeof f); // Ok" POSITION="bottom_or_right" ID="ID_1765617871" CREATED="1756476063386" MODIFIED="1756476071459"/>
<node TEXT="它通过字节级拷贝，将 float 的二进制数据写入到一个真实的 int 对象中。" POSITION="bottom_or_right" ID="ID_198573769" CREATED="1756476096427" MODIFIED="1756476096761"/>
<node TEXT="最终访问的是 int 类型的 value，不涉及 “用错误类型指针访问其他对象”，因此不违反类型别名化规则。" POSITION="bottom_or_right" ID="ID_472278076" CREATED="1756476103687" MODIFIED="1756476103982"/>
<node TEXT="这种操作是 C++ 中安全处理 “不同类型二进制表示转换” 的标准方式，也是 memcpy 这类底层内存函数的典型用途。" POSITION="bottom_or_right" ID="ID_1546756377" CREATED="1756476118008" MODIFIED="1756476118257"/>
<node TEXT="常见用途" POSITION="bottom_or_right" ID="ID_1342639997" CREATED="1756476135096" MODIFIED="1756476138640">
<node TEXT="查看浮点数的 IEEE 754 二进制编码（如将 float 的字节拷贝到 int 中，打印其整数形式以观察二进制）。" ID="ID_703941262" CREATED="1756476138944" MODIFIED="1756476140111"/>
<node TEXT="序列化 / 反序列化数据（将对象的二进制表示写入文件或网络，再读回还原）。" ID="ID_1111426844" CREATED="1756476147153" MODIFIED="1756476147441"/>
</node>
</node>
</node>
<node TEXT="std::start_lifetime_as" POSITION="bottom_or_right" ID="ID_941144146" CREATED="1756476394733" MODIFIED="1756476395125">
<node TEXT="在指针p指向的内存区域中，显式启动T类型对象的生命周期，并返回指向该T类型对象的指针。" ID="ID_988089728" CREATED="1756476404372" MODIFIED="1756476643475">
<node TEXT="内存区域p必须足够容纳一个T类型对象（即sizeof(T) &lt;= 内存大小），且内存对齐需满足T的对齐要求" ID="ID_1928988673" CREATED="1756476620920" MODIFIED="1756476622237"/>
<node TEXT="调用后，p指向的内存被正式视为T类型对象，后续通过返回的指针访问该内存（如*p）是完全合法的（非 UB）。" ID="ID_183888799" CREATED="1756476626479" MODIFIED="1756476626808"/>
</node>
<node TEXT="是 C++ 中安全进行底层内存操作（如内存池、序列化 / 反序列化）的标准方式。" ID="ID_556906559" CREATED="1756476707908" MODIFIED="1756476708231"/>
<node TEXT="C++ 中 “内存” 与 “对象” 的区别" ID="ID_1922697289" CREATED="1756476486064" MODIFIED="1756476486374">
<node TEXT="内存区域只是一块原始的字节存储空间（如char buf[]分配的字节）。" ID="ID_1881428729" CREATED="1756476490915" MODIFIED="1756476491821"/>
<node TEXT="对象是 “具有类型的内存区域”，其生命周期需要通过特定方式启动（如变量定义、new操作、或std::start_lifetime_as等）。" ID="ID_1226945779" CREATED="1756476496815" MODIFIED="1756476497089"/>
</node>
<node TEXT="举例1" ID="ID_1704063878" CREATED="1756476527566" MODIFIED="1756476686635">
<node TEXT="// 确保short类型在当前平台下占2字节&#xa;static_assert(sizeof(short) == 2);&#xa;&#xa;#include &lt;memory&gt;  // 包含std::start_lifetime_as的定义&#xa;&#xa;int main() {&#xa;    // 定义一个char数组，包含4个字节的原始数据&#xa;    char buf[]{ 0x00, 0x01, 0x02, 0x03 };&#xa;   &#xa;    // 在buf指向的内存中启动short类型对象的生命周期，返回指向该对象的指针&#xa;    short* p = std::start_lifetime_as&lt;short&gt;(buf);&#xa;   &#xa;    // 合法地将*p作为short类型使用（此时p指向的内存已被确认为short对象）&#xa;    // use *p as a short&#xa;}" ID="ID_1258979333" CREATED="1756476530452" MODIFIED="1756476531311"/>
<node TEXT="如果直接将一块原始内存的指针通过reinterpret_cast转换为其他类型的指针并访问（例如short* p = reinterpret_cast&lt;short*&gt;(buf); *p），可能因 “对象生命周期未启动” 导致未定义行为（UB）—— 因为编译器无法确认这块内存是否真的是一个short对象" POSITION="bottom_or_right" ID="ID_848456296" CREATED="1756476509766" MODIFIED="1756476510620"/>
</node>
<node TEXT="举例2" ID="ID_1372624754" CREATED="1756476687609" MODIFIED="1756476690567">
<node TEXT="short* p = reinterpret_cast&lt;short*&gt;(buf);&#xa;*p;  // 可能是UB：因为buf中未显式启动short对象的生命周期" ID="ID_1485100548" CREATED="1756476690918" MODIFIED="1756476692236"/>
</node>
</node>
</node>
<node TEXT="cv限定符" FOLDED="true" POSITION="bottom_or_right" ID="ID_1482977478" CREATED="1756515052996" MODIFIED="1756515144870">
<edge COLOR="#7c007c"/>
<node TEXT="const" POSITION="bottom_or_right" ID="ID_705225288" CREATED="1756514550350" MODIFIED="1756514558562">
<node TEXT="保护变量不被意外修改，同时可让编译器进行优化（如将变量存储在只读内存区域）" ID="ID_1130668049" CREATED="1756514575756" MODIFIED="1756514586190">
<font BOLD="false"/>
</node>
<node TEXT="用法" ID="ID_106194788" CREATED="1756514747066" MODIFIED="1756514749919">
<node TEXT="定义常量" ID="ID_1419209086" CREATED="1756514758477" MODIFIED="1756514764831">
<node TEXT="声明值不可修改的变量，需在定义时初始化" ID="ID_1377109026" CREATED="1756514765045" MODIFIED="1756514770177"/>
</node>
<node TEXT="修饰函数参数" ID="ID_1454952089" CREATED="1756514770850" MODIFIED="1756514771286"/>
<node TEXT="修饰指针和引用" ID="ID_1402130191" CREATED="1756514788469" MODIFIED="1756514788797">
<node TEXT="const int* p;  // 指针指向的内容不可修改（常量指针）&#xa;int* const q;  // 指针本身不可修改（指针常量）&#xa;const int&amp; ref = x;  // 引用的对象不可修改" ID="ID_1081823518" CREATED="1756514802152" MODIFIED="1756514803277"/>
</node>
<node TEXT="修饰类的成员函数" ID="ID_1385461127" CREATED="1756514808338" MODIFIED="1756514808661">
<node TEXT="表示该函数不会修改类的成员变量（常成员函数）" ID="ID_136688563" CREATED="1756514815318" MODIFIED="1756514815962"/>
<node TEXT="不能调用同一对象的非const成员函数" ID="ID_1813824214" CREATED="1756514834546" MODIFIED="1756514852499"/>
</node>
<node TEXT="修饰类的成员变量" ID="ID_1929318677" CREATED="1756514822510" MODIFIED="1756514822819">
<node TEXT="类的 const 成员变量必须在初始化列表中初始化，且生命周期内不可修改" ID="ID_22376464" CREATED="1756514830006" MODIFIED="1756514830715"/>
</node>
<node TEXT="修饰全局 / 静态变量" ID="ID_1428252396" CREATED="1756514865842" MODIFIED="1756514866169">
<node TEXT="限制其作用域（如文件内可见），或作为编译期常量供编译器优化" ID="ID_905071397" CREATED="1756514875556" MODIFIED="1756514897487"/>
</node>
</node>
</node>
<node TEXT="volatile" POSITION="bottom_or_right" ID="ID_1996073514" CREATED="1756514613496" MODIFIED="1756514613958">
<node TEXT="表示 “易变的”，即被修饰的变量值可能被程序之外的因素意外修改（如硬件设备、其他线程）" ID="ID_1802950874" CREATED="1756514621232" MODIFIED="1756514630356"/>
<node TEXT="禁止编译器对变量进行 “优化假设”（如缓存变量值到寄存器），强制每次访问都直接从内存读取最新值。" ID="ID_1031307976" CREATED="1756514630893" MODIFIED="1756514631387"/>
<node TEXT="用法" ID="ID_728335388" CREATED="1756514899417" MODIFIED="1756514902094">
<node TEXT="硬件寄存器访问" ID="ID_856699166" CREATED="1756514902326" MODIFIED="1756514903144"/>
<node TEXT="多线程共享变量" ID="ID_729912707" CREATED="1756514921925" MODIFIED="1756514922219">
<node TEXT="避免编译器优化导致线程间数据不一致（需配合同步机制使用）" ID="ID_1436140540" CREATED="1756514935196" MODIFIED="1756514940493"/>
</node>
<node TEXT="信号处理函数中的变量" ID="ID_1070781821" CREATED="1756514941249" MODIFIED="1756514941615">
<node TEXT="被信号处理函数修改的变量，需用 volatile 确保主线程读取到最新值" ID="ID_1416340727" CREATED="1756514947454" MODIFIED="1756514953949"/>
</node>
<node TEXT="禁止编译器优化" ID="ID_473392648" CREATED="1756514954569" MODIFIED="1756514954957">
<node TEXT="强制每次访问都从内存读取（而非寄存器缓存），用于测试或特殊逻辑" ID="ID_1478611776" CREATED="1756514960255" MODIFIED="1756514970773"/>
</node>
</node>
<node TEXT="取 volatile int 的地址会得到 volatile int*，它不能隐式转换为int*，因为该转换会丢失一些安全保证。" POSITION="bottom_or_right" ID="ID_385276353" CREATED="1756515096908" MODIFIED="1756515108932"/>
</node>
<node TEXT="可以组合使用" POSITION="bottom_or_right" ID="ID_1790388061" CREATED="1756515058034" MODIFIED="1756515062597"/>
</node>
<node TEXT="类型转换" FOLDED="true" POSITION="bottom_or_right" ID="ID_1021828762" CREATED="1756515136823" MODIFIED="1756515149661">
<edge COLOR="#007c7c"/>
<node TEXT="static_cast" POSITION="bottom_or_right" ID="ID_1507285183" CREATED="1756515177284" MODIFIED="1756515178222">
<node TEXT="静态类型转换（编译期检查）" ID="ID_161702954" CREATED="1756518033169" MODIFIED="1756518033583"/>
<node TEXT="用于编译期可确定的、相关类型之间的转换，不进行运行时类型检查" ID="ID_1712134299" CREATED="1756515428053" MODIFIED="1756515429081"/>
<node TEXT="适用场景" ID="ID_1305223721" CREATED="1756515440223" MODIFIED="1756515440555">
<node TEXT="基本类型之间的转换（如int ↔ float、char ↔ int）；" ID="ID_572327938" CREATED="1756515476392" MODIFIED="1756515477422"/>
<node TEXT="类层次结构中向上转型（派生类 → 基类，安全，编译器隐式转换也可完成）" ID="ID_314774139" CREATED="1756515489617" MODIFIED="1756515490808"/>
<node TEXT="类层次结构中向下转型（基类 → 派生类，不安全，无运行时检查）" ID="ID_128231370" CREATED="1756515496987" MODIFIED="1756515498480"/>
<node TEXT="空指针（void*）与其他类型指针的转换（需显式转换）" ID="ID_83914016" CREATED="1756515504792" MODIFIED="1756515505931"/>
<node TEXT="非const到const的转换（但反之不行，需const_cast）" ID="ID_195908754" CREATED="1756515512841" MODIFIED="1756515513548"/>
</node>
<node TEXT="注意事项" ID="ID_1447622195" CREATED="1756515546268" MODIFIED="1756515546601">
<node TEXT="无运行时类型检查，向下转型（基类→派生类）可能导致未定义行为（若基类指针实际指向基类对象）" ID="ID_828551230" CREATED="1756515552422" MODIFIED="1756515553446"/>
<node TEXT="不能用于移除const/volatile限定符（需用const_cast）" ID="ID_172386852" CREATED="1756515559025" MODIFIED="1756515559430"/>
<node TEXT="不能在无继承关系的类之间转换（需用reinterpret_cast）" ID="ID_1313294141" CREATED="1756515565453" MODIFIED="1756515565764"/>
<node TEXT="可以调整被访问的内存地址，以考虑转换中涉及的类型。例如，当D类至少有两个非空基类，B0和B1时，这两个派生类的部分在D对象中地址不同（如果相同，它们就会重叠！），因此从D*到其某个基类的static_cast可能会产生与D*本身不同的地址。" POSITION="bottom_or_right" ID="ID_1079774956" CREATED="1756517627537" MODIFIED="1756535063103"/>
</node>
</node>
<node TEXT="dynamic_cast" POSITION="bottom_or_right" ID="ID_1908884331" CREATED="1756515182653" MODIFIED="1756515182948">
<node TEXT="动态类型转换（运行时检查）" ID="ID_1948495457" CREATED="1756518045133" MODIFIED="1756518045404"/>
<node TEXT="仅用于多态类型（含虚函数的类）的指针或引用，用于类层次结构中向下转型或交叉转型，会进行运行时类型检查，确保转换安全" ID="ID_1822241702" CREATED="1756515577108" MODIFIED="1756515578185"/>
<node TEXT="适用场景" ID="ID_1727423141" CREATED="1756515585835" MODIFIED="1756515586304">
<node TEXT="基类指针 / 引用 → 派生类指针 / 引用（向下转型）" ID="ID_98232328" CREATED="1756515600525" MODIFIED="1756515601351"/>
<node TEXT="同一继承体系中不同派生类之间的交叉转型（如Derived1* → Derived2*，需通过共同基类）" ID="ID_113128929" CREATED="1756515668085" MODIFIED="1756515668475"/>
</node>
<node TEXT="注意事项" ID="ID_666137878" CREATED="1756515586711" MODIFIED="1756515593081">
<node TEXT="仅适用于多态类型（类必须包含至少一个虚函数），否则编译错误" ID="ID_1295358391" CREATED="1756515680054" MODIFIED="1756515680666"/>
<node TEXT="指针转换失败返回nullptr，引用转换失败抛出std::bad_cast异常" ID="ID_178631299" CREATED="1756515687502" MODIFIED="1756515687857"/>
<node TEXT="运行时检查会带来性能开销，非必要不滥用" ID="ID_786817544" CREATED="1756515694165" MODIFIED="1756515694479"/>
<node TEXT="不能用于基本类型或非类类型的转换" ID="ID_611077894" CREATED="1756515699806" MODIFIED="1756515700124"/>
</node>
</node>
<node TEXT="const_cast" POSITION="bottom_or_right" ID="ID_1582590829" CREATED="1756515187711" MODIFIED="1756515188020">
<node TEXT="const/volatile 限定符转换" ID="ID_1488946589" CREATED="1756518057705" MODIFIED="1756518057980"/>
<node TEXT="唯一能添加或移除const、volatile限定符的转换，仅用于指针、引用或成员指针" ID="ID_1131405798" CREATED="1756517868043" MODIFIED="1756517869051"/>
<node TEXT="适用场景" ID="ID_157134528" CREATED="1756517874683" MODIFIED="1756517875032">
<node TEXT="移除const限定符（临时访问const对象的非const版本，但需确保原对象本身非const）并且不能修改，否则导致UB" ID="ID_1427324501" CREATED="1756517900051" MODIFIED="1756517955997">
<node TEXT="const int a = 10;&#xa;int* p = const_cast&lt;int*&gt;(&amp;a);  // 移除const（语法合法，但原对象a是const）&#xa;// *p = 20;  // 未定义行为（修改真正的const对象）" ID="ID_1458259479" CREATED="1756534822922" MODIFIED="1756534824449"/>
<node TEXT="int b = 20;&#xa;const int* const_ptr = &amp;b;&#xa;int* non_const_ptr = const_cast&lt;int*&gt;(const_ptr);  // 合法：原对象b非const&#xa;*non_const_ptr = 30;  // 正确（b的值变为30）" ID="ID_549256525" CREATED="1756534829176" MODIFIED="1756534829550"/>
</node>
<node TEXT="添加const限定符（将非const对象转换为const）" ID="ID_1072347509" CREATED="1756517906034" MODIFIED="1756517906360"/>
</node>
<node TEXT="注意事项" ID="ID_1586135165" CREATED="1756517875253" MODIFIED="1756517881142">
<node TEXT="只能用于指针、引用或成员指针，不能用于对象本身（如const_cast&lt;int&gt;(a)错误）" ID="ID_531444163" CREATED="1756517992194" MODIFIED="1756517992486"/>
<node TEXT="不能转换类型，只能修改const/volatile属性（如const int* → int*，但不能→float*）" ID="ID_98930354" CREATED="1756518000455" MODIFIED="1756518000819"/>
<node TEXT="dynamic_cast要求二进制文件必须包含运行时类型信息（RTTI），这会导致二进制文件变大。由于这些开销，一些应用领域倾向于避免使用这种转换。" ID="ID_645318322" CREATED="1756519350083" MODIFIED="1756519365082"/>
</node>
</node>
<node TEXT="reinterpret_cast" POSITION="bottom_or_right" ID="ID_71068987" CREATED="1756515191927" MODIFIED="1756515192214">
<node TEXT="重解释类型转换（底层二进制转换）" ID="ID_1624366568" CREATED="1756518072424" MODIFIED="1756518072791"/>
<node TEXT="https://eel.is/c++draft/expr.reinterpret.cast" ID="ID_1861486670" CREATED="1756535167492" MODIFIED="1756535167878"/>
<node TEXT="最 “粗暴” 的转换，直接重新解释内存的二进制表示，忽略类型关联性，编译期完成，无类型检查" ID="ID_1198454188" CREATED="1756518013871" MODIFIED="1756518015090"/>
<node TEXT="适用场景" ID="ID_1563788228" CREATED="1756517874683" MODIFIED="1756517875032">
<node TEXT="无关类型的指针 / 引用之间的转换（如int* ↔ float*、void* ↔ 函数指针）" ID="ID_1943344980" CREATED="1756518086726" MODIFIED="1756518087518"/>
<node TEXT="指针与整数类型（如intptr_t）之间的转换" ID="ID_579473454" CREATED="1756518092558" MODIFIED="1756518092895"/>
<node TEXT="低层次内存操作（如解析二进制数据）" ID="ID_1899656590" CREATED="1756518097989" MODIFIED="1756518098346"/>
</node>
<node TEXT="注意事项" ID="ID_1235709473" CREATED="1756517875253" MODIFIED="1756517881142">
<node TEXT="行为高度依赖平台（如字节序、类型大小），可移植性差；" ID="ID_460499011" CREATED="1756518106026" MODIFIED="1756518106663"/>
<node TEXT="几乎不进行类型检查，极易导致未定义行为（如访问错误类型的对象）" ID="ID_1997883134" CREATED="1756518111886" MODIFIED="1756518112197"/>
<node TEXT="仅在底层内存操作（如驱动、序列化）中使用，日常开发应避免" ID="ID_1016155946" CREATED="1756518124117" MODIFIED="1756518124510"/>
</node>
</node>
<node TEXT="duration_cast ( c++11 )" FOLDED="true" POSITION="bottom_or_right" ID="ID_1004861338" CREATED="1756515197200" MODIFIED="1756515232065">
<node TEXT="时间间隔转换" ID="ID_1319434729" CREATED="1756518142792" MODIFIED="1756518143782"/>
<node TEXT="属于&lt;chrono&gt;库，用于不同时间间隔类型（std::chrono::duration）之间的转换，如秒→毫秒、微秒→纳秒等" ID="ID_542886121" CREATED="1756518155377" MODIFIED="1756518155934"/>
<node TEXT="适用场景" ID="ID_72837502" CREATED="1756517874683" MODIFIED="1756517875032">
<node TEXT="时间单位转换（需显式指定目标类型），会根据精度进行截断或舍入" ID="ID_771315439" CREATED="1756518163382" MODIFIED="1756518164081"/>
<node TEXT="seconds s(1);  // 1秒&#xa;// 转换为毫秒（1秒=1000毫秒）&#xa;milliseconds ms = duration_cast&lt;milliseconds&gt;(s);&#xa;assert(ms.count() == 1000);" ID="ID_1938615674" CREATED="1756518236138" MODIFIED="1756518243153"/>
<node TEXT="microseconds us(1500);  // 1500微秒&#xa;// 转换为毫秒（截断小数部分，1500微秒=1.5毫秒→1毫秒）&#xa;milliseconds ms2 = duration_cast&lt;milliseconds&gt;(us);&#xa;assert(ms2.count() == 1);" ID="ID_469570439" CREATED="1756518248683" MODIFIED="1756518256162"/>
</node>
<node TEXT="注意事项" ID="ID_1752061000" CREATED="1756517875253" MODIFIED="1756517881142">
<node TEXT="源类型与目标类型的精度不同时，可能导致精度损失（如高精度→低精度会截断）" ID="ID_1161795693" CREATED="1756518180462" MODIFIED="1756518181319"/>
<node TEXT="仅用于std::chrono::duration相关类型，不能用于其他类型转换" ID="ID_1028027928" CREATED="1756518187922" MODIFIED="1756518188320"/>
<node TEXT="转换结果是整数（count()返回的是单位数量），不保留小数部分" ID="ID_1210674223" CREATED="1756518196536" MODIFIED="1756518196916"/>
</node>
</node>
<node TEXT="bit_cast ( c++20 )" POSITION="bottom_or_right" ID="ID_1120659680" CREATED="1756515203796" MODIFIED="1756515239487">
<node TEXT="二进制精确转换" ID="ID_1451043908" CREATED="1756518265400" MODIFIED="1756518266928"/>
<node TEXT="用于将一个对象的二进制表示精确复制到另一个类型，要求源类型和目标类型大小相同且可平凡复制（trivially copyable）。" ID="ID_1874608060" CREATED="1756518275671" MODIFIED="1756518276245"/>
<node TEXT="适用场景" FOLDED="true" ID="ID_1089795504" CREATED="1756517874683" MODIFIED="1756517875032">
<node TEXT="安全地在不同类型间转换二进制表示（如float与int的二进制互转），比reinterpret_cast更安全（有编译期检查）" ID="ID_1783400908" CREATED="1756518284647" MODIFIED="1756518285659"/>
<node TEXT="static_assert(sizeof(float) == sizeof(int));  // 要求大小相同&#xa;&#xa;float f = 1.5f;&#xa;// 将float的二进制表示转换为int&#xa;int i = std::bit_cast&lt;int&gt;(f);&#xa;// 1.5f的IEEE 754表示为0x3F400000，因此i的值为0x3F400000&#xa;&#xa;// 反向转换：int→float&#xa;float f2 = std::bit_cast&lt;float&gt;(i);&#xa;assert(f2 == 1.5f);  // 二进制相同，转换后值一致" ID="ID_1128911131" CREATED="1756518353515" MODIFIED="1756518369171"/>
<node TEXT="#include &lt;bit&gt;  // 包含std::bit_cast的定义&#xa;// 结构体A：包含int和double成员&#xa;struct A { int a; double b; };&#xa;// 结构体B：包含unsigned int和double成员&#xa;struct B { unsigned int c; double d; };&#xa;int main() {&#xa;    // 常量表达式初始化A类型对象a&#xa;    constexpr A a{ 3, 3.5 };&#xa;    // 使用bit_cast将A类型的a转换为B类型的b（编译期完成）&#xa;    constexpr B b = std::bit_cast&lt;B&gt;(a);&#xa;    // 验证转换后的数据是否与原始数据的二进制表示一致&#xa;    static_assert(a.a == b.c &amp;&amp; a.b == b.d);  // 成立（二进制相同）&#xa;    // 验证a和b是不同的对象（内存地址不同）&#xa;    static_assert((void*)&amp;a != (void*)&amp;b);    // 成立&#xa;}" ID="ID_312019309" CREATED="1756535448292" MODIFIED="1756535460489"/>
</node>
<node TEXT="注意事项" ID="ID_1260176426" CREATED="1756517875253" MODIFIED="1756517881142">
<node TEXT="编译期检查sizeof(源类型) == sizeof(目标类型)，不满足则编译错误" ID="ID_1350851592" CREATED="1756518298477" MODIFIED="1756518299632"/>
<node TEXT="要求源类型和目标类型都是 “可平凡复制” 的（无自定义拷贝构造函数、非虚函数等）" ID="ID_186959280" CREATED="1756518306252" MODIFIED="1756518306712"/>
<node TEXT="比reinterpret_cast更安全（避免指针解引用的 UB），是二进制转换的推荐方式" ID="ID_1129995493" CREATED="1756518313235" MODIFIED="1756518313649"/>
<node TEXT="结果依赖类型的二进制表示（如浮点的 IEEE 754 标准），跨平台需注意兼容性" ID="ID_726070485" CREATED="1756518319577" MODIFIED="1756518319958"/>
</node>
</node>
<node TEXT="避免使用c风格的类型转换" POSITION="bottom_or_right" ID="ID_1526356850" CREATED="1756535562516" MODIFIED="1756535572865">
<node TEXT="在通过自动化搜索源代码文本时，C风格转换更难被发现，因为它们看起来像函数调用中的参数。由于转换是我们对类型系统的“欺骗“方式，时不时重新审视使用它们的决定是值得的，因此能够找到它们很有价值。相比之下，C++转换是关键字，这使得它们更容易被发现。" ID="ID_1501132908" CREATED="1756535573120" MODIFIED="1756535922334"/>
<node TEXT="C风格转换并不传达转换发生的原因。当写（T）expr时，我们并未说明是否想要更改cv限定符、导航类层次结构、仅仅改变指针类型等等。特别是，当在不同类型的指针之间转换时，C风格转换通常表现为reinterpret_cast，在某些情况下这可能导致灾难性的结果，比如多继承情况，不同的类层次结构之间转换" ID="ID_1987965296" CREATED="1756535936943" MODIFIED="1756536006296"/>
</node>
</node>
<node TEXT="析构函数" FOLDED="true" POSITION="bottom_or_right" ID="ID_74431074" CREATED="1756536063755" MODIFIED="1756632241503">
<edge COLOR="#7c7c00"/>
<node TEXT="析构函数的作用" POSITION="bottom_or_right" ID="ID_573621642" CREATED="1756538029412" MODIFIED="1756538040250">
<node TEXT="当一个对象达到其生命周期的终点时，会调用一个称为析构函数的特成员函数。对于某个类X，该成员函数名为X：-X()。此函数为类型X提供了在结束其生命周期之前执行一些“最后时刻“操作的机会。析构函数的一个惯用用法是释放被销毁对象所持有的资源；" POSITION="bottom_or_right" ID="ID_1952629584" CREATED="1756538139036" MODIFIED="1756538510933"/>
<node TEXT="在类层次结构中，当一个对象达到其生命周期终点时，会发生如下过程" POSITION="bottom_or_right" ID="ID_1056431877" CREATED="1756538203148" MODIFIED="1756630499103">
<node TEXT="1，调用该对象的析构函数" ID="ID_1250439747" CREATED="1756538277088" MODIFIED="1756538351754"/>
<node TEXT="2，按声明顺序调用其每个非静态数据成员的析构函数" ID="ID_295454587" CREATED="1756538290367" MODIFIED="1756538355880"/>
<node TEXT="3，按声明顺序调用其每个基类子对象（非正式称为“父类&quot;）的析构函数" ID="ID_488263010" CREATED="1756538298506" MODIFIED="1756538359665"/>
</node>
<node TEXT="当通过对指针应用delete运算符显式销毁对象时，过程包括先销毁指针所指向的对象，然后释放该对象所在的内存块。" POSITION="bottom_or_right" ID="ID_444112233" CREATED="1756538222705" MODIFIED="1756538266320"/>
<node TEXT="什么时候需要将析构函数声明为虚函数" POSITION="bottom_or_right" ID="ID_627783186" CREATED="1756538438537" MODIFIED="1756538452191">
<node TEXT="当某个类X至少暴露一个虚成员函数时" ID="ID_1905815730" CREATED="1756538461756" MODIFIED="1756538463082"/>
<node TEXT="这意味着一个X*指针实际上可能指向一个直接或间接继承自X的类Y的对象。为了确保调用的是Y的析构函数而非X的析构函数，通常会将X：~X()声明为虚函数" ID="ID_1014148946" CREATED="1756538473048" MODIFIED="1756538523279"/>
<node TEXT="否则可能导致未调用正确的析构函数，从而引发资源泄漏。" ID="ID_190574340" CREATED="1756538479434" MODIFIED="1756538482510"/>
</node>
</node>
<node TEXT="析构函数不应该做什么" POSITION="bottom_or_right" ID="ID_339200454" CREATED="1756538041069" MODIFIED="1756538049834">
<node TEXT="析构函数不应抛出未捕获的异常，否则会导致程序终止" ID="ID_423816036" CREATED="1756539729050" MODIFIED="1756540074010"/>
<node TEXT="析构函数隐式地是noexcept的，这意味着从析构函数抛出异常会调用std::terminate()，程序也将因此终止。" ID="ID_618763451" CREATED="1756539793275" MODIFIED="1756539812958"/>
<node TEXT="声明 noexcept(false) 后，明确允许析构函数抛出异常，因此异常可以被正常捕获和处理，程序不会终止" ID="ID_733968795" CREATED="1756540608441" MODIFIED="1756540609035">
<node TEXT="如果析构函数在抛出异常时，有另外一个异常已经在传播了，此时依然会调用terminate" ID="ID_1908805826" CREATED="1756540632977" MODIFIED="1756540676727"/>
</node>
</node>
<node TEXT="何时编写析构函数" POSITION="bottom_or_right" ID="ID_582325408" CREATED="1756538050383" MODIFIED="1756538060843">
<node TEXT="当类的对象需要管理资源（即资源的生命周期与对象绑定）时，必须手动编写析构函数：" ID="ID_204198216" CREATED="1756630520873" MODIFIED="1756630522055">
<node TEXT="类中包含动态分配的内存（如new分配的指针）；" ID="ID_720223414" CREATED="1756630527773" MODIFIED="1756630528680"/>
<node TEXT="持有文件句柄、网络套接字、数据库连接等系统资源；" ID="ID_110704292" CREATED="1756630533958" MODIFIED="1756630534211"/>
<node TEXT="使用了锁、信号量等同步机制，需要在对象销毁时释放；" ID="ID_1308627498" CREATED="1756630539124" MODIFIED="1756630539405"/>
<node TEXT="继承体系中，基类需要通过析构函数确保派生类资源正确释放（此时基类析构函数需声明为virtual）。" ID="ID_1156629043" CREATED="1756630558037" MODIFIED="1756630558315"/>
</node>
</node>
<node TEXT="何时使用编译器自动生成的析构函数" POSITION="bottom_or_right" ID="ID_42974237" CREATED="1756538061678" MODIFIED="1756632241502">
<node TEXT="类仅包含基本类型成员（如int、double）或 “资源自管理” 的成员（如std::string、std::vector等标准库容器，它们自身已实现析构函数释放资源）；" ID="ID_1373446899" CREATED="1756630569522" MODIFIED="1756630571401"/>
<node TEXT="类不涉及任何动态资源分配或外部资源持有；" ID="ID_910581248" CREATED="1756630578254" MODIFIED="1756630578616"/>
<node TEXT="类的资源管理通过智能指针（如std::unique_ptr、std::shared_ptr）等 RAII 工具自动完成（智能指针的析构函数会自动释放资源）" ID="ID_1469985863" CREATED="1756630597966" MODIFIED="1756630598343"/>
</node>
<node TEXT="如何利用析构函数来管理资源" POSITION="bottom_or_right" ID="ID_446193531" CREATED="1756630202359" MODIFIED="1756630202963">
<node TEXT="遵循RAII（资源获取即初始化）原则：在构造函数中获取资源，在析构函数中释放资源，确保资源与对象的生命周期严格绑定。" POSITION="bottom_or_right" ID="ID_1229411788" CREATED="1756629795442" MODIFIED="1756630620447">
<node TEXT="资源获取即初始化（Resource acquisition is initialization）" POSITION="bottom_or_right" ID="ID_1109424550" CREATED="1756539095119" MODIFIED="1756539181322"/>
<node TEXT="利用作用域来自动管理资源" POSITION="bottom_or_right" ID="ID_886975703" CREATED="1756539543260" MODIFIED="1756539553768"/>
<node TEXT="举例" FOLDED="true" POSITION="bottom_or_right" ID="ID_1246144812" CREATED="1756539485222" MODIFIED="1756539487860">
<node TEXT="template &lt;class F&gt; class scoped_finalizer {&#xd;&#xa;   F f;&#xd;&#xa;public:&#xd;&#xa;   scoped_finalizer(const scoped_finalizer&amp;) = delete;&#xd;&#xa;   scoped_finalizer&amp; operator=&#xd;&#xa;      (const scoped_finalizer&amp;) = delete;&#xd;&#xa;   scoped_finalizer(F f) : f{ f } {&#xd;&#xa;   }&#xd;&#xa;   ~scoped_finalizer() {&#xd;&#xa;      f();&#xd;&#xa;   }&#xd;&#xa;};" POSITION="bottom_or_right" ID="ID_263643523" CREATED="1756539488115" MODIFIED="1756539657770">
<node TEXT="不能复制这个对象" ID="ID_862080099" CREATED="1756539676879" MODIFIED="1756539681763"/>
<node TEXT="仅仅是为了使用它的析构函数来帮助释放资源" ID="ID_758508640" CREATED="1756539682726" MODIFIED="1756539703993"/>
</node>
<node TEXT="void f(const char *name) {&#xd;&#xa;   FILE *file = open_file(name);&#xd;&#xa;   if(!file) return; // failure&#xd;&#xa;   auto sf = scoped_finalizer{ [&amp;file] {&#xd;&#xa;      close_file(file);&#xd;&#xa;   } }; // &lt;-- sf manages file now&#xd;&#xa;   std::vector&lt;char&gt; v;&#xd;&#xa;   char buf[N]; // N is a positive integral constant&#xd;&#xa;   for(int n = read_from(file, buf, N); n != 0;&#xd;&#xa;       n = read_from(file, buf, N))&#xd;&#xa;      v.insert(end(v), buf + 0, buf + n);&#xd;&#xa;   process(v); // our processing function&#xd;&#xa;} // implicit close_file(file) through sf&apos;s destructor" POSITION="bottom_or_right" ID="ID_672201026" CREATED="1756539508545" MODIFIED="1756539508894"/>
</node>
</node>
<node TEXT="当作用域结束，自动对象就会自动销毁，此时就会调用析构函数，比起手动管理资源，这个方法更加安全，因为对象创建到销毁中间可能发生异常，自动对象即兼顾了异常情况，也兼顾了正常情况" POSITION="bottom_or_right" ID="ID_188325685" CREATED="1756629862023" MODIFIED="1756630037368">
<node TEXT="需要正确理解对象销毁的顺序，否则会因为使用了已经销毁的资源导致崩溃" ID="ID_731486708" CREATED="1756629947448" MODIFIED="1756629983250"/>
</node>
</node>
<node TEXT="构造对象的顺序" POSITION="bottom_or_right" ID="ID_1371209752" CREATED="1756630690544" MODIFIED="1756630696466">
<node TEXT="先调用基类的构造函数（按继承声明顺序，如class Derived : public Base1, public Base2则先Base1后Base2）；" ID="ID_36231219" CREATED="1756630714047" MODIFIED="1756630718092"/>
<node TEXT="再调用成员对象的构造函数（按成员在类中声明的顺序，与初始化列表顺序无关）；" ID="ID_131993078" CREATED="1756630723980" MODIFIED="1756630724312"/>
<node TEXT="最后调用当前类的构造函数体。" ID="ID_1311272640" CREATED="1756630728573" MODIFIED="1756630728952"/>
</node>
<node TEXT="析构对象的顺序" POSITION="bottom_or_right" ID="ID_702377073" CREATED="1756630696606" MODIFIED="1756630705823">
<node TEXT="先调用当前类的析构函数体；" ID="ID_218210242" CREATED="1756630739034" MODIFIED="1756630739883"/>
<node TEXT="再调用成员对象的析构函数（按成员声明的逆序）；" ID="ID_821070213" CREATED="1756630744633" MODIFIED="1756630744949"/>
<node TEXT="最后调用基类的析构函数（按继承声明的逆序）。" ID="ID_825531181" CREATED="1756630749729" MODIFIED="1756630750827"/>
</node>
<node TEXT="变量初始化顺序" POSITION="bottom_or_right" ID="ID_26596858" CREATED="1756630863390" MODIFIED="1756630867472">
<node TEXT="TODO：" ID="ID_1713712523" CREATED="1756631096101" MODIFIED="1756631103022"/>
<node TEXT="作用域内的自动对象按照构造的逆序被销毁。" POSITION="bottom_or_right" ID="ID_513245187" CREATED="1756628858159" MODIFIED="1756628896024"/>
<node TEXT="C++允许在函数内声明静态对象：这些对象在函数首次调用时构造，并从那时起一直存活直到程序执行结束。" POSITION="bottom_or_right" ID="ID_1146566436" CREATED="1756628896960" MODIFIED="1756628901143"/>
<node TEXT="C++允许使用全局变量（这里涉及许多链接规范的细节，如static或extern）。全局对象按照构造的逆序被销毁。C++还允许类中有静态数据成员：它们本质上也是全局变量。" POSITION="bottom_or_right" ID="ID_1535986604" CREATED="1756628902294" MODIFIED="1756629061664"/>
<node TEXT="thread_local变量，可以被延迟初始化，" POSITION="bottom_or_right" ID="ID_575212205" CREATED="1756628918007" MODIFIED="1756628933386"/>
<node TEXT="正确理解对象的销毁顺序对正确使用资源管理机制-析构函数-至关重要" POSITION="bottom_or_right" ID="ID_1224890099" CREATED="1756629458464" MODIFIED="1756629507774"/>
</node>
</node>
<node TEXT="智能指针" POSITION="bottom_or_right" ID="ID_1282217000" CREATED="1756630351068" MODIFIED="1756630357682">
<edge COLOR="#ff0000"/>
<node TEXT="unique_ptr" FOLDED="true" ID="ID_342203226" CREATED="1756630357850" MODIFIED="1756630361728">
<node TEXT="实现了资源单一所有权语义" ID="ID_1861461229" CREATED="1756631221574" MODIFIED="1756815742478"/>
<node TEXT="对象不可复制" ID="ID_1437141760" CREATED="1756815736930" MODIFIED="1756815737460">
<node TEXT="拷贝构造和拷贝复制被标记为了删除" POSITION="bottom_or_right" ID="ID_1628893663" CREATED="1756815622925" MODIFIED="1756815637064"/>
</node>
<node TEXT="对象可以移动" ID="ID_947004702" CREATED="1756815745239" MODIFIED="1756815749680">
<node TEXT="实现了所有权转移，被移动后的对象表现的像空指针" ID="ID_255025557" CREATED="1756815757247" MODIFIED="1756815775830"/>
</node>
<node TEXT="unique_ptr&lt;T&gt;支持的操作" ID="ID_829373163" CREATED="1756815833714" MODIFIED="1756816444335">
<node TEXT="operator*()" ID="ID_377994800" CREATED="1756815855529" MODIFIED="1756815864808"/>
<node TEXT="operator-&gt;()" ID="ID_1510711341" CREATED="1756815865219" MODIFIED="1756815870152"/>
<node TEXT="==和!= 在引用类型时做比较是有意义的" ID="ID_1609908457" CREATED="1756815887071" MODIFIED="1756815938572"/>
<node TEXT="不能进行指针算数运算" POSITION="bottom_or_right" ID="ID_1241177641" CREATED="1756815956620" MODIFIED="1756815967863"/>
</node>
<node TEXT="sizeof (unique_ptr&lt;T&gt;) ==sizeof (T*)" ID="ID_28485203" CREATED="1756816004869" MODIFIED="1756816008094">
<node TEXT="使用智能指针代替原始指针通常不会增加内存空间的开销。默认情况下，unique_ptr&lt;T＞对象中唯一的状态就是T*" ID="ID_813477931" CREATED="1756816010218" MODIFIED="1756816042229"/>
</node>
<node TEXT="sizeof (unique_ptr&lt;T[]&gt;) ==sizeof (T*)" ID="ID_764858460" CREATED="1756816192220" MODIFIED="1756816195615"/>
<node TEXT="unique_ptr&lt;T[]&gt;" FOLDED="true" ID="ID_561911656" CREATED="1756816129587" MODIFIED="1756816138242">
<node TEXT="void f(int n) {&#xa;    // p 指向一个值为 3 的整数（动态分配的单个 int 对象）&#xa;    std::unique_ptr&lt;int&gt; p{ new int{ 3 } };&#xa;&#xa;    // q 指向一个包含 n 个整数的数组，且所有元素初始化为 0&#xa;    std::unique_ptr&lt;int[]&gt; q{ new int[n] {} };&#xa;&#xa;    // 示例用法：输出 p 指向的值（3）&#xa;    std::cout &lt;&lt; *p &lt;&lt; &apos;\n&apos;; // 显示 3&#xa;&#xa;    // 示例用法：给 q 指向的数组赋值（q[i] = i+1）&#xa;    for(int i = 0; i != n; ++i) {&#xa;        q[i] = i + 1; // unique_ptr&lt;T[]&gt; 支持 [] 操作符访问数组元素&#xa;    }&#xa;&#xa;    // ...（其他操作）&#xa;}&#xa;// 函数结束时，p 和 q 的析构函数自动调用：&#xa;// p 的析构函数调用 delete 释放单个 int 对象&#xa;// q 的析构函数调用 delete[] 释放数组" ID="ID_89816160" CREATED="1756816356941" MODIFIED="1756816357870"/>
</node>
<node TEXT="自定义删除器" ID="ID_203495091" CREATED="1756816488604" MODIFIED="1756816501981">
<node TEXT="什么是自定义删除器" ID="ID_1298980364" CREATED="1756816758086" MODIFIED="1756816758394">
<node TEXT="自定义删除器是一个可调用对象（函数、lambda 表达式、仿函数、函数对象等），它被智能指针 “持有”，当智能指针的生命周期结束（或被重置）时，会自动调用这个删除器来释放其管理的资源，而非默认的 delete 或 delete[]。" ID="ID_669805211" CREATED="1756816772874" MODIFIED="1756816775903"/>
<node TEXT="删除器的核心功能是：接收一个 “资源指针” 作为参数，执行该资源特有的释放逻辑（如关闭文件、释放句柄等）" ID="ID_1915593258" CREATED="1756816776294" MODIFIED="1756816776667"/>
<node TEXT="template&lt;class T, class D = std:: default_delete&lt;T»&gt;&#xa;    class unique_ptr 1&#xa;    //...&#xa;} :" ID="ID_1203985198" CREATED="1756816824621" MODIFIED="1756816854182"/>
<node TEXT="template&lt;class T&gt; struct default_delete {&#xa;    constexpr default_delete() noexcept = default;&#xa;    constexpr void operator() (T *p) const { delete p; }&#xa;};" ID="ID_1687478402" CREATED="1756816846049" MODIFIED="1756816904777"/>
</node>
<node TEXT="为什么需要自定义删除器" ID="ID_388310715" CREATED="1756816642577" MODIFIED="1756816737475">
<node TEXT="析构函数是受保护的，无法访问析构函数，也就是不能使用delete或者delete[]" ID="ID_1508347336" CREATED="1756816647010" MODIFIED="1756816667967"/>
<node TEXT="资源不是通过 new 分配的" ID="ID_1156205851" CREATED="1756816671577" MODIFIED="1756816699793"/>
<node TEXT="资源需要特殊释放逻辑" ID="ID_1100141158" CREATED="1756816711058" MODIFIED="1756816711396">
<node TEXT="操作系统的句柄（如 Windows 的 HANDLE 需要 CloseHandle 释放）、网络连接（需调用 close 关闭）、数据库连接（需调用 disconnect 断开）等" ID="ID_1960644624" CREATED="1756816718586" MODIFIED="1756816719526"/>
</node>
<node TEXT="需要在释放资源时执行额外操作" ID="ID_768611213" CREATED="1756816723808" MODIFIED="1756816724074">
<node TEXT="释放资源前记录日志、统计资源使用次数等" ID="ID_38241431" CREATED="1756816728862" MODIFIED="1756816729637"/>
</node>
</node>
<node TEXT="如何实现自定义删除器" FOLDED="true" ID="ID_130849570" CREATED="1756816743511" MODIFIED="1756816743881">
<node TEXT="使用函数对象（仿函数，Functor）" ID="ID_195596647" CREATED="1756817403113" MODIFIED="1756817404021">
<node TEXT="class requires_dynamic_alloc {&#xa;   ~requires_dynamic_alloc() = default; // private&#xa;   // ...&#xa;   friend struct cleaner;&#xa;};&#xa;struct cleaner {&#xa;   template &lt;class T&gt;&#xa;      void operator()(T *p) const { delete p; }&#xa;};" ID="ID_935732886" CREATED="1756817407699" MODIFIED="1756817917798"/>
<node TEXT="// requires_dynamic_alloc r0; // no&#xa;//auto p0 = unique_ptr&lt;requires_dynamic_alloc&gt;{&#xa;//   new requires_dynamic_alloc&#xa;//}; // no, as delete not available to default deleter&#xa;auto p1 = unique_ptr&lt;requires_dynamic_alloc, cleaner&gt;{&#xa;      new requires_dynamic_alloc&#xa;}; // ok, will use cleaner::operator() to delete pointee" ID="ID_597145856" CREATED="1756817890806" MODIFIED="1756817906661"/>
<node TEXT="unique_ptr 大小等于 sizeof(void*)：&#xa;cleaner 是无状态仿函数（无成员变量），触发空基类优化（EBO），unique_ptr 仅需存储 “资源指针”（如 8 字节）。" ID="ID_551335512" CREATED="1756817649105" MODIFIED="1756817665818">
<node TEXT="是在指针对象销毁时实例化删除器，因此不占用空间" ID="ID_1936709287" CREATED="1756818334650" MODIFIED="1756818362003"/>
</node>
<node TEXT="也可以在删除器里面通过成员变量存储状态（有状态删除器）" ID="ID_1428312247" CREATED="1756818076070" MODIFIED="1756818095926"/>
</node>
<node TEXT="函数指针" ID="ID_1298247044" CREATED="1756817713501" MODIFIED="1756817713839">
<node TEXT="struct releasable {&#xa;   void release() {&#xa;      // overly simplified for the&#xa;      // sake of this example&#xa;      delete this;&#xa;   }&#xa;protected:&#xa;   ~releasable() = default;&#xa;};&#xa;class important_resource : public releasable {&#xa;   // ...&#xa;};&#xa;void release(releasable *p) {&#xa;   if(p) p-&gt;release();&#xa;}" ID="ID_1890393320" CREATED="1756817857899" MODIFIED="1757172119295"/>
<node TEXT="auto p = unique_ptr&lt;important_resource, void(*)(releasable*)&gt;{&#xd;&#xa;      new important_resource, release&#xd;&#xa;   }; // ok, will use release() to delete pointee" ID="ID_17018498" CREATED="1756817863789" MODIFIED="1756817864254">
<node TEXT="unique_ptr 大于 sizeof(void*)，多存储了一个函数指针" ID="ID_1347077951" CREATED="1756817952073" MODIFIED="1756817966629"/>
</node>
</node>
<node TEXT="lambda表达式" ID="ID_1911890089" CREATED="1757172588026" MODIFIED="1757172591967">
<node TEXT="无捕获列表" ID="ID_1373517525" CREATED="1757172592327" MODIFIED="1757172597862">
<node TEXT=" auto q = unique_ptr&lt;important_resource,&#xa;                       decltype([](auto p) { release(p); })&gt;{&#xa;      new important_resource&#xa;   };" POSITION="bottom_or_right" ID="ID_1395797704" CREATED="1756817874405" MODIFIED="1757172611107" HGAP_QUANTITY="19.33333 pt">
<node TEXT="unique_ptr == sizeof(void*)" ID="ID_321889841" CREATED="1756817969697" MODIFIED="1756817975601"/>
<node TEXT="这是一个无捕获的 lambda 表达式，它的类型是编译器生成的匿名闭包类型（一种独特的类类型，仅用于表示这个 lambda）" ID="ID_1227690378" CREATED="1757172339233" MODIFIED="1757172345449"/>
<node TEXT="decltype(...)推导出这个闭包类型" ID="ID_406853" CREATED="1757172362814" MODIFIED="1757172367524"/>
<node TEXT="无状态的 lambda 闭包类型可以默认构造" ID="ID_605999646" CREATED="1757172678215" MODIFIED="1757172678485"/>
</node>
</node>
<node TEXT="有捕获列表" ID="ID_674379813" CREATED="1757172598018" MODIFIED="1757172611109">
<node TEXT="int n = 42;&#xa;auto deleter = [n](auto p) {  // 有捕获的lambda&#xa;    std::cout &lt;&lt; &quot;释放资源，附带参数：&quot; &lt;&lt; n &lt;&lt; &quot;\n&quot;;&#xa;    release(p);&#xa;};&#xa;&#xa;// 显式传递lambda实例作为第二个参数，初始化基类D&#xa;auto q = unique_ptr&lt;important_resource, decltype(deleter)&gt;{&#xa;    new important_resource,&#xa;    deleter  // 传递lambda实例，用于初始化基类&#xa;};  // 编译通过" ID="ID_226694856" CREATED="1757172626734" MODIFIED="1757172637475"/>
</node>
</node>
</node>
</node>
<node TEXT="make_unique" FOLDED="true" ID="ID_1144600353" CREATED="1756818931486" MODIFIED="1756818932695">
<node TEXT="定义" ID="ID_1499732657" CREATED="1756819017792" MODIFIED="1756819022504">
<node TEXT="c++14引入" POSITION="bottom_or_right" ID="ID_1304302890" CREATED="1756818933467" MODIFIED="1756818937758"/>
<node TEXT="用于安全、便捷地创建 std::unique_ptr 智能指针实例。将 “动态内存分配” 与 “智能指针初始化” 结合，避免手动使用 new 可能导致的问题" POSITION="bottom_or_right" ID="ID_1239979765" CREATED="1756818937951" MODIFIED="1756818964661"/>
<node TEXT="std::make_unique 是一个可变参数模板函数，根据传入的参数类型和数量，动态分配对应类型的对象（或数组），并返回一个持有该对象的 std::unique_ptr。其核心功能可概括为：&#xa;自动执行 new 分配内存 + 构造对象 + 初始化 unique_ptr，三者原子化完成" POSITION="bottom_or_right" ID="ID_1823173129" CREATED="1756819266562" MODIFIED="1756819266937"/>
</node>
<node TEXT="基本用法" ID="ID_877730548" CREATED="1756819244978" MODIFIED="1756819245313">
<node TEXT="创建单个对象" ID="ID_647740171" CREATED="1756819287794" MODIFIED="1756819288626">
<node TEXT="template &lt;typename T, typename... Args&gt;&#xa;std::unique_ptr&lt;T&gt; make_unique(Args&amp;&amp;... args);" ID="ID_788876701" CREATED="1756819396110" MODIFIED="1756819396920"/>
<node TEXT="// 创建 int 对象（值为 5）&#xa;    auto int_ptr = std::make_unique&lt;int&gt;(5);&#xa;    // 等价于：std::unique_ptr&lt;int&gt; int_ptr(new int(5));" ID="ID_189129816" CREATED="1756819352165" MODIFIED="1756819353227"/>
<node TEXT="// 创建 std::string 对象（值为 &quot;hello&quot;）&#xa;    auto str_ptr = std::make_unique&lt;std::string&gt;(&quot;hello&quot;);&#xa;    // 等价于：std::unique_ptr&lt;std::string&gt; str_ptr(new std::string(&quot;hello&quot;));" ID="ID_54854757" CREATED="1756819358256" MODIFIED="1756819358635"/>
<node TEXT="// 创建自定义类型对象（假设 Person 有构造函数 Person(std::string, int)）&#xa;    struct Person {&#xa;        std::string name;&#xa;        int age;&#xa;        Person(std::string n, int a) : name(std::move(n)), age(a) {}&#xa;    };&#xa;    auto person_ptr = std::make_unique&lt;Person&gt;(&quot;Alice&quot;, 30);&#xa;    // 等价于：std::unique_ptr&lt;Person&gt; person_ptr(new Person(&quot;Alice&quot;, 30));" ID="ID_739188521" CREATED="1756819364142" MODIFIED="1756819364492"/>
</node>
<node TEXT="创建数组" ID="ID_404437447" CREATED="1756819295258" MODIFIED="1756819295893">
<node TEXT="template &lt;typename T&gt;&#xa;std::unique_ptr&lt;T[]&gt; make_unique(size_t n);" ID="ID_1015337390" CREATED="1756819404473" MODIFIED="1756819405378"/>
<node TEXT="// 创建包含 5 个 int 的数组（所有元素初始化为 0）&#xa;    auto int_arr_ptr = std::make_unique&lt;int[]&gt;(5);&#xa;    // 等价于：std::unique_ptr&lt;int[]&gt; int_arr_ptr(new int[5]{});" ID="ID_566586212" CREATED="1756819414255" MODIFIED="1756819414748"/>
<node TEXT="数组版本的 make_unique 不支持显式指定每个元素的初始值（只能值初始化），若需自定义数组元素初始化，仍需手动用 new 配合 unique_ptr&lt;T[]&gt;" ID="ID_413662481" CREATED="1756819428219" MODIFIED="1756819428566"/>
</node>
</node>
<node TEXT="为什么优先用 make_unique 而非直接 new" FOLDED="true" ID="ID_1247354341" CREATED="1756819014650" MODIFIED="1756819015082">
<node TEXT="避免内存泄漏（异常安全）" POSITION="bottom_or_right" ID="ID_1193174908" CREATED="1756819077959" MODIFIED="1756821005914">
<node TEXT="当在函数参数中同时进行多个动态分配时，new 可能导致内存泄漏，而 make_unique 可避免" POSITION="bottom_or_right" ID="ID_44947912" CREATED="1756821007285" MODIFIED="1756821011043"/>
<node TEXT="void func(std::unique_ptr&lt;int&gt; p1, std::unique_ptr&lt;int&gt; p2) {}&#xa;// 危险：可能泄漏内存&#xa;func(std::unique_ptr&lt;int&gt;(new int(1)), std::unique_ptr&lt;int&gt;(new int(2)));" POSITION="bottom_or_right" ID="ID_2235033" CREATED="1756819083150" MODIFIED="1756819110773"/>
<node TEXT="C++ 标准未规定函数参数的求值顺序。若编译器先执行 new int(1)，再执行 new int(2) 时抛出异常（如内存不足），则已分配的 new int(1) 内存会因未被 unique_ptr 捕获而泄漏" POSITION="bottom_or_right" ID="ID_1321174447" CREATED="1756819116899" MODIFIED="1756819117275"/>
<node TEXT="func(std::make_unique&lt;int&gt;(1), std::make_unique&lt;int&gt;(2)); // 安全" POSITION="bottom_or_right" ID="ID_135000761" CREATED="1756819182393" MODIFIED="1756819182892"/>
<node TEXT="make_unique 将 “new 分配” 和 “unique_ptr 初始化” 封装为一个原子操作。即使参数求值过程中抛出异常，已分配的内存会被 unique_ptr 的临时对象在析构时释放，无泄漏风险。" POSITION="bottom_or_right" ID="ID_1335084978" CREATED="1756819192244" MODIFIED="1756819192604"/>
</node>
<node TEXT="代码更简洁，减少重复" POSITION="bottom_or_right" ID="ID_899063589" CREATED="1756819175535" MODIFIED="1756819175929">
<node TEXT="使用 make_unique 无需显式写 new，也无需重复类型名（通过模板推导），代码更简洁" ID="ID_1809035770" CREATED="1756819200368" MODIFIED="1756819201084"/>
</node>
<node TEXT="避免误传指针类型（类型安全）" POSITION="bottom_or_right" ID="ID_389797080" CREATED="1756819207565" MODIFIED="1756819207845">
<node TEXT="make_unique&lt;T&gt; 只能返回 unique_ptr&lt;T&gt;，避免手动 new 时可能的类型不匹配（如将派生类指针误传给基类 unique_ptr 时的隐式转换问题，虽然合法，但 make_unique 更明确）" ID="ID_1237031312" CREATED="1756819219415" MODIFIED="1756819220167"/>
</node>
</node>
<node TEXT="限制与注意事项" ID="ID_1016889720" CREATED="1756819229279" MODIFIED="1756819230185">
<node TEXT="不支持自定义删除器" ID="ID_1664160864" CREATED="1756819439752" MODIFIED="1756819440495"/>
<node TEXT="数组初始化能力有限" ID="ID_1272497352" CREATED="1756819462808" MODIFIED="1756819463169">
<node TEXT="make_unique&lt;T[]&gt;(n) 只能对数组进行值初始化" ID="ID_1622421932" CREATED="1756819479971" MODIFIED="1756819480719"/>
</node>
<node TEXT="C++11 不支持 make_unique" ID="ID_871887460" CREATED="1756819487732" MODIFIED="1756819488036"/>
</node>
</node>
</node>
<node TEXT="shared_ptr" FOLDED="true" ID="ID_1577332898" CREATED="1756630362159" MODIFIED="1756630364845">
<node TEXT="实现资源的共享所有权—— 允许多个 shared_ptr 实例共同管理同一个动态资源（如堆对象），并通过引用计数（reference counting） 机制确保资源在最后一个所有者销毁时自动释放。" ID="ID_149533597" CREATED="1756631391887" MODIFIED="1756822772148">
<font BOLD="false"/>
</node>
<node TEXT="主要用于并发代码，引用计数器的修改是原子操作，比修改普通的int开销大" ID="ID_1347071333" CREATED="1756823241344" MODIFIED="1756823287917"/>
<node TEXT="sizeof (shared_ ptr&lt;T&gt;) &gt; sizeof (unique_ptr&lt;T&gt;)" ID="ID_1468733865" CREATED="1756823313771" MODIFIED="1756823322299">
<node TEXT="里面存了一个控制块" ID="ID_1359011683" CREATED="1756823324195" MODIFIED="1756823344148"/>
</node>
<node TEXT="控制块（control block）" ID="ID_754735618" CREATED="1756822815170" MODIFIED="1756823578300">
<node TEXT="强引用计数（strong count）：记录当前有多少个 shared_ptr 拥有该资源（即 “所有者数量”）" POSITION="bottom_or_right" ID="ID_1955679338" CREATED="1756822832752" MODIFIED="1756822833587"/>
<node TEXT="弱引用计数（weak count）：记录当前有多少个 std::weak_ptr 指向该资源（弱引用不拥有资源，仅观察资源是否存在）。" POSITION="bottom_or_right" ID="ID_424681215" CREATED="1756822840979" MODIFIED="1756822841301"/>
<node TEXT="自定义删除器（可选）：用于资源释放的自定义逻辑（替代默认 delete）" POSITION="bottom_or_right" ID="ID_708841965" CREATED="1756822847358" MODIFIED="1756822847665"/>
<node TEXT="分配器（可选）：用于控制块的内存分配" POSITION="bottom_or_right" ID="ID_330280431" CREATED="1756822852686" MODIFIED="1756822853024"/>
</node>
<node TEXT="“shared” 的含义" FOLDED="true" ID="ID_1115443445" CREATED="1756631834309" MODIFIED="1756631834669">
<node TEXT="共享的是 “所有权”（ownership），而非单纯的 “访问权”（access）。" ID="ID_1972505539" CREATED="1756631840791" MODIFIED="1756631841530"/>
<node TEXT="共享所有权" ID="ID_1415356108" CREATED="1756631861447" MODIFIED="1756631861766">
<node TEXT="多个 shared_ptr 实例共同拥有同一个动态分配的资源（如通过 new 创建的对象）" ID="ID_323298959" CREATED="1756631873624" MODIFIED="1756631874501"/>
<node TEXT="当一个 shared_ptr 被复制（如赋值给另一个 shared_ptr、作为函数参数按值传递）时，它们会共同 “认领” 对资源的所有权，内部通过引用计数（reference count） 记录当前有多少个 shared_ptr 拥有该资源" ID="ID_1255240310" CREATED="1756631887898" MODIFIED="1756631888167"/>
<node TEXT="只有当最后一个拥有该资源的 shared_ptr 被销毁（如离开作用域、被重置）时，引用计数归 0，资源才会被自动释放（调用 delete 或自定义删除器）" ID="ID_845757472" CREATED="1756631893915" MODIFIED="1756631895291"/>
</node>
<node TEXT="共享访问" ID="ID_666403679" CREATED="1756631901981" MODIFIED="1756631902340">
<node TEXT="多个指针 / 引用指向同一个资源，但不负责管理资源的生命周期（比如函数参数传递普通指针 void func(T* ptr)，或使用引用 void func(T&amp; ref)）。这种场景下，资源的释放由某个 “唯一所有者”（如创建者）负责，其他地方只是临时访问，不需要 shared_ptr。" ID="ID_365321720" CREATED="1756631911785" MODIFIED="1756631912599"/>
</node>
</node>
<node TEXT="工作原理" ID="ID_341379810" CREATED="1756822864979" MODIFIED="1756822865443">
<node TEXT="创建资源" ID="ID_1887638928" CREATED="1756822879025" MODIFIED="1756822883187">
<node TEXT="当用 shared_ptr 管理一个新资源（如通过 std::make_shared 或 new）时，会同时创建一个控制块，强引用计数初始化为 1（表示当前有一个所有者）" ID="ID_167193267" CREATED="1756822906003" MODIFIED="1756822906783"/>
</node>
<node TEXT="复制 / 赋值" ID="ID_1964981225" CREATED="1756822883479" MODIFIED="1756822883815">
<node TEXT="当 shared_ptr 被复制（如赋值给另一个 shared_ptr、作为函数参数按值传递）时，控制块的强引用计数会原子递增（线程安全），表示所有者数量增加" ID="ID_1865032517" CREATED="1756822918874" MODIFIED="1756822919485"/>
</node>
<node TEXT="销毁 / 重置" ID="ID_169957736" CREATED="1756822888069" MODIFIED="1756822888490">
<node TEXT="当 shared_ptr 被销毁（离开作用域）或调用 reset() 时，控制块的强引用计数会原子递减" ID="ID_569593165" CREATED="1756822926904" MODIFIED="1756822927427"/>
</node>
<node TEXT="移动" ID="ID_24399609" CREATED="1756823181166" MODIFIED="1756823183915"/>
<node TEXT="资源释放" ID="ID_1073715613" CREATED="1756822892792" MODIFIED="1756822893259">
<node TEXT="当强引用计数递减到 0 时，意味着 “最后一个所有者消失”，此时会通过控制块中的删除器（默认 delete）释放资源，并在弱引用计数也为 0 时销毁控制块" ID="ID_860793664" CREATED="1756822942150" MODIFIED="1756822942798"/>
</node>
</node>
<node TEXT="shared_ptr&lt;T[]&gt;" ID="ID_333127094" CREATED="1756822987236" MODIFIED="1756822987563">
<node TEXT="c++17支持" ID="ID_439702426" CREATED="1756822987979" MODIFIED="1756822994413"/>
</node>
<node TEXT="注意事项" ID="ID_609231335" CREATED="1756823466882" MODIFIED="1756823485378">
<node TEXT="线程安全性" POSITION="bottom_or_right" ID="ID_852478154" CREATED="1756823024061" MODIFIED="1756823029917">
<node TEXT="强 / 弱引用计数的操作是线程安全的（标准保证其为原子操作）" ID="ID_1500333497" CREATED="1756823034415" MODIFIED="1756823036242"/>
<node TEXT="对指向的资源的访问不是线程安全的（需用户手动加锁，如 std::mutex）" ID="ID_636307934" CREATED="1756823041137" MODIFIED="1756823041592"/>
</node>
<node TEXT="循环引用问题" POSITION="bottom_or_right" ID="ID_81341928" CREATED="1756823054557" MODIFIED="1756823054958">
<node TEXT="当两个 shared_ptr 互相引用（形成循环）时，强引用计数永远不会减到 0，导致资源泄漏" ID="ID_1877718288" CREATED="1756823061592" MODIFIED="1756823062513">
<node TEXT="用 std::weak_ptr 打破循环（weak_ptr 是弱引用，不增加强引用计数，仅观察资源是否存在）" ID="ID_719059403" CREATED="1756823079245" MODIFIED="1756823080366"/>
</node>
</node>
<node TEXT="避免裸指针滥用" POSITION="bottom_or_right" ID="ID_230126926" CREATED="1756823093407" MODIFIED="1756823093694">
<node TEXT="不要用同一裸指针初始化多个 shared_ptr（会导致多个控制块，资源被多次释放）" ID="ID_277523590" CREATED="1756823099552" MODIFIED="1756823100427"/>
<node TEXT="避免长期持有裸指针（如存储 shared_ptr 指向的裸指针），可能导致 “悬垂指针”（资源已释放但裸指针仍被使用）。" ID="ID_433169353" CREATED="1756823108283" MODIFIED="1756823108618"/>
</node>
<node TEXT="缓存不友好" POSITION="bottom_or_right" ID="ID_294175169" CREATED="1756823391810" MODIFIED="1756823407112">
<node TEXT="shared_ptr&lt;X&gt; p{ new X };" ID="ID_636046146" CREATED="1756823433943" MODIFIED="1756823434820"/>
<node TEXT="像这样的指令将导致两次分配，而不是一次：一次是为X对象分配，另一次（由shared_ptr内部执行）是为计数器分配。由于这两次分配是分开进行的，一次由客户端代码执行，一次由构造函数本身执行，这两个分配的对象可能会位于不同的缓存行中，可能导致访问shared_ptr对象时效率降低" ID="ID_1298280289" CREATED="1756823423451" MODIFIED="1756823427982"/>
<node TEXT="可以通过make_shared优化，就只需要分配一次内存了" ID="ID_1175693035" CREATED="1756823531366" MODIFIED="1756823549279"/>
</node>
</node>
<node TEXT="make_shared" ID="ID_1215779810" CREATED="1756823655622" MODIFIED="1756823655963">
<node TEXT="在一次内存分配中同时创建 “资源对象” 和 shared_ptr 所需的 “控制块”（包含引用计数等元数据），并返回持有该资源的 shared_ptr" ID="ID_825287926" CREATED="1756823665694" MODIFIED="1756823666437">
<node TEXT="解决了两个问题" ID="ID_1138313455" CREATED="1756823682737" MODIFIED="1756823686701"/>
<node TEXT="内存分配效率低（new 会导致两次分配：一次给资源，一次给控制块）" ID="ID_1510883779" CREATED="1756823675044" MODIFIED="1756823675801"/>
<node TEXT="异常安全风险（多参数场景下可能泄漏内存）" ID="ID_1510794258" CREATED="1756823679683" MODIFIED="1756823680044"/>
<node TEXT="一次性分配一块足够大的连续内存，同时容纳 T 对象和引用计数器；最后通过 placement new 在这块内存的不同位置分别构造 T 对象和引用计数器" ID="ID_1997222998" CREATED="1758691987429" MODIFIED="1758691996791"/>
</node>
<node TEXT="基本用法" ID="ID_126562342" CREATED="1756823909621" MODIFIED="1756823912522">
<node TEXT="创建单个对象" ID="ID_1281134184" CREATED="1756823912694" MODIFIED="1756823913309">
<node TEXT="// 1. 创建基础类型（int）&#xa;    auto sp_int = std::make_shared&lt;int&gt;(42); // 等价于 shared_ptr&lt;int&gt;(new int(42))" ID="ID_235246673" CREATED="1756823919671" MODIFIED="1756823920497"/>
<node TEXT="// 2. 创建自定义类型（Person）&#xa;    auto sp_person = std::make_shared&lt;Person&gt;(&quot;Alice&quot;, 30); // 用构造函数参数初始化" ID="ID_1534115201" CREATED="1756823928233" MODIFIED="1756823928606"/>
<node TEXT="// 3. 创建无参对象（调用默认构造函数）&#xa;    auto sp_str = std::make_shared&lt;std::string&gt;(); // 空字符串" ID="ID_1999821449" CREATED="1756823932819" MODIFIED="1756823933212"/>
</node>
<node TEXT="创建数组（C++20 支持）" ID="ID_1987630690" CREATED="1756823938635" MODIFIED="1756823938955">
<node TEXT="auto sp_arr = std::make_shared&lt;int[]&gt;(5); // 包含 5 个 int 的数组（值初始化，即全 0）&#xa;sp_arr[0] = 100; // 支持 operator[] 访问" ID="ID_8003126" CREATED="1756823943689" MODIFIED="1756823944808"/>
</node>
</node>
<node TEXT="限制与注意事项" ID="ID_249173255" CREATED="1756823782104" MODIFIED="1756823782575">
<node TEXT="不支持自定义删除器" ID="ID_1024121779" CREATED="1756823788927" MODIFIED="1756823789578">
<node TEXT="make_shared 返回的 shared_ptr 只能使用默认删除器（std::default_delete&lt;T&gt;，即 delete）。若需自定义删除器（如释放文件句柄、malloc 内存），必须手动构造 shared_ptr" ID="ID_338906881" CREATED="1756823820816" MODIFIED="1756823822011"/>
</node>
<node TEXT="无法用于私有构造函数的类" ID="ID_1669346710" CREATED="1756823798912" MODIFIED="1756823799301">
<node TEXT="make_shared 在内部需要调用 T 的构造函数（new T(args...)），若 T 的构造函数是 private，make_shared 会因权限不足编译失败。此时需用 friend 或手动 new：" ID="ID_801915166" CREATED="1756823806055" MODIFIED="1756823807633"/>
</node>
<node TEXT="资源释放延迟（控制块与资源同生命周期）" ID="ID_372142077" CREATED="1756823835480" MODIFIED="1756823835867">
<node TEXT="make_shared 分配的 “资源” 和 “控制块” 在同一块内存中，只有当强引用计数和弱引用计数都为 0 时，才会释放整块内存。这可能导致资源释放延迟" ID="ID_931867579" CREATED="1756823851868" MODIFIED="1756823852781"/>
<node TEXT="若存在 weak_ptr 持有弱引用（弱引用计数 &gt; 0），即使强引用计数为 0（资源已 “逻辑释放”），内存也不会立即回收（需等待弱引用计数也为 0）" ID="ID_896837442" CREATED="1756823862268" MODIFIED="1756823862691"/>
<node TEXT="而通过 new 构造的 shared_ptr，资源和控制块是分开的，强引用计数为 0 时会立即释放资源内存（控制块可能保留至弱引用计数为 0）" ID="ID_459081607" CREATED="1756823867507" MODIFIED="1756823868042"/>
</node>
</node>
</node>
</node>
<node TEXT="weak_ptr" FOLDED="true" ID="ID_206068908" CREATED="1756823629746" MODIFIED="1756823632895">
<node TEXT="不拥有资源的所有权" ID="ID_1690525267" CREATED="1756823639156" MODIFIED="1756824322883">
<node TEXT="weak_ptr 指向 shared_ptr 管理的资源，但不会增加其 “强引用计数”" ID="ID_753749403" CREATED="1756824343736" MODIFIED="1756824550044"/>
<node TEXT="弱引用计数仅用于管理 shared_ptr 控制块的生命周期（控制块在强引用计数和弱引用计数都为 0 时才释放），不会阻止资源释放" ID="ID_1817549669" CREATED="1756824550429" MODIFIED="1756824551152"/>
</node>
<node TEXT="无法直接访问资源" ID="ID_960597865" CREATED="1756824350036" MODIFIED="1756824350399">
<node TEXT="weak_ptr 没有 operator* 或 operator-&gt; 操作符，必须先通过 lock() 方法转换为 shared_ptr 才能访问资源（确保访问时资源仍存在）" ID="ID_164761695" CREATED="1756824356479" MODIFIED="1756824357244"/>
</node>
<node TEXT="依赖 shared_ptr 创建" ID="ID_1494899186" CREATED="1756824362204" MODIFIED="1756824362790">
<node TEXT="weak_ptr 不能直接通过 new 初始化，必须从一个 shared_ptr 或另一个 weak_ptr 构造。" ID="ID_318179578" CREATED="1756824368102" MODIFIED="1756824368733"/>
</node>
<node TEXT="基本用法" ID="ID_571003686" CREATED="1756824381462" MODIFIED="1756824381813">
<node TEXT="创建 weak_ptr" ID="ID_423394623" CREATED="1756824390242" MODIFIED="1756824391060">
<node TEXT="std::shared_ptr&lt;int&gt; sp = std::make_shared&lt;int&gt;(42);&#xa;std::weak_ptr&lt;int&gt; wp(sp); // 从 shared_ptr 创建 weak_ptr（不增加强引用计数）" ID="ID_1905508597" CREATED="1756824395267" MODIFIED="1756824396089"/>
</node>
<node TEXT="检查资源是否有效" ID="ID_191056934" CREATED="1756824401676" MODIFIED="1756824417951">
<node TEXT="expired() 方法用于判断 weak_ptr 指向的资源是否已被释放（即强引用计数是否为 0）：" ID="ID_895015151" CREATED="1756824409528" MODIFIED="1756824410455"/>
</node>
<node TEXT="获取可访问资源的 shared_ptr" ID="ID_228354806" CREATED="1756824426258" MODIFIED="1756824426685">
<node TEXT="lock() 方法返回一个 shared_ptr" ID="ID_217863070" CREATED="1756824431712" MODIFIED="1756824432536"/>
<node TEXT="若资源存在（expired() == false），返回的 shared_ptr 指向该资源，且强引用计数 +1" ID="ID_1173990316" CREATED="1756824442288" MODIFIED="1756824442743"/>
<node TEXT="若资源已释放（expired() == true），返回空的 shared_ptr" ID="ID_425320670" CREATED="1756824447688" MODIFIED="1756824448082"/>
</node>
<node TEXT="重置 weak_ptr" ID="ID_1200050181" CREATED="1756824456662" MODIFIED="1756824457005">
<node TEXT="reset() 方法使 weak_ptr 放弃对资源的观察（弱引用计数 -1）" ID="ID_321396904" CREATED="1756824462745" MODIFIED="1756824463579"/>
</node>
</node>
<node TEXT="应用场景" ID="ID_1584590365" CREATED="1756824935915" MODIFIED="1756824940213">
<node TEXT="解决循环引用" ID="ID_1335287167" CREATED="1756824940393" MODIFIED="1756824959271"/>
<node TEXT="缓存系统" ID="ID_1007302051" CREATED="1756824963750" MODIFIED="1756824964147">
<node TEXT="缓存中存储的资源可能被其他地方的 shared_ptr 释放，weak_ptr 可用于观察缓存项是否有效，避免缓存持有强引用导致资源无法释放。" ID="ID_79925005" CREATED="1756825061992" MODIFIED="1756825062829"/>
</node>
<node TEXT="观察者模式" ID="ID_358882964" CREATED="1756824969471" MODIFIED="1756824969839">
<node TEXT="“观察者” 不应阻止 “被观察者” 释放。用 weak_ptr 存储被观察者的引用，当被观察者销毁时，观察者可通过 expired() 检测到并自动失效。" ID="ID_1472516558" CREATED="1756824987061" MODIFIED="1756824987926"/>
</node>
</node>
</node>
<node TEXT="通过函数签名传达含义，使用能够表达我们意图的类型非常重要" FOLDED="true" ID="ID_1711887614" CREATED="1756815172517" MODIFIED="1756815205913">
<node TEXT="传递参数时使用智能指针的原始指针或者是引用表示这个函数只使用资源不会管理资源（即可能的销毁资源）" POSITION="bottom_or_right" ID="ID_589540013" CREATED="1756815029381" MODIFIED="1756815477717">
<node TEXT="如果是希望使用资源，优先使用带有const修饰的原始指针" ID="ID_705965596" CREATED="1756815487237" MODIFIED="1756815534571"/>
<node TEXT="函数参数为裸指针时，表示使用指针但不拥有它" ID="ID_49120174" CREATED="1756815706812" MODIFIED="1756815722714"/>
</node>
<node TEXT="右值引用表示会管理资源" POSITION="bottom_or_right" ID="ID_540050358" CREATED="1756815578184" MODIFIED="1756815592039"/>
</node>
</node>
<node TEXT="编写你自己的智能指针" FOLDED="true" POSITION="bottom_or_right" ID="ID_1073986563" CREATED="1757168571192" MODIFIED="1757168577757">
<edge COLOR="#0000ff"/>
<node TEXT="unique_ptr" ID="ID_556205253" CREATED="1757168578300" MODIFIED="1757168586718"/>
<node TEXT="shared_ptr" ID="ID_1064349976" CREATED="1757172832237" MODIFIED="1757172835710"/>
<node TEXT="observer_ptr&lt;T&gt;" POSITION="bottom_or_right" ID="ID_763561049" CREATED="1757168516287" MODIFIED="1757168525566"/>
<node TEXT="non_null_ptr&lt;T&gt;" POSITION="bottom_or_right" ID="ID_1464599676" CREATED="1757168525990" MODIFIED="1757168532135"/>
<node TEXT="remote_ptr&lt;T&gt;" POSITION="bottom_or_right" ID="ID_1749203157" CREATED="1757168532652" MODIFIED="1757168536412"/>
<node TEXT="dup_ptr&lt;T&gt;" POSITION="bottom_or_right" ID="ID_1561284883" CREATED="1757168537077" MODIFIED="1757168539816">
<node TEXT="实现了单一所有权语义，但是指针复制时会复制指针指向的对象" ID="ID_1978549627" CREATED="1757240394037" MODIFIED="1757240438190"/>
<node TEXT="根据T的类型选择复制策略" ID="ID_431333673" CREATED="1757240449179" MODIFIED="1757240458692">
<node TEXT="T是多态的，通过克隆进行复制" ID="ID_528220602" CREATED="1757240458851" MODIFIED="1757240473936"/>
<node TEXT="不是多态的，通过拷贝进行复制" ID="ID_1843422865" CREATED="1757240474261" MODIFIED="1757240485363"/>
</node>
<node TEXT="复制策略" ID="ID_1437026502" CREATED="1757240511360" MODIFIED="1757240518700">
<node TEXT="基于接口的侵入式方法" ID="ID_1225067344" CREATED="1757240519007" MODIFIED="1757240529457"/>
<node TEXT="基于特征和使用C++17 特性进行克隆成员函数编译时检测的非侵入式方法" ID="ID_1424135288" CREATED="1757240763334" MODIFIED="1757240764923"/>
<node TEXT="基于 C++20 概念的另一种非侵入式方法" ID="ID_268946924" CREATED="1757240773213" MODIFIED="1757240774443"/>
</node>
</node>
</node>
<node TEXT="内存管理机制" POSITION="bottom_or_right" ID="ID_1209667702" CREATED="1757241608455" MODIFIED="1757241713338">
<edge COLOR="#ff00ff"/>
<node TEXT="C语言内存分配函数" FOLDED="true" ID="ID_1434131268" CREATED="1757422883620" MODIFIED="1757422892067">
<node TEXT="void* malloc (size_t n) ;" ID="ID_1771679356" CREATED="1757422895208" MODIFIED="1757422910002">
<node TEXT="在内存中寻找至少包含 n 个连续字节的可用空间，可能将该空间标记为 “已占用”，最终返回指向该内存块起始位置的void*类型抽象指针。" ID="ID_472752180" CREATED="1758680963787" MODIFIED="1758680965283"/>
<node TEXT="返回的指针需满足机器最坏自然情况的对齐要求，即符合std::max_align_t的对齐规则，多数机器上该类型是double的别名" ID="ID_1518420179" CREATED="1758680980344" MODIFIED="1758680981246"/>
<node TEXT="调用malloc(0)合法，但结果由具体实现定义 —— 可能返回空指针（nullptr），也可能返回非空指针；无论返回哪种指针，均不可对其解引用" ID="ID_390299118" CREATED="1758681029209" MODIFIED="1758681029743"/>
<node TEXT="若内存分配失败，malloc(n)会返回空指针（nullptr），这是因为 C 语言不支持 C++ 式的异常机制。" ID="ID_324117921" CREATED="1758681036282" MODIFIED="1758681036760"/>
<node TEXT="自 C11 标准起，malloc(n)的实现需保证线程安全，与free()等其他 C 语言内存分配函数并发调用时，需进行适当同步。" ID="ID_1934303406" CREATED="1758681044601" MODIFIED="1758681044974"/>
</node>
<node TEXT="void free (void *p);" ID="ID_1135595774" CREATED="1757422910780" MODIFIED="1757422911116">
<node TEXT="确保p指向的内存块可被后续内存分配请求复用，但需满足前提 ——p必须指向由malloc()等 C 语言内存分配函数分配、且尚未被释放的内存块。" ID="ID_453081209" CREATED="1758681051308" MODIFIED="1758681052233"/>
<node TEXT="尝试释放未通过malloc()等合法分配函数获取的内存地址，属于未定义行为，严禁操作。" ID="ID_226836846" CREATED="1758681057912" MODIFIED="1758681058261"/>
<node TEXT="内存被释放后，该内存不再视为 “已分配”，若后续仍对该内存块（或指向它的指针）进行操作（如访问、二次释放等），也会导致未定义行为。" ID="ID_1646297112" CREATED="1758681064178" MODIFIED="1758681064564"/>
</node>
<node TEXT="alloc(size_t num, size_t size)" ID="ID_1929387850" CREATED="1758681238442" MODIFIED="1758681238852">
<node TEXT="分配num个大小为size字节的连续内存块，并将所有字节初始化为 0。" ID="ID_223750483" CREATED="1758681244681" MODIFIED="1758681245594"/>
</node>
<node TEXT="realloc(void* ptr, size_t new_size)" ID="ID_290111237" CREATED="1758681250975" MODIFIED="1758681251237">
<node TEXT="调整已分配内存块（ptr指向）的大小为new_size字节。" ID="ID_1781187996" CREATED="1758681256185" MODIFIED="1758681257025"/>
<node TEXT="若原内存块后有足够空间，直接扩展，返回原指针；&#xa;否则分配新内存块，复制原数据并释放旧块，返回新指针。" ID="ID_1319795127" CREATED="1758681262451" MODIFIED="1758681263206"/>
<node TEXT="ptr必须是malloc/calloc/realloc返回的指针，或NULL（此时等价于malloc(new_size)）。&#xa;若调整失败，原内存块仍有效，返回NULL。&#xa;新内存块的内容：原大小内的数据保持不变，新增部分未初始化。&#xa;最终需用free()释放。" ID="ID_59410731" CREATED="1758681288207" MODIFIED="1758681301457"/>
</node>
</node>
<node TEXT="重载内存分配操作符" FOLDED="true" ID="ID_1680267928" CREATED="1757241635924" MODIFIED="1757241649301">
<node TEXT="全局重载" ID="ID_225706558" CREATED="1757423358405" MODIFIED="1758681419582">
<node TEXT="operator new 和 operator delete" ID="ID_1957179581" CREATED="1758681435106" MODIFIED="1758681436625">
<node TEXT="用于单个对象的内存分配与释放。" ID="ID_737510395" CREATED="1758681445156" MODIFIED="1758681446403"/>
<node TEXT="void* operator new(std::size_t size);                  // 基本版（可能抛出异常）&#xa;void* operator new(std::size_t size, const std::nothrow_t&amp;) noexcept;  // nothrow版（不抛异常）&#xa;void operator delete(void* ptr) noexcept;              // 基本版&#xa;void operator delete(void* ptr, std::size_t size) noexcept;  // C++11后，带大小参数（类成员版常用）&#xa;void operator delete(void* ptr, const std::nothrow_t&amp;) noexcept;  // nothrow版&#xa;void operator delete(void* ptr, std::size_t size, const std::nothrow_t&amp;) noexcept;  // C++14, nothrow版" ID="ID_449536067" CREATED="1758681456984" MODIFIED="1758683495518" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="operator new[] 和 operator delete[]" ID="ID_801754689" CREATED="1758681524265" MODIFIED="1758681524752">
<node TEXT="用于数组的内存分配与释放（注意：数组版会额外分配存储数组长度的空间，由编译器自动处理）。" ID="ID_1365133848" CREATED="1758681533754" MODIFIED="1758681534607"/>
<node TEXT="void* operator new[](std::size_t size);                // 基本版（可能抛出异常）&#xa;void* operator new[](std::size_t size, const std::nothrow_t&amp;) noexcept;  // nothrow版&#xa;void operator delete[](void* ptr) noexcept;            // 基本版&#xa;void operator delete[](void* ptr, std::size_t size) noexcept;  // C++11后，带大小参数&#xa;void operator delete[](void* ptr, const std::nothrow_t&amp;) noexcept;  // nothrow版&#xa;void operator delete[](void* ptr, std::size_t size, const std::nothrow_t&amp;) noexcept;  // C++14, nothrow版" ID="ID_1890942986" CREATED="1758681539338" MODIFIED="1758683502788" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="定位 new 相关的重载" ID="ID_1905202582" CREATED="1758681546416" MODIFIED="1758681546746">
<node TEXT="定位 new（placement new）本身不可重载，但可以重载带额外参数的 operator new，用于在指定内存地址构造对象（需包含 &lt;new&gt; 头文件）。" ID="ID_1346698005" CREATED="1758681558135" MODIFIED="1758681558974"/>
</node>
<node TEXT="带额外参数的 operator new 重载规则" ID="ID_342323051" CREATED="1758688471929" MODIFIED="1758688472298">
<node TEXT="重载的 operator new 必须以 std::size_t 作为第一个参数（表示分配的字节数，由编译器自动传递），后续可以添加任意数量、任意类型的额外参数" ID="ID_56078491" CREATED="1758688473201" MODIFIED="1758688481523">
<node TEXT="// 带两个额外参数的operator new重载&#xa;void* operator new(std::size_t size, int param1, double param2) {&#xa;    // 分配size字节内存，使用param1和param2辅助处理&#xa;    // ...&#xa;}" ID="ID_1759432677" CREATED="1758688486009" MODIFIED="1758688487346"/>
</node>
<node TEXT="使用带额外参数的 new 时，需在 new 关键字后用括号指定参数（类似函数调用）" ID="ID_428398872" CREATED="1758688495635" MODIFIED="1758688495928">
<node TEXT="T* ptr = new (param1, param2) T(构造参数);" POSITION="bottom_or_right" ID="ID_948172173" CREATED="1758688499340" MODIFIED="1758688500397"/>
</node>
<node TEXT="额外参数仅用于 operator new 的内存分配过程，与对象的构造函数参数无关（两者在语法上通过不同的括号区分）" ID="ID_323727012" CREATED="1758688531585" MODIFIED="1758688532690"/>
<node TEXT="若带额外参数的 operator new 分配内存后，对象的构造函数抛出异常，编译器会自动查找参数匹配的 operator delete 来释放内存。若未定义，则可能导致内存泄漏。" ID="ID_682013618" CREATED="1758688544920" MODIFIED="1758688550868">
<node TEXT="释放时仍用普通delete（额外参数仅用于分配）" ID="ID_1886436384" CREATED="1758688634835" MODIFIED="1758688635687"/>
</node>
<node TEXT="标准库已定义 operator new(std::size_t, void*)（用于在指定地址构造对象），自定义重载时需避免参数列表与之完全相同，否则会引发冲突" ID="ID_1859681221" CREATED="1758688571990" MODIFIED="1758688572327"/>
</node>
<node TEXT="作用于所有未自定义内存分配运算符的类型。重载后会替换标准库的默认实现" ID="ID_1475814651" CREATED="1758681662299" MODIFIED="1758681663311"/>
<node TEXT="析构函数和operator delete都不应该抛出异常，如果抛出，程序基本上会终止" ID="ID_1778599715" CREATED="1758683056612" MODIFIED="1758683079337"/>
</node>
<node TEXT="类成员重载" FOLDED="true" ID="ID_1051831928" CREATED="1758681419917" MODIFIED="1758681421265">
<node TEXT="仅作用于该类及其派生类（派生类未重载时会继承基类的版本）。类成员版本的 operator new/delete 隐含为 static（即使未声明），不能访问非静态成员（无 this 指针）" ID="ID_856655297" CREATED="1758681677804" MODIFIED="1758681678890"/>
</node>
<node TEXT="placement new" FOLDED="true" ID="ID_452050345" CREATED="1758690245368" MODIFIED="1758699465721">
<node TEXT="placement new 是 C++ 中一种特殊的 new 操作符形式，其核心特点是不在堆上分配新内存，而是在已有的、预先分配的内存块上构造对象。它的本质是 “利用已有内存初始化对象”，而非 “分配内存”，因此也被称为 “定位 new”。" ID="ID_25526430" CREATED="1758690248623" MODIFIED="1758690265461"/>
<node TEXT="函数签名" ID="ID_1553589153" CREATED="1758690272121" MODIFIED="1758690277100">
<node TEXT="void *operator new (std: : size_t, void *p) | return p: }&#xa;void *operator new[l (std: : size_t, void *p) { return p: }&#xa;void operator delete (void*, void*) noexcept {}&#xa;void operator delete I] (void*, void*) noexcept { }" ID="ID_1869172435" CREATED="1758690277239" MODIFIED="1758690323543"/>
<node TEXT="size:" ID="ID_1021351834" CREATED="1758690338648" MODIFIED="1758690341715">
<node TEXT="表示需要构造的对象的大小（字节数），由编译器自动传递（通常等于 sizeof(T)，T 是对象类型）。" ID="ID_696882870" CREATED="1758690349223" MODIFIED="1758690350975"/>
</node>
<node TEXT="ptr:" ID="ID_1593633253" CREATED="1758690342027" MODIFIED="1758690344078">
<node TEXT="指向一块已分配的内存块的指针（必须非空，且内存大小至少为 size 字节，对齐要求满足 T 类型）。" ID="ID_815918710" CREATED="1758690355754" MODIFIED="1758690357422"/>
</node>
</node>
<node TEXT="用法" ID="ID_1590597099" CREATED="1758690377495" MODIFIED="1758690381046">
<node TEXT="准备内存块：提前通过 malloc、new 或全局数组等方式分配一块足够大的内存（大小 ≥ sizeof(T)，且对齐正确）" ID="ID_1197238103" CREATED="1758690381543" MODIFIED="1758690389341"/>
<node TEXT="用 placement new：用 new (ptr) T(...) 语法在该内存上构造对象（自动调用 T 的构造函数）。" ID="ID_731232547" CREATED="1758690393089" MODIFIED="1758690393361"/>
<node TEXT="使用对象：通过 ptr 指针（需转换为 T* 类型）访问构造好的对象。" ID="ID_1542907595" CREATED="1758690396834" MODIFIED="1758690397061"/>
<node TEXT="手动析构对象：对象生命周期结束时，需显式调用析构函数（ptr-&gt;~T();），因为 placement new 不会自动触发析构。" ID="ID_1257601234" CREATED="1758690402117" MODIFIED="1758690402399"/>
<node TEXT="释放原始内存：若内存是通过 malloc 或 new 分配的，最后需用 free 或 delete 释放（注意匹配原始分配方式）" ID="ID_881901470" CREATED="1758690406636" MODIFIED="1758690406907"/>
</node>
<node TEXT="用途" ID="ID_727848440" CREATED="1758690418723" MODIFIED="1758690421241">
<node TEXT="内存池管理" ID="ID_593255947" CREATED="1758690421458" MODIFIED="1758690427990">
<node TEXT="预先分配一块大内存（内存池），然后通过 placement new 反复在上面构造 / 析构对象，避免频繁调用 new/delete 导致的内存碎片和性能开销（常见于高性能服务器、游戏引擎等场景）" ID="ID_1768969016" CREATED="1758690433943" MODIFIED="1758690434996"/>
</node>
<node TEXT="固定地址构造对象" ID="ID_1342744703" CREATED="1758690438268" MODIFIED="1758690438511">
<node TEXT="在硬件编程或嵌入式系统中，有时需要在特定的内存地址（如硬件寄存器映射的地址）上构造对象，placement new 可强制在指定地址初始化对象。" ID="ID_1700355204" CREATED="1758690455684" MODIFIED="1758690459650"/>
</node>
<node TEXT="性能敏感场景" ID="ID_812923779" CREATED="1758690446076" MODIFIED="1758690446296">
<node TEXT="内存分配（new/malloc）是相对耗时的操作，若某类对象需要频繁创建销毁，可预先分配内存，用 placement new 快速构造，提升性能。" ID="ID_887183540" CREATED="1758690460192" MODIFIED="1758690477856"/>
</node>
<node TEXT="容器实现" ID="ID_500129909" CREATED="1758690450328" MODIFIED="1758690450596">
<node TEXT="标准容器（如 std::vector）内部使用类似机制：预先分配一块连续内存（容量 capacity），当插入元素时，用 placement new 在未使用的内存上构造对象，避免每次插入都重新分配内存" ID="ID_159433087" CREATED="1758690478346" MODIFIED="1758690479289"/>
</node>
<node TEXT="optional&lt;T&gt;（可选对象）" FOLDED="true" ID="ID_1632936863" CREATED="1758691010782" MODIFIED="1758691011172">
<node TEXT="optional&lt;T&gt; 的功能是 “可能存储一个 T 对象，也可能不存储”（类似 “有值 / 无值” 的状态）" ID="ID_1041820940" CREATED="1758691022343" MODIFIED="1758691023436">
<node TEXT="std::optional&lt;int&gt; opt;  // 初始无值&#xa;opt = 42;  // 变为有值状态（存储int对象）" ID="ID_447589612" CREATED="1758691026619" MODIFIED="1758691037787">
<font BOLD="false"/>
</node>
</node>
<node TEXT="要实现这种功能，optional&lt;T&gt; 内部会预留一块足够容纳 T 对象的内存（但不会一开始就构造 T）。当需要存储 T 时（如赋值时），通过 placement new 在这块预留内存上构造 T 对象；当需要清空值时，显式调用 T 的析构函数（而非释放内存，因为内存是 optional 自身的一部分）" ID="ID_814040388" CREATED="1758691059230" MODIFIED="1758691059715"/>
<node TEXT="如果不用 placement new，optional&lt;T&gt; 可能需要每次赋值时都通过 new 分配内存、析构时 delete，这会带来额外的性能开销和内存碎片，而 placement new 直接复用内部预留内存，效率更高" ID="ID_629678536" CREATED="1758691065302" MODIFIED="1758691065558"/>
</node>
<node TEXT="variant&lt;T0, T1, ..., Tn&gt;（变体类型）" FOLDED="true" ID="ID_205569065" CREATED="1758691070945" MODIFIED="1758691071225">
<node TEXT="variant 用于存储 “多种类型中的某一种”（例如 variant&lt;int, string, double&gt; 可存储 int、string 或 double）。其内部会预留一块大小等于 “最大类型尺寸” 的内存（确保能容纳任何一种类型）" ID="ID_1009688801" CREATED="1758691077194" MODIFIED="1758691080339"/>
<node TEXT="当存储不同类型的对象时（如从 int 改为 string），variant 会" ID="ID_1076915610" CREATED="1758691085292" MODIFIED="1758691085544">
<node TEXT="先显式析构当前存储的对象（如调用 int 的析构函数）；" ID="ID_1756303858" CREATED="1758691089121" MODIFIED="1758691092672"/>
<node TEXT="再通过 placement new 在同一块预留内存上构造新类型的对象（如 string）。" ID="ID_1642467370" CREATED="1758691093809" MODIFIED="1758691094110"/>
</node>
<node TEXT="这种方式避免了为每种可能的类型单独分配内存，而是复用同一块空间，大幅节省内存并简化管理" ID="ID_1941711065" CREATED="1758691099220" MODIFIED="1758691099482"/>
</node>
<node TEXT="小对象优化（SOO）：std::string 和 std::function" FOLDED="true" ID="ID_1937289589" CREATED="1758691103897" MODIFIED="1758691104158">
<node TEXT="小对象优化是指：当对象存储的数据较小时，直接使用类型自身的内部内存（而非分配外部堆内存）；当数据较大时，才分配外部内存" ID="ID_1270915314" CREATED="1758691114587" MODIFIED="1758691115551"/>
<node TEXT="td::string 的 SOO" ID="ID_6961409" CREATED="1758691125319" MODIFIED="1758691125732">
<node TEXT="大多数实现中，std::string 会包含一个小型内部缓冲区（例如 16 字节）。当字符串长度较短（如 &quot;hello&quot;）时，字符直接存储在内部缓冲区中，通过 placement new 在缓冲区上构造字符串数据（无需 new 分配堆内存）；当字符串很长时，才会在堆上分配内存并存储数据" ID="ID_620057270" CREATED="1758691130719" MODIFIED="1758691131605"/>
</node>
<node TEXT="td::function 的 SOO" ID="ID_473278359" CREATED="1758691136307" MODIFIED="1758691136553">
<node TEXT="std::function 用于存储任意可调用对象（函数、lambda、函数对象等）。当存储的可调用对象较小时（如无捕获的 lambda），std::function 会用内部内存存储它（通过 placement new 构造）；当对象较大时，才会分配堆内存" ID="ID_751071499" CREATED="1758691144847" MODIFIED="1758691146276"/>
</node>
<node TEXT="SOO 的核心是 “复用内部内存”，而 placement new 正是实现 “在固定内部内存上动态构造不同大小 / 类型对象” 的关键工具，避免了小对象场景下的不必要堆分配，提升性能并减少内存碎片" ID="ID_1262186195" CREATED="1758691154716" MODIFIED="1758691154977"/>
</node>
</node>
<node TEXT="注意事项" ID="ID_953501807" CREATED="1758690488230" MODIFIED="1758690488568">
<node TEXT="内存大小与对齐" ID="ID_1928319772" CREATED="1758690492946" MODIFIED="1758690500781">
<node TEXT="必须确保传入 placement new 的内存块大小 ≥ sizeof(T)，且对齐方式满足 T 类型的要求（如 double 需要 8 字节对齐）。否则会导致未定义行为（崩溃、数据错乱等）" ID="ID_1811517909" CREATED="1758690501661" MODIFIED="1758690505998"/>
</node>
<node TEXT="手动析构" ID="ID_1116598553" CREATED="1758690506805" MODIFIED="1758690507067"/>
<node TEXT="禁止用 delete 释放" ID="ID_1030637252" CREATED="1758690508461" MODIFIED="1758690512901"/>
<node TEXT="异常处理" ID="ID_706694268" CREATED="1758690527706" MODIFIED="1758690527969">
<node TEXT="若 placement new 中对象的构造函数抛出异常，标准库会自动调用对应的 operator delete(void*, void*)（placement delete）释放资源（但该函数默认无操作，通常无需用户重载）" ID="ID_1836980083" CREATED="1758690544186" MODIFIED="1758690545207"/>
</node>
</node>
</node>
<node TEXT="“对齐感知” 的分配运算符" FOLDED="true" ID="ID_461089933" CREATED="1758693045170" MODIFIED="1758693045608">
<node TEXT="为需要超出默认对齐要求的类型（如 SIMD 数据、硬件寄存器映射类型等）分配内存，确保内存地址满足严格的对齐约束，避免因对齐错误导致的未定义行为（如硬件访问效率低下、程序崩溃等）。" ID="ID_1992995639" CREATED="1758693113441" MODIFIED="1758693116890"/>
<node TEXT="内存对齐是硬件和编译器对数据存储地址的约束（例如：int通常需要 4 字节对齐，double需要 8 字节对齐，SIMD 指令中的__m256需要 32 字节对齐）。默认情况下" ID="ID_1543889841" CREATED="1758693129824" MODIFIED="1758693130083">
<node TEXT="普通operator new或malloc只能保证 “最大基本对齐”（std::max_align_t，通常为 8 或 16 字节，取决于系统）" ID="ID_1049608538" CREATED="1758693134839" MODIFIED="1758693135692"/>
<node TEXT="当类型需要更大的对齐要求（如alignas(32) struct A { ... };）时，普通分配函数可能返回不符合对齐的内存地址，导致未定义行为。" ID="ID_1545485081" CREATED="1758693139783" MODIFIED="1758693140034"/>
</node>
</node>
<node TEXT="destroying delete" FOLDED="true" ID="ID_70078046" CREATED="1758693207348" MODIFIED="1758693634420">
<node TEXT="C++17" ID="ID_50376462" CREATED="1758693452655" MODIFIED="1758693453262"/>
<node TEXT="template &lt;typename T&gt;&#xa;void operator delete(T* ptr, std::destroying_delete_t) noexcept {&#xa;    // 1. 在释放内存前，手动调用析构函数（销毁对象）&#xa;    ptr-&gt;~T();&#xa;    // 2. 释放内存（例如归还给内存池）&#xa;    my_memory_pool.deallocate(ptr);&#xa;}" ID="ID_1741827705" CREATED="1758693485674" MODIFIED="1758693486574"/>
<node TEXT="对象的销毁（调用析构函数）和内存的释放（回收内存块）合并到同一个操作中，通过重载特定版本的 operator delete 实现" ID="ID_654064944" CREATED="1758693304934" MODIFIED="1758693305872"/>
<node TEXT="这一机制主要用于优化内存管理效率，尤其适合自定义分配器（allocator）、内存池等场景，避免传统 “先析构再释放” 两步操作带来的额外开销。" ID="ID_1727035457" CREATED="1758693314657" MODIFIED="1758693314911"/>
<node TEXT="当对一个对象执行 delete 操作时，若该类型存在 destroying delete 重载，编译器会自动选择该版本，从而合并销毁与释放步骤" ID="ID_1129010511" CREATED="1758693358134" MODIFIED="1758693634419"/>
<node TEXT="合并操作，减少开销" ID="ID_170757719" CREATED="1758693375490" MODIFIED="1758693375741">
<node TEXT="传统 delete 会先调用析构函数（编译器插入代码），再调用 operator delete；而 destroying delete 将这两步合并到 operator delete 重载中，减少一次函数调用，尤其对性能敏感的场景（如高频创建 / 销毁对象）更高效" ID="ID_159641640" CREATED="1758693435772" MODIFIED="1758693437171"/>
</node>
<node TEXT="依赖特殊标签 std::destroying_delete_t" ID="ID_1356045853" CREATED="1758693382428" MODIFIED="1758693382675">
<node TEXT="该标签是一个空结构体（struct destroying_delete_t {};），仅用于区分 destroying delete 重载版本，无实际数据意义" ID="ID_614337217" CREATED="1758693391357" MODIFIED="1758693392552"/>
</node>
<node TEXT="需手动调用析构函数" ID="ID_738190593" CREATED="1758693396461" MODIFIED="1758693396701">
<node TEXT="在 destroying delete 重载中，必须显式调用对象的析构函数（ptr-&gt;~T()），否则会导致资源泄漏（因为编译器不会再单独插入析构调用）" ID="ID_1607304021" CREATED="1758693403856" MODIFIED="1758693407582"/>
</node>
<node TEXT="兼容传统释放逻辑" ID="ID_649408600" CREATED="1758693411440" MODIFIED="1758693411713">
<node TEXT="仍需提供普通版本的 operator delete，以应对特殊场景（如对象构造函数抛出异常时，编译器需要调用普通 operator delete 释放内存，此时对象尚未构造完成，无需析构）" ID="ID_1315863906" CREATED="1758693424419" MODIFIED="1758693425393"/>
</node>
</node>
<node TEXT="内存分配的核心要求" ID="ID_1324113994" CREATED="1758681706775" MODIFIED="1758681707689">
<node TEXT="分配足够的内存且满足对齐要求" ID="ID_762764926" CREATED="1758681741526" MODIFIED="1758681751304">
<node TEXT="分配足够的内存：operator new/operator new[] 必须返回一块连续的、大小至少为 size 字节的内存，且内存对齐需满足该类型的对齐要求（可通过 std::align_val_t 处理自定义对齐，C++17 起支持）。" POSITION="bottom_or_right" ID="ID_1867815649" CREATED="1758681716760" MODIFIED="1758681717604"/>
</node>
<node TEXT="处理分配失败" ID="ID_685326700" CREATED="1758681732584" MODIFIED="1758681732983">
<node TEXT="基本版（无 nothrow）分配失败时必须抛出 std::bad_alloc 异常（或其派生类），不能返回 nullptr。" ID="ID_1967052385" CREATED="1758681800012" MODIFIED="1758681801490"/>
<node TEXT="nothrow 版分配失败时必须返回 nullptr，且不抛出异常" ID="ID_1940247942" CREATED="1758681807199" MODIFIED="1758681807767"/>
</node>
</node>
<node TEXT="释放函数的特殊行为" ID="ID_795041223" CREATED="1758681859840" MODIFIED="1758681860207">
<node TEXT="operator delete 被传入 nullptr 时应无操作（标准库默认实现已保证，自定义时需遵循）。" ID="ID_930524184" CREATED="1758681894190" MODIFIED="1758681894514"/>
<node TEXT="带 size 参数的版本（C++11 起）：类成员的 operator delete 可额外接受 std::size_t size 参数（表示待释放对象的大小），便于区分基类与派生类对象的释放（避免切片问题）" ID="ID_242186607" CREATED="1758681909060" MODIFIED="1758681909429"/>
</node>
<node TEXT="若重载了 operator new[]，必须同时重载对应的 operator delete[]；同理，operator new 需与 operator delete 配对。" ID="ID_1937914789" CREATED="1758681943478" MODIFIED="1758681943980">
<node TEXT="如果构造函数抛出异常（此时对象未完全构造成功），operator new 分配的内存必须被释放（否则会内存泄漏）。C++ 运行时会自动查找与 “分配时使用的 operator new 签名匹配” 的 operator delete，用它释放已分配的内存，如果没有找到，就会导致内存泄漏" POSITION="bottom_or_right" ID="ID_72715073" CREATED="1758688898504" MODIFIED="1758689384224">
<node TEXT="“匹配” 的核心是函数签名的对应关系：除了第一个参数（operator new 的第一个参数是 size_t，operator delete 的第一个参数是 void*），其余参数的类型和顺序必须完全一致" ID="ID_41234501" CREATED="1758688960057" MODIFIED="1758688961184"/>
<node TEXT="若分配时使用 operator new[](size_t, const std::nothrow_t&amp;)（数组版 + nothrow 标记），则异常时会调用 operator delete[](void*, const std::nothrow_t&amp;)" ID="ID_1871539615" CREATED="1758688985037" MODIFIED="1758688985381"/>
</node>
</node>
<node TEXT="重载了不抛出异常的new和delete之后，为什么还要重载会抛出异常的版本" ID="ID_1278901585" CREATED="1758689787667" MODIFIED="1758689814142">
<node TEXT="用户代码中，用 new（正常版本）创建的对象，最终会用 delete 释放（调用正常版本 operator delete）" POSITION="bottom_or_right" ID="ID_1161458860" CREATED="1758689744239" MODIFIED="1758689745253"/>
<node TEXT="用 new (nothrow) 创建的对象，若构造成功，用户也会用 delete 释放（此时调用的是正常版本 operator delete，而非 nothrow 版本）" POSITION="bottom_or_right" ID="ID_1519156960" CREATED="1758689752332" MODIFIED="1758689752612"/>
<node TEXT="因此，正常版本和 nothrow 版本的内存分配 / 释放逻辑必须一致（例如，都使用同一内存池），否则会导致内存管理混乱（如用 nothrow new 从内存池分配的内存，被 normal delete 错误地归还给操作系统）" POSITION="bottom_or_right" ID="ID_1872639014" CREATED="1758689767393" MODIFIED="1758689767677"/>
</node>
<node TEXT="数组版的 size 参数是数组的总字节数（包括编译器添加的数组长度信息），而非元素个数" ID="ID_1391176053" CREATED="1758681954153" MODIFIED="1758681954493"/>
<node TEXT="operator delete(void*, const std::nothrow_t&amp;) 是 **“异常安全保障专用”** 的版本，仅在 nothrow new 分配后构造函数抛出异常时被自动调用，用户无法通过 delete 显式触发" ID="ID_1458290739" CREATED="1758689690507" MODIFIED="1758689691206"/>
<node TEXT="所有显式的 delete 操作（针对已成功构造的对象），无论对象最初是通过普通 new 还是 nothrow new 分配的，都只会调用普通版本的 operator delete" ID="ID_1000979862" CREATED="1758689698913" MODIFIED="1758689699266"/>
</node>
<node TEXT="构造和析构一个对象的底层过程" FOLDED="true" ID="ID_585452285" CREATED="1758682443338" MODIFIED="1758682456826">
<node TEXT="new 构造对象的底层过程" ID="ID_1181441844" CREATED="1758682457093" MODIFIED="1758682458260">
<node TEXT="T* ptr = new T(构造参数)" ID="ID_1287563723" CREATED="1758682471666" MODIFIED="1758682472608"/>
<node TEXT="1. 调用 operator new 分配内存" ID="ID_787306575" CREATED="1758682482837" MODIFIED="1758682483303">
<node TEXT="new 操作符首先会调用内存分配函数 operator new（注意：不是 new 操作符本身），其作用是分配一块足够容纳 T 类型对象的原始内存（未初始化的字节）" ID="ID_1056476103" CREATED="1758682495222" MODIFIED="1758682496286"/>
<node TEXT="分配函数的选择" ID="ID_6980442" CREATED="1758682544427" MODIFIED="1758682544689">
<node TEXT="若类 T 重载了成员函数 operator new，则调用该类的版本；" ID="ID_1211933732" CREATED="1758682550070" MODIFIED="1758682556188"/>
<node TEXT="否则调用全局的 ::operator new（标准库默认实现，通常基于 malloc 实现）" ID="ID_380699421" CREATED="1758682556885" MODIFIED="1758682558246"/>
</node>
<node TEXT="内存分配的要求" ID="ID_651497625" CREATED="1758682563410" MODIFIED="1758682563693">
<node TEXT="分配的内存必须满足 T 类型的对齐要求（如 double 需要 8 字节对齐），否则会导致未定义行为" ID="ID_60085716" CREATED="1758682569277" MODIFIED="1758682574268"/>
</node>
<node TEXT="分配失败的处理" ID="ID_870168999" CREATED="1758682578579" MODIFIED="1758682579577">
<node POSITION="bottom_or_right" ID="ID_478181534" CREATED="1758682588413" MODIFIED="1758682588413"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">标准的</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">operator new</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">分配失败时会抛出</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">std::bad_alloc</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">异常；若使用</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">nothrow</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">版本（</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">new (std::nothrow) T</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">），则返回</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: var(--md-box-inline-code-relative-font-size); color: black; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">nullptr</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">而不抛异常</span>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="2. 调用对象的构造函数初始化内存" ID="ID_141372960" CREATED="1758682502953" MODIFIED="1758682503686">
<node TEXT="内存分配成功后，new 操作符会自动在这块内存上调用 T 的构造函数，将原始内存转换为一个 “活的” 对象" ID="ID_542529715" CREATED="1758682605161" MODIFIED="1758682606091"/>
<node TEXT="构造函数的调用形式" ID="ID_117406028" CREATED="1758682610614" MODIFIED="1758682610896">
<node TEXT="相当于执行 new (ptr) T(构造参数);（定位 new 的语法），其中 ptr 是第一步分配的内存地址" ID="ID_1628172511" CREATED="1758682619063" MODIFIED="1758682619870"/>
</node>
<node TEXT="构造函数的作用" ID="ID_1260863802" CREATED="1758682623952" MODIFIED="1758682624226">
<node TEXT="初始化对象的成员变量、申请资源（如动态内存、文件句柄等），使对象进入可用状态" ID="ID_145309501" CREATED="1758682628584" MODIFIED="1758682629455"/>
</node>
</node>
<node TEXT="3. 返回指向对象的指针" ID="ID_729114774" CREATED="1758682509670" MODIFIED="1758682510100">
<node TEXT="构造函数执行完成后，new 操作符返回指向该对象的指针（类型为 T*），供用户使用" ID="ID_1451384232" CREATED="1758682636305" MODIFIED="1758682637189"/>
</node>
<node TEXT="如果构造函数在执行过程中抛出异常，new 操作符会自动执行回滚操作" ID="ID_600547538" CREATED="1758682649319" MODIFIED="1758682649576">
<node TEXT="调用对应的 operator delete 释放第一步分配的内存（避免内存泄漏）" ID="ID_1189953548" CREATED="1758682654687" MODIFIED="1758682656179"/>
<node TEXT="异常被传递给 new 的调用者，此时不会返回任何指针（因为对象未成功构造）" ID="ID_1483647670" CREATED="1758682661215" MODIFIED="1758682661580"/>
</node>
</node>
<node TEXT="delete 析构对象的底层过程" ID="ID_224325042" CREATED="1758682687186" MODIFIED="1758682687540">
<node TEXT="delete ptr;" ID="ID_1172879155" CREATED="1758682696475" MODIFIED="1758682698140"/>
<node TEXT="1. 调用对象的析构函数清理资源" ID="ID_632938023" CREATED="1758682703488" MODIFIED="1758682708809">
<node TEXT="delete 操作符首先会调用 T 的析构函数，清理对象持有的资源。" ID="ID_1646153895" CREATED="1758682722680" MODIFIED="1758682723622"/>
<node TEXT="仅当 ptr 不是 nullptr 时才会调用（delete nullptr 是安全的，无任何操作）" ID="ID_1991197581" CREATED="1758682733776" MODIFIED="1758682734069"/>
</node>
<node TEXT="2. 调用 operator delete 释放内存" ID="ID_110441376" CREATED="1758682713385" MODIFIED="1758682713703">
<node TEXT="析构函数执行完成后，delete 操作符会调用内存释放函数 operator delete，回收对象占用的内存" ID="ID_1876467615" CREATED="1758682741646" MODIFIED="1758682742535"/>
<node TEXT="释放函数的选择" ID="ID_500026279" CREATED="1758682745812" MODIFIED="1758682746061">
<node TEXT="若类 T 重载了成员函数 operator delete，则调用该类的版本" ID="ID_230915741" CREATED="1758682750811" MODIFIED="1758682751544"/>
<node TEXT="否则调用全局的 ::operator delete（标准库默认实现通常基于 free 实现）" ID="ID_1438385777" CREATED="1758682755994" MODIFIED="1758682756327"/>
</node>
</node>
<node TEXT="若 ptr 是 nullptr，delete 不执行任何操作（安全）" ID="ID_416056106" CREATED="1758682769969" MODIFIED="1758682770275"/>
<node TEXT="若 ptr 是野指针（如已被释放的指针、未初始化的指针），delete 会导致未定义行为（崩溃、内存损坏等）" ID="ID_793875985" CREATED="1758682776238" MODIFIED="1758682776544"/>
</node>
<node TEXT="数组的 new[] 与 delete[] 额外行为" ID="ID_1173843699" CREATED="1758682788928" MODIFIED="1758682789322">
<node TEXT="T* arr = new T[N];" ID="ID_1126277781" CREATED="1758682799042" MODIFIED="1758682804878">
<node TEXT="new[] 会先分配一块内存（大小为 N * sizeof(T) + 额外空间），额外空间用于存储数组元素数量（由编译器管理）" ID="ID_772480496" CREATED="1758682817158" MODIFIED="1758682818005"/>
<node TEXT="分配后，new[] 会为每个元素调用构造函数（从第 0 个到第 N-1 个）" ID="ID_787642291" CREATED="1758682823203" MODIFIED="1758682823485"/>
</node>
<node TEXT="delete[] arr;" ID="ID_1906524070" CREATED="1758682805258" MODIFIED="1758682805718">
<node TEXT="delete[] 会先根据额外空间记录的元素数量，为每个元素调用析构函数（从最后一个到第 0 个），再释放整个内存块" ID="ID_1716161541" CREATED="1758682832224" MODIFIED="1758682833087"/>
</node>
</node>
</node>
<node TEXT="实现内存泄漏检查器" FOLDED="true" ID="ID_1914214121" CREATED="1757241636745" MODIFIED="1757241668069">
<node TEXT="C++14版本之前" ID="ID_1538190161" CREATED="1758698972383" MODIFIED="1758698977846">
<node TEXT="void *operator new(std::size_t n) {&#xa;   // allocate n bytes plus enough space to hide n&#xa;   void *p = std::malloc(n + sizeof n); // 问题1&#xa;   // signal failure to meet postconditions if needed&#xa;   if(!p) throw std::bad_alloc{};&#xa;   // hide n at the beginning of the allocated block&#xa;   auto q = static_cast&lt;std::size_t*&gt;(p);&#xa;   *q = n; // 问题2&#xa;   // inform the Accountant of the allocation&#xa;   Accountant::get().take(n);&#xa;   // return the beginning of the requested block memory&#xa;   return q + 1; // 问题1&#xa;}" POSITION="bottom_or_right" ID="ID_1250785264" CREATED="1758697549444" MODIFIED="1758698813173">
<node TEXT="" ID="ID_558693263" CREATED="1758698171579" MODIFIED="1758698171579">
<node TEXT="问题1：返回的指针可能不满足类型对齐要求" POSITION="bottom_or_right" ID="ID_1822998677" CREATED="1758697354650" MODIFIED="1758698179006">
<node TEXT="前提条件" POSITION="bottom_or_right" ID="ID_429717900" CREATED="1758697809427" MODIFIED="1758697817575">
<node TEXT="自然对齐（Natural Alignment）" POSITION="bottom_or_right" ID="ID_563833706" CREATED="1758697700857" MODIFIED="1758697701815">
<node TEXT="指数据类型的存储地址必须是其自身大小的整数倍（例如：4 字节的 int 需对齐到 4 的倍数地址，8 字节的 double 需对齐到 8 的倍数地址）。硬件和编译器强制要求自然对齐，否则可能导致未定义行为（效率低、崩溃等）。" ID="ID_1182421000" CREATED="1758697713287" MODIFIED="1758697714258"/>
</node>
<node TEXT="std::max_align_t" POSITION="bottom_or_right" ID="ID_218717818" CREATED="1758697718733" MODIFIED="1758697720107">
<node TEXT="C++ 编译器定义的一个 “占位类型”，其 对齐要求等于机器上所有基本类型的最大自然对齐要求" ID="ID_64933910" CREATED="1758697736814" MODIFIED="1758697739708"/>
<node TEXT="它的作用是 “标记最严格的对齐标准”—— 任何满足 std::max_align_t 对齐的内存，都能安全存储机器上的所有基本类型（如 int、double、指针等）。" ID="ID_1911319555" CREATED="1758697752662" MODIFIED="1758697753179"/>
</node>
<node TEXT="std::malloc 返回的内存块地址，一定满足 std::max_align_t 的对齐要求" POSITION="bottom_or_right" ID="ID_1672490466" CREATED="1758697764938" MODIFIED="1758697782073">
<node ID="ID_945074138" CREATED="1758697794254" MODIFIED="1758697794254"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">malloc</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">是 “无类型” 的内存分配函数 —— 它不知道用户会用这块内存存储什么（是</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">int</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">、</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">double</span></code><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">还是自定义结构体），因此必须确保内存能兼容所有可能的基本类型的对齐需求。只有满足</span><span class="Apple-converted-space" style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">&#xa0;</span><code style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-width: medium; border-right-width: medium; border-bottom-width: medium; border-left-width: medium; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-family: var(--md-box-global-font-family-mono); font-size: 16px; color: rgba(0, 0, 0, 0.85); font-weight: 400; line-height: var(--md-box-samantha-normal-text-line-height); font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">std::max_align_t</span></code><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">，才能保证任何基本类型都能在上面正确构造，避免对齐错误</span>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="sizeof(std::size_t) 与 sizeof(std::max_align_t) 不一定相等" POSITION="bottom_or_right" ID="ID_1917382083" CREATED="1758697840276" MODIFIED="1758697840637">
<node TEXT="若两者相等（例如：都是 8 字节，64 位系统常见情况）：&#xa;跳过 8 字节后，地址仍满足 8 字节对齐（std::max_align_t 的要求），没问题。" ID="ID_580957375" CREATED="1758697855882" MODIFIED="1758697856912"/>
<node TEXT="若两者不相等（例如：size_t 是 4 字节，max_align_t 是 8 字节）：&#xa;跳过 4 字节后，地址可能变成 “4 的倍数” 而非 “8 的倍数”—— 此时内存地址不满足 max_align_t 的对齐要求，后续构造需要 8 字节对齐的类型（如 double）就会出问题" ID="ID_1935298156" CREATED="1758697870526" MODIFIED="1758697870876"/>
</node>
<node TEXT="对齐错误的三种后果：从 “隐藏错误” 到 “直接崩溃”" POSITION="bottom_or_right" ID="ID_1016852416" CREATED="1758697884557" MODIFIED="1758697884849">
<node TEXT="如果用户恰好要构造的类型，其对齐要求低于当前地址的对齐（例如：地址是 4 字节对齐，要构造的是 int（4 字节对齐）），程序暂时能运行。" ID="ID_1949471174" CREATED="1758697903721" MODIFIED="1758697904603"/>
<node TEXT="部分硬件（如 x86）支持 “未对齐访问”，但会付出巨大代价：" ID="ID_885949856" CREATED="1758697917734" MODIFIED="1758697918009">
<node TEXT="性能损耗：硬件需要将 “一次未对齐访问” 拆分为多次对齐访问（例如：读取一个未对齐的 8 字节 double，需要先读低 4 字节，再读高 4 字节，然后通过位运算合并），执行速度显著变慢" ID="ID_966181848" CREATED="1758697929541" MODIFIED="1758697930601"/>
<node TEXT="多线程撕裂（Tearing）：多线程环境下，一个线程可能读取 “部分构造的对象”（撕裂读取），或写入 “部分更新的对象”（撕裂写入）。例如：线程 A 写 double 的低 4 字节时，线程 B 读取整个 double，得到的是 “一半旧值、一半新值” 的错误数据，这种问题极难复现和调试。" ID="ID_1878983656" CREATED="1758697943783" MODIFIED="1758697944134"/>
</node>
<node TEXT="直接崩溃（硬件不支持未对齐访问）" ID="ID_1546272550" CREATED="1758697954548" MODIFIED="1758697954848">
<node ID="ID_1225248668" CREATED="1758697964284" MODIFIED="1758697964284"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">许多嵌入式平台、游戏主机（如某些 ARM 架构设备）</span><strong style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: normal; color: black; font-size: 16px; line-height: var(--md-box-samantha-normal-text-line-height); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: normal; color: black; font-size: 16px; line-height: var(--md-box-samantha-normal-text-line-height); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">完全不支持未对齐访问</span></strong><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">—— 一旦访问未对齐地址，硬件会直接触发异常（如 “对齐故障”），程序立即崩溃。</span>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="解决方法" POSITION="bottom_or_right" ID="ID_1599326668" CREATED="1758697976088" MODIFIED="1758697980054">
<node TEXT="即使多分配了 “隐藏 n 的额外内存”，跳过这部分内存后，返回的地址仍需满足 std::max_align_t 的对齐要求" ID="ID_1856704885" CREATED="1758697991963" MODIFIED="1758697992886"/>
<node TEXT="void *p = std::malloc(n + sizeof(std::max_align_t));" ID="ID_1195481821" CREATED="1758698091694" MODIFIED="1758698203929"/>
<node TEXT="return static_cast&lt;std::max_align_t*&gt;(p) + 1;&#xd;" ID="ID_1473151258" CREATED="1758698825312" MODIFIED="1758698828402"/>
</node>
</node>
<node TEXT="问题2：未构造对象却直接赋值，为什么没出错？" FOLDED="true" POSITION="bottom_or_right" ID="ID_1757228186" CREATED="1758698467556" MODIFIED="1758698475816">
<node TEXT="什么是 “隐式生命周期类型”？" ID="ID_337188291" CREATED="1758698484419" MODIFIED="1758698485807">
<node TEXT="C++ 标准定义了一类特殊类型，称为 “隐式生命周期类型”（implicit lifetime types），它们的对象生命周期可以被 “隐式启动”，无需显式调用构造函数。包括：" ID="ID_701320197" CREATED="1758698500320" MODIFIED="1758698501219"/>
<node TEXT="标量类型：如指针、成员指针、算术类型（int、double 等）、枚举类型、std::nullptr_t，以及它们的 const/volatile 修饰版本（如 const int）。" POSITION="bottom_or_right" ID="ID_1758407954" CREATED="1758698507990" MODIFIED="1758698508928"/>
<node TEXT="隐式生命周期类：满足特定条件的类类型（如聚合类型，没有用户提供的析构函数，有至少一个符合条件的平凡构造函数，且析构函数是平凡且非删除的）。" POSITION="bottom_or_right" ID="ID_1599820484" CREATED="1758698513565" MODIFIED="1758698513881"/>
</node>
<node TEXT="哪些操作会 “隐式启动” 这类对象的生命周期？" ID="ID_145301668" CREATED="1758698566715" MODIFIED="1758698594623">
<node ID="ID_472314226" CREATED="1758698576059" MODIFIED="1758698576059"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">对于隐式生命周期类型，某些标准库函数在分配内存后，会</span><strong style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: normal; color: black; font-size: 16px; line-height: var(--md-box-samantha-normal-text-line-height); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none"><span style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-weight: normal; color: black; font-size: 16px; line-height: var(--md-box-samantha-normal-text-line-height); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none;">自动隐式启动对象的生命周期</span></strong><span style="color: rgba(0, 0, 0, 0.85); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-decoration: none; display: inline !important; float: none;">，即使没有显式调用构造函数。这些函数包括：</span>
  </body>
</html>
</richcontent>
</node>
<node TEXT="C 风格内存函数：std::malloc、std::calloc、std::realloc（分配内存）；std::memcpy、std::memmove（内存复制）。" ID="ID_727012510" CREATED="1758698583499" MODIFIED="1758698583907"/>
<node TEXT="C++23 新增函数：std::start_lifetime_as、std::start_lifetime_as_array（专门用于启动对象生命周期）。" ID="ID_1097567337" CREATED="1758698588735" MODIFIED="1758698594622"/>
<node TEXT="其他：如 std::bit_cast、分配器（allocator）中的某些函数等。" ID="ID_396435533" CREATED="1758698595881" MODIFIED="1758698596166"/>
<node TEXT="在这些函数分配的内存上（需满足正确对齐），对隐式生命周期类型进行 “写入操作”（如赋值 *p = 42）时，C++ 标准认为这会隐式创建对象，因此赋值操作是合法的" ID="ID_1356776939" CREATED="1758698608003" MODIFIED="1758698608249"/>
</node>
<node TEXT="这种 “直接赋值” 的做法只对隐式生命周期类型安全。如果换成非隐式生命周期类型（如大多数自定义类），后果会很严重" ID="ID_256086047" CREATED="1758698629172" MODIFIED="1758698629446">
<node TEXT="若类型有非平凡构造函数（如需要初始化成员的类）：直接赋值会跳过构造函数，导致对象处于 “未初始化” 状态（成员可能是随机值），后续使用会触发未定义行为（崩溃、数据错乱等）" ID="ID_47110110" CREATED="1758698645332" MODIFIED="1758698648392"/>
<node TEXT="编译器可能无法检测：对于非隐式生命周期类型，直接对未构造的内存赋值，编译器可能不报错（无法识别这种逻辑错误），但运行时会出问题" ID="ID_1736270925" CREATED="1758698657033" MODIFIED="1758698657465"/>
</node>
<node TEXT="为了避免依赖 “隐式生命周期” 的特殊规则（尤其是代码可能扩展到非隐式类型的情况），更通用、更安全的方式是显式调用构造函数，即使用 placement new" POSITION="bottom_or_right" ID="ID_1237538890" CREATED="1758698674162" MODIFIED="1758698675152"/>
<node TEXT="解决方法" POSITION="bottom_or_right" ID="ID_219289304" CREATED="1758698721764" MODIFIED="1758698724341">
<node TEXT="new (p) std::size_t{ n };&#xd;" POSITION="bottom_or_right" ID="ID_824442026" CREATED="1758698712704" MODIFIED="1758698715809"/>
</node>
</node>
</node>
</node>
<node TEXT="void operator delete(void *p) noexcept {&#xd;&#xa;   // delete on a null pointer is a no-op&#xd;&#xa;   if(!p) return;&#xd;&#xa;   // find the beginning of the block that was allocated&#xd;&#xa;   auto q = static_cast&lt;std::size_t*&gt;(p) - 1; // to revisit&#xd;&#xa;   // inform the Accountant of the deallocation&#xd;&#xa;   Accountant::get().give_back(*q);&#xd;&#xa;   // free the memory&#xd;&#xa;   std::free(q);&#xd;&#xa;}" POSITION="bottom_or_right" ID="ID_47769422" CREATED="1758698968572" MODIFIED="1758698968962">
<node TEXT="p = static_cast&lt;std::max_align_t*&gt;(p) - 1;&#xa;Accountant::get().give_back(*static_cast&lt;std::size_t*&gt;(p))" ID="ID_468776678" CREATED="1758699000052" MODIFIED="1758699042838"/>
</node>
</node>
<node TEXT="C++14版本之后" FOLDED="true" ID="ID_937972719" CREATED="1758698939161" MODIFIED="1758698947484">
<node TEXT="void operator delete(void *p, std::size_t n) noexcept {&#xd;&#xa;   // delete on a null pointer is a no-op&#xd;&#xa;   if(!p) return;&#xd;&#xa;   // inform the Accountant of the deallocation&#xd;&#xa;   Accountant::get().give_back(n);&#xd;&#xa;   // free the memory&#xd;&#xa;   std::free(p);&#xd;&#xa;}" POSITION="bottom_or_right" ID="ID_599545892" CREATED="1758698929632" MODIFIED="1758698931731"/>
<node TEXT="void *operator new(std::size_t n) {&#xd;&#xa;   // allocate n bytes (no need for more!)&#xd;&#xa;   void *p = std::malloc(n);&#xd;&#xa;   // signal failure to meet postconditions if needed&#xd;&#xa;   if(!p) throw std::bad_alloc{};&#xd;&#xa;   // inform the Accountant of the allocation&#xd;&#xa;   Accountant::get().take(n);&#xd;&#xa;   // return the beginning of the requested block memory&#xd;&#xa;   return p;&#xd;&#xa;}" POSITION="bottom_or_right" ID="ID_1166946238" CREATED="1758698936201" MODIFIED="1758698937293"/>
</node>
</node>
<node TEXT="非典型分配机制" ID="ID_527921335" CREATED="1757241669152" MODIFIED="1757241675724">
<node TEXT="简化nothrow new的使用" ID="ID_1504432253" CREATED="1758699252995" MODIFIED="1758699254480">
<node TEXT="template &lt;class T, class ... Args&gt;&#xd;&#xa;   auto try_new(Args &amp;&amp;... args) {&#xd;&#xa;      auto p = new (std::nothrow) T(std::forward&lt;Args&gt;(args)...);&#xd;&#xa;      if(!p) std::abort();&#xd;&#xa;      return p;&#xd;&#xa;   }" ID="ID_163662908" CREATED="1758699801342" MODIFIED="1758699803137"/>
</node>
<node TEXT="内存不足情况和 new_handler" ID="ID_692135499" CREATED="1758699819501" MODIFIED="1758699823665"/>
</node>
<node TEXT="基于Arena的内存管理及优化" ID="ID_242251365" CREATED="1757241676241" MODIFIED="1757241700954"/>
<node TEXT="延迟回收" ID="ID_1660372226" CREATED="1757241678451" MODIFIED="1757241683503">
<node TEXT="回收（Reclamation）" ID="ID_486797498" CREATED="1759038432168" MODIFIED="1759038433919">
<node TEXT="释放对象占用的底层存储空间（内存），让内存可被重新分配" ID="ID_1282890301" CREATED="1759038445824" MODIFIED="1759038446711"/>
</node>
<node TEXT="终结（Finalization）" ID="ID_87489583" CREATED="1759038450563" MODIFIED="1759038450862">
<node TEXT="对象被回收前执行的 “清理操作”（如关闭文件、释放网络连接）" ID="ID_1893806536" CREATED="1759038455085" MODIFIED="1759038455794"/>
</node>
<node TEXT="延迟回收（Deferred Reclamation）&#x9;" ID="ID_349324650" CREATED="1759038459547" MODIFIED="1759038460137">
<node TEXT="不立即回收 “不再被引用” 的对象，而是推迟到某个确定时机（如函数结束、一组操作完成）再回收" ID="ID_781718493" CREATED="1759038464555" MODIFIED="1759038465373"/>
</node>
<node TEXT="为什么需要延迟回收" ID="ID_315901677" CREATED="1759038475239" MODIFIED="1759038475569">
<node TEXT="循环引用导致 “无法判断是否可回收”" ID="ID_528816319" CREATED="1759038476435" MODIFIED="1759038489214">
<node TEXT="例如 “根节点与叶节点互相引用的树”：如果即时回收（如简单的引用计数），会因为 “每个对象都有一个引用” 而误判为 “不可回收”，但实际上整棵树已脱离客户端代码的引用范围。此时需延迟回收 —— 直到确定 “不会使用这棵树的代码已执行完毕”（如函数结束），再将整组对象作为一个整体回收。" ID="ID_517363832" CREATED="1759038535729" MODIFIED="1759038536530"/>
</node>
<node TEXT="“对象是否可回收” 依赖代码执行结果" ID="ID_828000289" CREATED="1759038511542" MODIFIED="1759038511803">
<node TEXT="有些场景中，对象暂时不被引用，但 “未来是否会被引用” 取决于后续代码逻辑（如条件分支中的复用）。此时立即回收可能导致后续代码 “找不到对象”，而延迟回收（等后续代码执行完毕、确定无需复用）能避免这一问题。" ID="ID_45268179" CREATED="1759038531038" MODIFIED="1759038531890"/>
</node>
</node>
<node TEXT="回收与终结的 “顺序难题”" ID="ID_303181294" CREATED="1759038563025" MODIFIED="1759038563337">
<node TEXT="终结需要顺序，回收不需要顺序" POSITION="bottom_or_right" ID="ID_1194603433" CREATED="1759038552925" MODIFIED="1759038553231"/>
<node TEXT="垃圾回收语言（如 Java、C#）的妥协" POSITION="bottom_or_right" ID="ID_1033390116" CREATED="1759038569837" MODIFIED="1759038570068">
<node TEXT="大多数垃圾回收语言 “只回收，不终结”：&#xa;因为 GC 无法保证 “终结顺序”—— 如果 A 和 B 互相引用（循环），先终结 A 会导致 B 的终结代码无法访问 A，反之亦然。为了简化回收逻辑，GC 直接跳过终结，只释放内存。" ID="ID_865406247" CREATED="1759038601469" MODIFIED="1759038602308"/>
<node TEXT="如何处理 “需要终结的对象”（如管理文件的对象）？&#xa;语言提供特殊接口（Java 的Closeable、C# 的Disposable），把 “终结责任交给客户端代码”：客户端必须显式调用close()/Dispose()（或通过try-with-resources/using块自动调用），本质是 “人类手动保证终结顺序”，GC 只负责后续的内存回收。" ID="ID_741503519" CREATED="1759038615006" MODIFIED="1759038615260"/>
</node>
<node TEXT="C++的不同思路：RAII 惯用法" POSITION="bottom_or_right" ID="ID_473453742" CREATED="1759038620668" MODIFIED="1759038624196"/>
</node>
</node>
</node>
<node TEXT="元编程" POSITION="bottom_or_right" ID="ID_1848570532" CREATED="1757172853823" MODIFIED="1757172869504">
<edge COLOR="#00ff00"/>
<node TEXT="模版特化" ID="ID_1757271934" CREATED="1757172928124" MODIFIED="1757172933787"/>
<node TEXT="类型萃取" ID="ID_1760155632" CREATED="1757172933995" MODIFIED="1757172937256"/>
</node>
<node TEXT="未定义行为（UB）的特性" FOLDED="true" POSITION="bottom_or_right" ID="ID_1227673051" CREATED="1756219814581" MODIFIED="1756219817732">
<edge COLOR="#00ff00"/>
<node TEXT="UB 是 C++ 中一种 “标准不保证任何结果” 的状态，表现为：" ID="ID_310409018" CREATED="1756219823017" MODIFIED="1756219823909">
<node TEXT="编译器可能不报错（如auto r1 = f()能编译通过）；" ID="ID_896033689" CREATED="1756219827352" MODIFIED="1756219828099"/>
<node TEXT="运行结果不可预测" ID="ID_1567863106" CREATED="1756219835609" MODIFIED="1756219835897"/>
<node TEXT="极端情况下可能导致程序崩溃或逻辑错误。" ID="ID_1621805755" CREATED="1756219840286" MODIFIED="1756219840598"/>
</node>
<node TEXT="constexpr 上下文对 UB 的严格限制" ID="ID_1670606111" CREATED="1756219847229" MODIFIED="1756219853537">
<node TEXT="constexpr（常量表达式）的核心是 “在编译期可计算且行为确定”，因此constexpr 上下文严格禁止 UB，否则编译失败。" ID="ID_1756643954" CREATED="1756219853917" MODIFIED="1756219854667"/>
</node>
</node>
<node TEXT="标准布局类型（Standard-Layout Types）" FOLDED="true" POSITION="bottom_or_right" ID="ID_1886052848" CREATED="1756219994926" MODIFIED="1758706297564">
<edge COLOR="#ff00ff"/>
<node TEXT="没有虚函数或虚基类；" ID="ID_730102717" CREATED="1756220001738" MODIFIED="1756220005566"/>
<node TEXT="所有非静态成员有相同的访问控制（如全为public）；" ID="ID_1109226263" CREATED="1756220006523" MODIFIED="1756220013140"/>
<node TEXT="继承关系简单（如没有非标准布局的基类，或只有一个基类且其成员在派生类成员之后）；" ID="ID_1173347932" CREATED="1756220014039" MODIFIED="1758706297564"/>
<node TEXT="没有引用类型的成员。" ID="ID_653331405" CREATED="1756220020139" MODIFIED="1756220020418"/>
</node>
<node TEXT="共同初始序列（Common Initial Sequence）" FOLDED="true" POSITION="bottom_or_right" ID="ID_683137533" CREATED="1756220048283" MODIFIED="1756220048527">
<edge COLOR="#00ffff"/>
<node TEXT="对于两个标准布局结构体，如果它们的成员序列中，前若干个成员的类型完全相同且顺序一致，则这部分成员构成 “共同初始序列”。" ID="ID_456618565" CREATED="1756220064348" MODIFIED="1756220065196"/>
<node TEXT="struct A的成员序列：int n0 → char c0；&#xa;struct B的成员序列：int n1 → char c1 → float x。" ID="ID_1854816209" CREATED="1756220081913" MODIFIED="1756220083812"/>
<node TEXT="A::n0与B::n1属于共同初始序列的第一个成员；&#xa;A::c0与B::c1属于共同初始序列的第二个成员。" ID="ID_482795248" CREATED="1756220089592" MODIFIED="1756220089928"/>
</node>
</node>
</map>
