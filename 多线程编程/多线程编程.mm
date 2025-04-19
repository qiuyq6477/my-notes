<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="多线程编程" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1744123101833" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_tags="UNDER_NODES" associatedTemplateLocation="template:/standard-1.6.mm" show_note_icons="true" fit_to_viewport="false" show_icons="BESIDE_NODES"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="13" RULE="ON_BRANCH_CREATION"/>
<node TEXT="线程的基础知识" POSITION="bottom_or_right" ID="ID_1846002380" CREATED="1744124609710" MODIFIED="1744125970932">
<edge COLOR="#ff00ff"/>
<node TEXT="什么是线程" POSITION="bottom_or_right" ID="ID_1725359145" CREATED="1744123242474" MODIFIED="1744125976377">
<node TEXT="一个进程至少有一个线程" ID="ID_163606816" CREATED="1744123253147" MODIFIED="1744123281872"/>
<node TEXT="线程可以创建其他的线程，并且没有限制" ID="ID_141295466" CREATED="1744123305085" MODIFIED="1744123328991"/>
<node TEXT="线程是操作系统能够独立调度的最小执行单元，操作系统无法调度进程" ID="ID_452856005" CREATED="1744123427261" MODIFIED="1744125805240">
<node TEXT="如果一个线程发生了segment-fault，整个进程都会被终止" ID="ID_1870948527" CREATED="1744125805608" MODIFIED="1744125834349"/>
<node TEXT="singal被发送给进程，而不是线程" ID="ID_456259751" CREATED="1744125834903" MODIFIED="1744125852851"/>
</node>
<node TEXT="所有的线程之间不存在父子关系，都是兄弟关系，意味着一个线程结束了，这个线程创建出来的其他线程不受影响，除了主线程" ID="ID_1296857944" CREATED="1744125114202" MODIFIED="1744125175312"/>
<node TEXT="同一个进程的所有线程共享 heap memory, socket, file descriptors, global variables" ID="ID_15414277" CREATED="1744125185346" MODIFIED="1744125897379"/>
<node TEXT="每个线程有独立的堆栈和寄存器状态，可以并行执行不同的任务" ID="ID_1746868821" CREATED="1744125266547" MODIFIED="1744125274564"/>
</node>
<node TEXT="创建线程时需要注意的地方" POSITION="bottom_or_right" ID="ID_219270912" CREATED="1744124238905" MODIFIED="1744125976384">
<node TEXT="传递参数时不能传递局部变量，因为pthread_create创建完线程之后返回，局部变量就被销毁了" ID="ID_1976987517" CREATED="1744124255974" MODIFIED="1744124318626"/>
<node TEXT="创建完线程之后的第一条指令和新线程要执行的第一条指令的先后顺序是不确定的，取决于操作系统的调度" ID="ID_669851038" CREATED="1744124322112" MODIFIED="1744124373989"/>
</node>
<node TEXT="线程结束的几种方式" POSITION="bottom_or_right" ID="ID_1263589168" CREATED="1744124535679" MODIFIED="1744125976394">
<node TEXT="线程函数执行完了，通过return结束" ID="ID_386639804" CREATED="1744124548611" MODIFIED="1744124570367"/>
<node TEXT="pthread_exit" ID="ID_1840571188" CREATED="1744124570754" MODIFIED="1744124577249"/>
<node TEXT="thread cancellation" ID="ID_526716983" CREATED="1744124578101" MODIFIED="1744124585821">
<node TEXT="任意线程可以取消任意其他线程" ID="ID_1607655775" CREATED="1744124586743" MODIFIED="1744124599716"/>
</node>
<node TEXT="主线程结束了，其他的子线程也会结束，子线程结束了主线程不会结束" ID="ID_1032958128" CREATED="1744124613115" MODIFIED="1744124688960"/>
<node TEXT="主线程通过return返回了，那么所有的子线程都会结束" ID="ID_1776289963" CREATED="1744124641065" MODIFIED="1744124741476"/>
<node TEXT="主线程通过pthread_exit返回，子线程还会继续运行" ID="ID_550703389" CREATED="1744124741764" MODIFIED="1744124762427"/>
</node>
</node>
<node TEXT="并发和并行" FOLDED="true" POSITION="bottom_or_right" ID="ID_1411219301" CREATED="1744125979097" MODIFIED="1744125989016">
<edge COLOR="#7c0000"/>
<node TEXT="概念定义" ID="ID_1399569434" CREATED="1744209058646" MODIFIED="1744209063463">
<node TEXT="并发（Concurrency）" POSITION="bottom_or_right" ID="ID_1635005315" CREATED="1744208710393" MODIFIED="1744208745528">
<node TEXT="执行多个任务，一次只能执行一个，执行一段时间之后切换到下一个" ID="ID_756480462" CREATED="1744208770097" MODIFIED="1744208845068"/>
</node>
<node TEXT="并行（Parallelism）" POSITION="bottom_or_right" ID="ID_603708560" CREATED="1744208746005" MODIFIED="1744208757342">
<node TEXT="同时执行多个任务" ID="ID_164874120" CREATED="1744208931919" MODIFIED="1744209011460"/>
</node>
<node TEXT="Singularism" POSITION="bottom_or_right" ID="ID_1611471693" CREATED="1744209024809" MODIFIED="1744209026143">
<node TEXT="一次执行一个任务，任务完成了再执行下一个" ID="ID_1375276602" CREATED="1744209028298" MODIFIED="1744209047800"/>
</node>
</node>
<node TEXT="速度比较" ID="ID_1457600298" CREATED="1744209071347" MODIFIED="1744209086181">
<node TEXT="并行&lt;&lt;并发&lt;Singularism" ID="ID_972450358" CREATED="1744209086184" MODIFIED="1744209115973"/>
<node TEXT="因为任务切换也需要耗费时间，不要为了执行速度选择并发，并发可以让任务都开始起来，但是比较慢" ID="ID_1027730020" CREATED="1744209117110" MODIFIED="1744209188110"/>
</node>
<node TEXT="为什么需要并发" ID="ID_1548076489" CREATED="1744209589914" MODIFIED="1744209597226">
<node TEXT="因为没有足够数量的cpu来支持并行" ID="ID_27911087" CREATED="1744209597648" MODIFIED="1744209615010"/>
<node TEXT="不能让任务闲置，需要确保任务在进行" ID="ID_297634107" CREATED="1744209715730" MODIFIED="1744209746153"/>
<node TEXT="现代的操作系统是并发和并发都有的，多个cpu之间并行，单个cpu并发" ID="ID_223536413" CREATED="1744209616008" MODIFIED="1744209669389"/>
</node>
<node TEXT="线程为什么是轻量级的进程" ID="ID_1750578614" CREATED="1744212402452" MODIFIED="1744212419867">
<node TEXT="当创建一个线程时，它几乎会使用主线程的所有现有资源，因此操作系统不必费力为新线程创建（或删除）一个独立的执行环境" ID="ID_1655518852" CREATED="1744212420260" MODIFIED="1744212494681">
<node TEXT="页表已经设置好" ID="ID_777089228" CREATED="1744212520882" MODIFIED="1744212545437"/>
<node TEXT="共享库已经加载" ID="ID_1375117235" CREATED="1744212537800" MODIFIED="1744212539082"/>
<node TEXT="套接字已经打开" ID="ID_1988047732" CREATED="1744212547609" MODIFIED="1744212548701"/>
</node>
<node TEXT="当线程死亡时，操作系统不必清理该线程使用的每一个资源，因为这些资源可能仍被同一进程的其他线程使用。例如：堆内存、套接字、打开的文件、进程间通信等。" ID="ID_274947972" CREATED="1744212556166" MODIFIED="1744212557387"/>
<node TEXT="从 T1 到 T2 的上下文切换（线程切换）发生得很快，其中 T1 和 T2 是同一进程的线程，这与 T1 和 T2 属于不同进程时（进程切换）的情况相反" ID="ID_1415450402" CREATED="1744212573532" MODIFIED="1744212574685"/>
</node>
<node TEXT="使用线程可以提高速度吗" ID="ID_113381997" CREATED="1744212684534" MODIFIED="1744212697345">
<node TEXT="可以让不同的线程处理不同的数据，并且操作系统有多个cpu，可以同时执行多个线程，但是如果只有一个cpu，多线程会降低速度" ID="ID_1291753505" CREATED="1744212697650" MODIFIED="1744212747256"/>
</node>
<node TEXT="可重入函数" ID="ID_1118523632" CREATED="1744213155036" MODIFIED="1744213161890">
<node TEXT="一个函数若在系统中能从一个线程到另一个线程进行上下文切换，且不会产生任何破坏性或不良结果，就称该函数为可重入函数" ID="ID_625093565" CREATED="1744213162243" MODIFIED="1744213179572"/>
<node TEXT="可重入函数的条件" ID="ID_499852875" CREATED="1744213184717" MODIFIED="1744213186326">
<node TEXT="不使用全局或静态变量" ID="ID_1581695907" CREATED="1744213193586" MODIFIED="1744213194430"/>
<node TEXT="不访问堆中的应用程序数据结构" ID="ID_1279212669" CREATED="1744213199033" MODIFIED="1744213199916"/>
<node TEXT="使用适当的同步技术保护全局 / 共享数据" ID="ID_548526426" CREATED="1744213204054" MODIFIED="1744213205946"/>
</node>
</node>
<node TEXT="不可重入函数" ID="ID_1402058099" CREATED="1744213223477" MODIFIED="1744213224610">
<node TEXT="不满足可重入函数条件的函数就是不可重入函数。在多线程环境中，不可重入函数可能会引发各种问题，如数据不一致、程序崩溃等。" ID="ID_1388398620" CREATED="1744213231281" MODIFIED="1744213235004"/>
<node TEXT="为了将不可重入函数转换为可重入函数，需要使用线程同步技术。例如，可以使用互斥锁来保护全局或共享数据，确保同一时间只有一个线程可以访问这些数据。这样就能避免数据竞争，使函数在多线程环境下正确运行。" ID="ID_1131233134" CREATED="1744213244482" MODIFIED="1744213245549"/>
</node>
<node TEXT="应用程序应该设计为多线程还是单线程？" ID="ID_826867420" CREATED="1744213434203" MODIFIED="1744213451640">
<node TEXT="适合单线程的应用场景" ID="ID_61654172" CREATED="1744213461894" MODIFIED="1744213464982">
<node TEXT="如果一个应用程序中，下一步的输出依赖于上一步的结果，那么单线程方法是比较合适的选择。例如，一个按顺序处理数据的程序，每一步的计算都依赖于前一步的结果，这种情况下使用单线程可以保证程序逻辑的清晰和简单" ID="ID_194104720" CREATED="1744213488280" MODIFIED="1744213489488"/>
</node>
<node TEXT="适合多线程或多进程的场景" ID="ID_585632069" CREATED="1744213473036" MODIFIED="1744213473638">
<node TEXT="对于处理慢速 I/O（如用户输入）或需要监听网络套接字的应用程序，可以为 I/O 操作单独启动一个线程，而在另一个线程中处理应用程序的逻辑。这样可以避免主线程被 I/O 操作阻塞，提高程序的响应性" ID="ID_237380296" CREATED="1744213501062" MODIFIED="1744213502120"/>
</node>
<node TEXT="多线程与单线程的性能比较" ID="ID_1318437851" CREATED="1744213513258" MODIFIED="1744213514373">
<node TEXT="多线程应用程序并不总是在速度或吞吐量上优于单线程应用程序。只有当多个线程处理不重叠的工作时，多线程才能发挥优势。如果多个线程的工作存在大量的重叠和依赖，那么线程间的同步开销可能会抵消多线程带来的性能提升。此外，如果线程能够在不同的 CPU 上执行，多线程的性能优势会更加明显，因为可以充分利用多核处理器的并行计算能力。" ID="ID_1878929242" CREATED="1744213523783" MODIFIED="1744213526817"/>
</node>
</node>
</node>
<node TEXT="线程的生命周期" FOLDED="true" POSITION="bottom_or_right" ID="ID_1757532365" CREATED="1744429794601" MODIFIED="1744429808618">
<edge COLOR="#007c7c"/>
<node TEXT="就绪状态（Ready State）" ID="ID_1254580553" CREATED="1744429813369" MODIFIED="1744429821275">
<node TEXT="状态描述：" ID="ID_288914275" CREATED="1744429854943" MODIFIED="1744429861544">
<node TEXT="线程处于就绪状态意味着它已经准备好被 CPU 调度执行，正在等待系统分配 CPU 时间片。处于该状态的线程具备了运行的条件，只是还没有获得 CPU 的使用权。" ID="ID_1720189385" CREATED="1744429862717" MODIFIED="1744429866237"/>
</node>
<node TEXT="进入就绪状态的情况：" ID="ID_123383704" CREATED="1744429872348" MODIFIED="1744429873232">
<node TEXT="线程创建后：当调用 pthread_create() 函数创建一个新线程时，新线程会被初始化为就绪状态，等待系统调度。" POSITION="bottom_or_right" ID="ID_1558321675" CREATED="1744429828508" MODIFIED="1744429829319"/>
<node TEXT="时间片轮转：在多任务操作系统中，每个线程会被分配一定的时间片来执行。当一个线程的时间片用完后，它会被操作系统从运行状态切换到就绪状态，等待下一次被调度。" POSITION="bottom_or_right" ID="ID_209290431" CREATED="1744429835764" MODIFIED="1744429836832"/>
</node>
</node>
<node TEXT="阻塞状态（Blocked State）" ID="ID_467651640" CREATED="1744429842689" MODIFIED="1744429854376">
<node TEXT="状态描述：" ID="ID_1297769716" CREATED="1744429881341" MODIFIED="1744429882035">
<node TEXT="线程在阻塞状态下暂时无法继续执行，需要等待某个特定的事件发生或条件满足才能重新进入就绪状态。线程在阻塞期间不会占用 CPU 资源。" ID="ID_1067256358" CREATED="1744429892301" MODIFIED="1744429893278"/>
</node>
<node TEXT="进入阻塞状态的情况：" ID="ID_330957214" CREATED="1744429886076" MODIFIED="1744429887075">
<node TEXT="互斥锁阻塞：当线程尝试获取一个已经被其他线程占用的互斥锁（pthread_mutex_t）时，会被阻塞，直到该互斥锁被释放。" ID="ID_1888958383" CREATED="1744429900781" MODIFIED="1744429901554"/>
<node TEXT="条件变量阻塞：线程可以在条件变量（pthread_cond_t）上等待，当条件不满足时，线程会被阻塞，直到其他线程发出信号通知条件已经满足。" ID="ID_911173783" CREATED="1744429906168" MODIFIED="1744429906980"/>
<node TEXT="I/O 操作阻塞：当线程进行 I/O 操作（如读取文件、网络通信等）时，如果数据尚未准备好，线程会被阻塞，直到 I/O 操作完成。" ID="ID_236051321" CREATED="1744429911500" MODIFIED="1744429916880"/>
<node TEXT="页面错误：当线程访问的内存页面不在物理内存中时，会发生页面错误，线程会被阻塞，直到该页面被从磁盘交换到内存中。" ID="ID_1698574765" CREATED="1744429917835" MODIFIED="1744429918724"/>
</node>
</node>
<node TEXT="运行状态（Running State）" ID="ID_1417077456" CREATED="1744429928490" MODIFIED="1744429932607">
<node TEXT="状态描述：" ID="ID_449374097" CREATED="1744429937457" MODIFIED="1744429938810">
<node TEXT="当线程获得了 CPU 的使用权，正在实际执行其线程函数中的指令时，线程处于运行状态。在运行状态下，线程会按照程序的逻辑顺序执行代码。" ID="ID_1126946239" CREATED="1744429949942" MODIFIED="1744429950872"/>
</node>
<node TEXT="进入运行状态的情况：" ID="ID_1801627080" CREATED="1744429943679" MODIFIED="1744429944700">
<node TEXT="当操作系统从就绪队列中选择一个线程，并将 CPU 分配给该线程时，线程就会从就绪状态进入运行状态。" ID="ID_573903781" CREATED="1744429955245" MODIFIED="1744429955979"/>
</node>
</node>
<node TEXT="终止状态（Terminated State）" ID="ID_1986699038" CREATED="1744429960400" MODIFIED="1744429961373">
<node TEXT="状态描述：" ID="ID_1135815966" CREATED="1744429966912" MODIFIED="1744429970453">
<node TEXT="线程进入终止状态表示该线程已经结束其生命周期，不再参与系统的调度。在终止状态下，线程占用的所有资源（如内存、文件描述符等）都会被释放。" ID="ID_123795055" CREATED="1744429974196" MODIFIED="1744429977182"/>
</node>
<node TEXT="进入终止状态的情况：" ID="ID_482619286" CREATED="1744429983489" MODIFIED="1744429984290">
<node TEXT="线程函数执行完毕：当线程函数（pthread_create() 中的第三个参数指定的函数）执行到返回语句时，线程会正常结束并进入终止状态。" ID="ID_54889974" CREATED="1744429988584" MODIFIED="1744429991029"/>
<node TEXT="线程被取消：其他线程可以调用 pthread_cancel() 函数来请求取消某个线程。如果被取消的线程响应了取消请求，它会进入终止状态。" ID="ID_575735126" CREATED="1744429999037" MODIFIED="1744429999884"/>
<node TEXT="线程主动退出：线程可以调用 pthread_exit() 函数来主动终止自己的执行。" ID="ID_1517309039" CREATED="1744430007263" MODIFIED="1744430008191"/>
</node>
</node>
<node TEXT="状态图" FOLDED="true" ID="ID_50034598" CREATED="1744430056958" MODIFIED="1744430065430">
<node TEXT="Thread Life Cycle.png" ID="ID_254099837" CREATED="1744430072327" MODIFIED="1744430091209">
<hook URI="多线程编程_files/png-250412-115428278-17284515142760253973.png" SIZE="0.3952569" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="Joinable and Detached Thread" FOLDED="true" POSITION="bottom_or_right" ID="ID_828053780" CREATED="1744296708683" MODIFIED="1744296718495">
<edge COLOR="#00007c"/>
<node TEXT="Joinable Thread" ID="ID_1055730486" CREATED="1744296719257" MODIFIED="1744296722981">
<node TEXT="通过调用 pthread_join 阻塞线程，来等待joinable thread返回" ID="ID_992700938" CREATED="1744296748571" MODIFIED="1744298413708"/>
<node TEXT="joinable thread 只有 join the caller thread，资源才会释放，如果没有线程等待 join，资源则永远不会释放" ID="ID_935367228" CREATED="1744296877664" MODIFIED="1744298420189"/>
<node TEXT="可以返回结果给 caller thread，结果必须保存在堆内存中，不能是局部变量" ID="ID_945274591" CREATED="1744297062527" MODIFIED="1744298408168"/>
<node TEXT="当 joinable thread 结束时，他会向所有调用了 pthread_join(指定的线程句柄)的线程发送信号，将他们唤醒" ID="ID_1638227706" CREATED="1744298183995" MODIFIED="1744298423428"/>
<node TEXT="任何线程都可以对其他 joinable thread 调用 pthread_join()" ID="ID_1550596799" CREATED="1744298362987" MODIFIED="1744298405689"/>
<node TEXT="应用场景" ID="ID_24241258" CREATED="1744298544020" MODIFIED="1744429574614">
<node TEXT="父线程需要子线程的返回值" ID="ID_398849526" CREATED="1744298550683" MODIFIED="1744429580159">
<node TEXT="父线程要对一个大文件进行复杂的哈希计算，可创建一个子线程专门去完成这个计算，等子线程计算结束后，父线程就能通过 pthread_join 函数获取子线程的返回值。" ID="ID_464973084" CREATED="1744429738855" MODIFIED="1744429739914"/>
</node>
<node TEXT="父线程要等子线程完成工作后再继续执行" ID="ID_931107477" CREATED="1744429598963" MODIFIED="1744429600267"/>
<node TEXT="父线程需要知道子线程何时完成工作" ID="ID_474792889" CREATED="1744429609707" MODIFIED="1744429614924"/>
<node TEXT="用于计算量小、耗时短的工作" ID="ID_1428163105" CREATED="1744429616019" MODIFIED="1744429617094"/>
</node>
</node>
<node TEXT="Detached Thread" ID="ID_1350956149" CREATED="1744296723826" MODIFIED="1744296728101">
<node TEXT="pthread_exit 或者 return 完成他的任务之后，资源自动释放，不能返回结果给 caller thread" ID="ID_1509923244" CREATED="1744297077299" MODIFIED="1744298445558"/>
<node TEXT="应用场景" ID="ID_630774201" CREATED="1744298582129" MODIFIED="1744429636405">
<node TEXT="父线程不需要子线程的返回值" ID="ID_99313447" CREATED="1744429643455" MODIFIED="1744429644463">
<node TEXT="例如，子线程负责将大量数据写入磁盘日志文件，父线程只需要启动子线程，而不需要关心写入操作的具体结果。" ID="ID_765781248" CREATED="1744429650660" MODIFIED="1744429656193"/>
</node>
<node TEXT="父线程和子线程可以独立运行并完成各自的任务" ID="ID_1266219080" CREATED="1744429661091" MODIFIED="1744429668482">
<node TEXT="比如，父线程负责处理用户的输入，子线程作为 TCP 服务器处理客户端的请求，两者可以并行运行，互不干扰。" ID="ID_1283440360" CREATED="1744429669584" MODIFIED="1744429670434"/>
</node>
<node TEXT="父线程不关心子线程的终止情况" ID="ID_408795284" CREATED="1744429678800" MODIFIED="1744429685899">
<node TEXT="例如，子线程负责进行一些后台的监控或定时任务，父线程可以继续执行自己的工作，而不必关心子线程何时结束。" ID="ID_1303920604" CREATED="1744429689366" MODIFIED="1744429694667"/>
</node>
<node TEXT="用于计算量大但父线程不需要结果的工作" ID="ID_168011355" CREATED="1744429699169" MODIFIED="1744429705835">
<node TEXT="写入大量数据到磁盘日志文件" ID="ID_1242684190" CREATED="1744429712999" MODIFIED="1744429721034"/>
<node TEXT="启动子线程作为 TCP 服务器处理客户端请求" ID="ID_356938627" CREATED="1744429723894" MODIFIED="1744429724913"/>
</node>
</node>
</node>
<node TEXT="joinable thread 可以转换为 detached thread，反之亦然" POSITION="bottom_or_right" ID="ID_1108160761" CREATED="1744296916181" MODIFIED="1744298433505"/>
<node TEXT="通过 pthread_create 创建的线程默认是 joinable 的" POSITION="bottom_or_right" ID="ID_1544956219" CREATED="1744296729271" MODIFIED="1744298440216"/>
</node>
<node TEXT="Thread Cancellation" POSITION="bottom_or_right" ID="ID_585610713" CREATED="1744381210708" MODIFIED="1744381219704">
<edge COLOR="#7c007c"/>
<node TEXT="同一个进程下，任意一个线程可以取消任意一个其他的线程，线程一旦被取消，生命就结束了" ID="ID_561056662" CREATED="1744381227183" MODIFIED="1744381277000"/>
<node TEXT="只有一个线程被设置了可以取消，其他线程才可以取消" ID="ID_688058179" CREATED="1744424104124" MODIFIED="1744424123594"/>
<node TEXT="cancellation request 会被操作系统放入队列，所以当一个线程请求取消另一个线程，另一个线程不会立即取消" ID="ID_1031496222" CREATED="1744427365865" MODIFIED="1744427410833"/>
<node TEXT="cancellation type" ID="ID_1866907265" CREATED="1744423753352" MODIFIED="1744423766579">
<node TEXT="Asynchronous Cancellation" ID="ID_284522931" CREATED="1744423766893" MODIFIED="1744423768115">
<node TEXT="thread could be cancelled at any point in its execution flow" ID="ID_366693376" CREATED="1744426996613" MODIFIED="1744427068710"/>
<node TEXT="可能导致的问题" ID="ID_1958586850" CREATED="1744424583388" MODIFIED="1744424591021">
<node TEXT="资源泄漏" ID="ID_1022629751" CREATED="1744424591285" MODIFIED="1744424599224">
<node TEXT="文件未关闭" ID="ID_364740980" CREATED="1744424599532" MODIFIED="1744424605824"/>
<node TEXT="内存没有回收" ID="ID_614804134" CREATED="1744424607618" MODIFIED="1744424615337"/>
<node TEXT="解决方式" ID="ID_101906762" CREATED="1744424714761" MODIFIED="1744424720201">
<node TEXT="设置 cleanup handlers ，在线程被取消前调用，用来清理资源" ID="ID_21676120" CREATED="1744424720384" MODIFIED="1744424751813"/>
</node>
</node>
<node TEXT="数据结构中的状态不一致" ID="ID_285727072" CREATED="1744424780906" MODIFIED="1744424927666">
<node TEXT="比如说双向链表，在更新指针时，中途被取消，就会破坏指针的状态" ID="ID_205690729" CREATED="1744424960137" MODIFIED="1744425023778"/>
</node>
<node TEXT="死锁" ID="ID_649944119" CREATED="1744424814591" MODIFIED="1744424818742">
<node TEXT="当线程锁定了一个值，被取消时没有解锁，其他线程想要锁定同一个值，那么就会造成死锁" ID="ID_567094416" CREATED="1744424818950" MODIFIED="1744425250228"/>
</node>
</node>
<node TEXT="cleanup handlers 工作方式" ID="ID_107451438" CREATED="1744425983987" MODIFIED="1744425986984">
<node TEXT="清理处理程序是以栈的形式进行管理的。当线程被取消时，清理处理程序会按照从栈顶到栈底的顺序依次被调用" ID="ID_779176620" CREATED="1744426102491" MODIFIED="1744426148126">
<node TEXT="pthread_cleanup_push 函数用于把清理处理程序压入栈中" ID="ID_801237603" CREATED="1744426133161" MODIFIED="1744426134258"/>
<node TEXT="pthread_cleanup_pop 函数则是将清理处理程序从栈中弹出 参数等于0时只弹出不执行，不等于0弹出并且执行" ID="ID_158510205" CREATED="1744426139293" MODIFIED="1744426247683"/>
</node>
<node TEXT="函数原型 void cleanup(void *arg)" ID="ID_1097100680" CREATED="1744426180090" MODIFIED="1744426207776"/>
<node TEXT="当线程以 pthread_exit 的方式退出，cleanup 函数会自动执行并且从栈中弹出，如果以 return 的方式退出，就不会执行" ID="ID_284128276" CREATED="1744426315275" MODIFIED="1744426404533"/>
<node TEXT="pthread_cleanup_push 和 pthread_cleanup_pop 是两个宏，他们的调用必须匹配，否则编译不通过" POSITION="bottom_or_right" ID="ID_1750214653" CREATED="1744426268956" MODIFIED="1744426301314"/>
</node>
</node>
<node TEXT="Deferred Cancellation" ID="ID_262295962" CREATED="1744423772043" MODIFIED="1744423772915">
<node TEXT="和 Asynchronous Cancellation 相反，Deferred Cancellation只会在特定的地方可以取消，可以用来解决上面的三个问题" ID="ID_1142192566" CREATED="1744427419747" MODIFIED="1744427476366"/>
<node TEXT="允许线程被取消的那些点被称为 Cancellation Points。内核可以向要被取消的线程发送取消信号，但只有在线程执行到取消点时，才会处理这个信号。" ID="ID_341107161" CREATED="1744427492861" MODIFIED="1744427501647">
<node TEXT="pthread_testcancel() 函数用于检查是否有取消信号挂起。如果有，它会调用清理处理程序（clean up handlers）并取消线程" ID="ID_259730057" CREATED="1744427529135" MODIFIED="1744427530303"/>
</node>
<node TEXT="程序员需要明智地选择取消点，以确保当线程在这些点被取消时，不会出现不变量被破坏、资源泄漏或死锁等问题" ID="ID_1497185963" CREATED="1744427511688" MODIFIED="1744427513050"/>
</node>
</node>
<node TEXT="API" ID="ID_516786889" CREATED="1744423845693" MODIFIED="1744423848879">
<node TEXT="设置当前线程是否可以取消 pthread_setcancelstate" ID="ID_1648871429" CREATED="1744423878460" MODIFIED="1744423925322"/>
<node TEXT="设置当前线程取消类型 pthread_setcanceltype" ID="ID_681697124" CREATED="1744423908485" MODIFIED="1744423920057"/>
<node TEXT="取消一个线程 pthread_cancel(thread handle)" ID="ID_196285469" CREATED="1744423979807" MODIFIED="1744423991699"/>
<node TEXT="当api的第一个参数不是线程句柄时，默认就是当前线程" POSITION="bottom_or_right" ID="ID_402709093" CREATED="1744423931391" MODIFIED="1744423958916"/>
</node>
<node TEXT="当一个线程被取消（无论是通过 pthread_cancel 发起的延迟取消还是异步取消），它会向等待其结束的 pthread_join 线程返回一个特定的取消状态值 PTHREAD_CANCELED ，而非用户自定义的返回值" ID="ID_1679656825" CREATED="1744429356064" MODIFIED="1744429520799">
<node TEXT="线程被取消时，无法主动返回用户自定义的值的原因" ID="ID_898430524" CREATED="1744429388694" MODIFIED="1744429417539">
<node TEXT="系统强制终止：异步取消（若允许）会直接终止线程，线程函数可能在任意位置被中断，无法执行到用户定义的返回逻辑" ID="ID_160585121" CREATED="1744429429966" MODIFIED="1744429439034"/>
<node TEXT="取消的异步性：延迟取消会在线程执行到取消点时处理取消请求，此时线程会立即终止，不会继续执行后续代码（包括正常的 return 语句）" ID="ID_189431869" CREATED="1744429430462" MODIFIED="1744429453264"/>
</node>
<node TEXT="pthread_join 的作用是阻塞等待目标线程终止，并获取其终止状态：" ID="ID_751064898" CREATED="1744429479239" MODIFIED="1744429480331">
<node TEXT="正常终止：目标线程通过 return 或 pthread_exit 返回值，pthread_join 获取该值" ID="ID_34442650" CREATED="1744429484467" MODIFIED="1744429496864"/>
<node TEXT="取消终止：目标线程被取消，pthread_join 获取 PTHREAD_CANCELED。" ID="ID_1866003350" CREATED="1744429501134" MODIFIED="1744429501925"/>
</node>
</node>
</node>
<node TEXT="Thread Listener" POSITION="bottom_or_right" ID="ID_357505794" CREATED="1744430122542" MODIFIED="1744430127960">
<edge COLOR="#7c7c00"/>
</node>
<node TEXT="Thread Synchronization" POSITION="bottom_or_right" ID="ID_197288492" CREATED="1744439083352" MODIFIED="1744439094369">
<edge COLOR="#ff0000"/>
<node TEXT="为什么需要线程同步" ID="ID_1891468300" CREATED="1744441101360" MODIFIED="1744441108768">
<node TEXT="当多个线程同时对共享资源进行读写操作时，可能会造成数据不一致的状况，共享资源涵盖堆数据结构、全局变量、静态变量，文件描述符（已打开的文件、套接字）" ID="ID_1472041322" CREATED="1744441140809" MODIFIED="1744441470554"/>
</node>
<node TEXT="临界区（ Critical Sections ）" FOLDED="true" ID="ID_903723659" CREATED="1744441283903" MODIFIED="1744441304839">
<node TEXT="在代码中，多个线程访问共享数据的区域被称为临界区" ID="ID_1341578920" CREATED="1744441320241" MODIFIED="1744441323096"/>
<node TEXT="临界区必须由并发线程执行，但在同一时刻只能有一个线程执行。若违反这个规则，就会出现各种异常情况：" ID="ID_1020424812" CREATED="1744441615666" MODIFIED="1744441616704"/>
<node TEXT="线程同步的目的是识别临界区，并且运用多种技术来防止进程中的多个线程对共享资源进行无保护的并发访问。" ID="ID_1876363853" CREATED="1744441627851" MODIFIED="1744441628833"/>
<node TEXT="分类" ID="ID_762088978" CREATED="1744441968452" MODIFIED="1744441973497">
<node TEXT="基于代码的临界区（Critical Section by Virtue of Code）" ID="ID_1287561644" CREATED="1744441979607" MODIFIED="1744441980606">
<node TEXT="void foo() {&#xa;    static int i = 1;&#xa;    i = i + 1;&#xa;    i = i + 2;&#xa;    print i ;&#xa;}" ID="ID_483612780" CREATED="1744442033257" MODIFIED="1744442056155"/>
<node TEXT="void pkt_receive (char *pkt, int pkt_size) {&#xa;    memset (global_buffer, 0, sizeof(global_buffer));&#xa;    memcpy (global_buffer, pkt, pkt_size);&#xa;    forward_pkt (global_buffer, pkt_size);&#xa;}" ID="ID_192640656" CREATED="1744444347633" MODIFIED="1744444348803"/>
</node>
<node TEXT="基于数据的临界区（Critical Section by Virtue of Data）" ID="ID_1406834215" CREATED="1744441993381" MODIFIED="1744441994441">
<node TEXT="void delete_node_from_list(list lst, int a) {&#xa;    node_t *node = search_node( lst, a);&#xa;    remove_node(node);&#xa;    free(node);&#xa;}" ID="ID_1604330517" CREATED="1744442037516" MODIFIED="1744442048939"/>
</node>
</node>
</node>
<node TEXT="线程同步技术" ID="ID_655627950" CREATED="1744441549360" MODIFIED="1744441751685">
<node TEXT="互斥锁（Mutex）" LOCALIZED_STYLE_REF="styles.important" FOLDED="true" ID="ID_446164861" CREATED="1744441754365" MODIFIED="1744543063442">
<node TEXT="确保同一时刻只有一个线程能进入临界区，避免多个线程并发访问共享资源导致的数据不一致。" ID="ID_197404551" CREATED="1744442623723" MODIFIED="1744442626687"/>
<node TEXT="锁定资源的流程" ID="ID_941584054" CREATED="1744450240236" MODIFIED="1744450247150">
<node TEXT="允许第一个尝试加锁的线程获取锁，进入临界区。其他线程尝试加锁时会被阻塞，直到当前持有锁的线程解锁。" POSITION="bottom_or_right" ID="ID_1277658721" CREATED="1744442663448" MODIFIED="1744442670009">
<node TEXT="1：线程调用 pthread_mutex_lock(&amp;mutex) 尝试获取锁。" ID="ID_1482158719" CREATED="1744442700364" MODIFIED="1744442731151"/>
<node TEXT="2：若锁处于未锁定状态，线程获取锁，标记锁为 “已锁定”，进入临界区" ID="ID_1425975925" CREATED="1744442725627" MODIFIED="1744442726563"/>
<node TEXT="3：若锁已被其他线程持有，当前线程进入 阻塞状态，加入锁的等待队列，等待操作系统调度唤醒。" ID="ID_877141142" CREATED="1744442736628" MODIFIED="1744442737875"/>
</node>
<node TEXT="线程执行完临界区后，调用 pthread_mutex_unlock(&amp;mutex) 释放锁" POSITION="bottom_or_right" ID="ID_533016977" CREATED="1744442773428" MODIFIED="1744442859657">
<node TEXT="4:标记锁为 “未锁定”。" ID="ID_152170064" CREATED="1744442780694" MODIFIED="1744442857757"/>
<node TEXT="5:唤醒等待队列中的一个线程（具体唤醒策略由操作系统决定，如优先级高的线程优先获取锁）。" ID="ID_1545327602" CREATED="1744442789453" MODIFIED="1744450320732"/>
</node>
</node>
<node TEXT="线程阻塞与唤醒机制" ID="ID_1858196425" CREATED="1744442801410" MODIFIED="1744442804491">
<node TEXT="阻塞队列：当多个线程等待同一把锁时，操作系统会将它们放入一个 等待队列，按一定规则（如 FIFO、优先级）管理。" ID="ID_1085593370" CREATED="1744442805327" MODIFIED="1744442808125"/>
<node TEXT="上下文切换：阻塞的线程会放弃 CPU 使用权，进入睡眠状态，直到锁被释放后由操作系统唤醒，减少 CPU 资源浪费。" ID="ID_172186256" CREATED="1744442814791" MODIFIED="1744442824335"/>
<node TEXT="忙等待（Busy Waiting）：某些轻量级实现中，线程可能短暂尝试获取锁（忙等待），若失败再进入阻塞，适用于临界区执行极快的场景。" ID="ID_1971282442" CREATED="1744442825488" MODIFIED="1744442827292"/>
</node>
<node TEXT="关键点" ID="ID_3348303" CREATED="1744442651372" MODIFIED="1744442662955">
<node TEXT="锁被某个线程获取后，必须由同一线程调用 unlock 释放，不可跨线程解锁。如果尝试unlock一个已经unlocked的锁，会导致未定义的行为" ID="ID_1999691760" CREATED="1744442881370" MODIFIED="1744443093405"/>
<node TEXT="尝试重复锁定同一个锁，会发生死锁" ID="ID_568311858" CREATED="1744443238902" MODIFIED="1744443266270"/>
<node TEXT="互斥锁建议按照后进先出（LIFO）的顺序解锁。" ID="ID_196300944" CREATED="1744443440914" MODIFIED="1744443481471">
<node TEXT="如果不按照这个顺序会怎样？" ID="ID_406019111" CREATED="1744443492072" MODIFIED="1744443503386"/>
</node>
<node TEXT="当要锁定多个资源时，按照相同的顺序进行锁定，否则会出现死锁" ID="ID_1073236496" CREATED="1744450183032" MODIFIED="1744450204477"/>
<node TEXT="线程不可在持有锁时意外终止（如调用 exit()、触发未捕获异常），否则锁永远无法释放，其他线程永久阻塞。" ID="ID_1334306982" CREATED="1744442891500" MODIFIED="1744442892594">
<node TEXT="使用 pthread_cleanup_push 注册清理函数，确保线程被取消或异常终止时释放锁" ID="ID_1408767786" CREATED="1744442900203" MODIFIED="1744442903419"/>
</node>
<node TEXT="临界区应尽可能小，仅包含必要的共享资源操作。否则会影响效率" ID="ID_814472365" CREATED="1744442913224" MODIFIED="1744442930058"/>
</node>
<node TEXT="使用场景" ID="ID_783365334" CREATED="1744442946311" MODIFIED="1744442950967">
<node TEXT="轻量级互斥：保护短小、高频访问的临界区（如计数器递增、简单链表操作）。" ID="ID_1790789479" CREATED="1744442951441" MODIFIED="1744442961297"/>
</node>
<node TEXT="两种锁定方式" ID="ID_402457053" CREATED="1744443736609" MODIFIED="1744443747237">
<node TEXT="Code Locking ( Static )" ID="ID_774004726" CREATED="1744443747489" MODIFIED="1744443903493">
<arrowlink DESTINATION="ID_1287561644"/>
<node TEXT="Mutex are defined at Src file level" ID="ID_878630434" CREATED="1744443783426" MODIFIED="1744443806649"/>
</node>
<node TEXT="Object Locking ( Run Time )" ID="ID_923562473" CREATED="1744443764322" MODIFIED="1744443907991">
<arrowlink DESTINATION="ID_1406834215"/>
<node TEXT="尝试锁定的是数据，而不是代码" ID="ID_548168833" CREATED="1744444185910" MODIFIED="1744444196450"/>
<node TEXT="当多个线程要同时操作同一个链表时，上面的代码就变成了临界区，而如果是不同的链表，则多个线程可以并发执行，代码就不是临界区" ID="ID_1175777479" CREATED="1744444254128" MODIFIED="1744444308567"/>
<node TEXT="数据结构内部需要包含一个锁" ID="ID_1135422265" CREATED="1744444375598" MODIFIED="1744444386873"/>
</node>
</node>
<node TEXT="API" ID="ID_79155423" CREATED="1744444411173" MODIFIED="1744444413477">
<node TEXT="pthread_mutex_t my_mutex;" ID="ID_59475087" CREATED="1744445022226" MODIFIED="1744445026596"/>
<node TEXT="pthread_mutex_init(&amp;my_mutex, NULL);" ID="ID_1135043752" CREATED="1744445030932" MODIFIED="1744445035462"/>
<node TEXT="pthread_mutex_destroy(&amp;my_mutex);" ID="ID_1157724167" CREATED="1744445036727" MODIFIED="1744445037656"/>
<node TEXT="pthread_mutex_lock(&amp;mutex);" ID="ID_140305425" CREATED="1744445044923" MODIFIED="1744445045841"/>
<node TEXT="pthread_mutex_unlock(&amp;mutex);" ID="ID_1511927358" CREATED="1744445049976" MODIFIED="1744445050993"/>
<node TEXT="不要memcpy mutex，导致Undefined behavior" ID="ID_956850609" CREATED="1744445057138" MODIFIED="1744445108606"/>
</node>
</node>
<node TEXT="条件变量（Condition Variable）" LOCALIZED_STYLE_REF="styles.important" FOLDED="true" ID="ID_672628560" CREATED="1744441768902" MODIFIED="1744543058283">
<node TEXT="条件变量是一种线程同步机制，它和互斥锁（Mutex）配合使用，能让线程在特定条件满足时阻塞或唤醒。互斥锁主要用于保护共享资源，防止多个线程同时访问；而条件变量则用于在线程之间传递状态信息，使得线程可以根据某个条件是否满足来决定是否继续执行或等待。" ID="ID_737990326" CREATED="1744515669949" MODIFIED="1744515671129"/>
<node TEXT="使用步骤" ID="ID_1865800106" CREATED="1744516070786" MODIFIED="1744516076101">
<node TEXT="线程使用条件变量阻塞自身的步骤" POSITION="bottom_or_right" ID="ID_1560987044" CREATED="1744515818993" MODIFIED="1744515826508">
<node TEXT="pthread_mutex_lock(&amp;mutex)" ID="ID_1179830044" CREATED="1744515864573" MODIFIED="1744515866275">
<node TEXT="锁定互斥锁。在调用 pthread_cond_wait 之前，线程必须先获取互斥锁。这是因为在检查共享资源的状态（例如队列是否为空、缓冲区是否已满等）时，需要保证数据的一致性，避免其他线程同时修改这些共享资源。" POSITION="bottom_or_right" ID="ID_1483002246" CREATED="1744515827357" MODIFIED="1744515847507"/>
</node>
<node TEXT="pthread_cond_wait(&amp;cv, &amp;mutex)" ID="ID_1685814920" CREATED="1744515873387" MODIFIED="1744515874269">
<node TEXT="条件变量的主要作用之一就是让线程在特定条件不满足时进入阻塞状态。线程会暂停执行，等待其他线程发出信号来唤醒它。" ID="ID_759767956" CREATED="1744515885157" MODIFIED="1744515888258"/>
<node TEXT="为了避免死锁，pthread_cond_wait 函数会自动释放线程持有的互斥锁，并将其标记为可用。这样，其他线程就可以获取该互斥锁，对共享资源进行操作。当线程被唤醒后，pthread_cond_wait 函数会尝试重新获取该互斥锁，只有在成功获取互斥锁后，线程才会继续执行后续的代码。" ID="ID_1753727216" CREATED="1744515900898" MODIFIED="1744515901805"/>
</node>
</node>
<node TEXT="被阻塞线程接收到信号后的处理流程" POSITION="bottom_or_right" ID="ID_1373380177" CREATED="1744515936874" MODIFIED="1744515938038">
<node TEXT="进入就绪状态并等待互斥锁释放" ID="ID_1862800050" CREATED="1744515943443" MODIFIED="1744515944387">
<node TEXT="线程在接收到信号后，会从阻塞状态转换为就绪状态，但它不会立即继续执行，而是需要等待互斥锁被释放。因为在调用 pthread_cond_wait 时，线程已经释放了互斥锁，而在继续执行之前，它需要重新获取该互斥锁。" ID="ID_1819116788" CREATED="1744515953614" MODIFIED="1744515954572"/>
</node>
<node TEXT="获取互斥锁" ID="ID_158056033" CREATED="1744515958521" MODIFIED="1744515966683">
<node TEXT="一旦信号发送线程释放了互斥锁，被阻塞的线程会尝试获取该互斥锁。如果获取成功，线程就可以继续执行后续的代码。" ID="ID_1462784364" CREATED="1744515967499" MODIFIED="1744515968519"/>
</node>
<node TEXT="恢复执行" ID="ID_570464876" CREATED="1744515980326" MODIFIED="1744515985008">
<node TEXT="线程在成功获取互斥锁后，会从 pthread_cond_wait 函数返回，并继续执行后续的代码" ID="ID_1102677423" CREATED="1744515985289" MODIFIED="1744515986874"/>
</node>
</node>
<node TEXT="线程使用条件变量发出信号的步骤" POSITION="bottom_or_right" ID="ID_367205158" CREATED="1744515994942" MODIFIED="1744515996519">
<node TEXT="锁定互斥锁" ID="ID_393749843" CREATED="1744516002772" MODIFIED="1744516006425"/>
<node TEXT="发送信号" ID="ID_783214446" CREATED="1744517769713" MODIFIED="1744517774797">
<node TEXT="调用 pthread_cond_signal" POSITION="bottom_or_right" ID="ID_1488992703" CREATED="1744516007529" MODIFIED="1744516011225">
<node TEXT="线程调用 pthread_cond_signal(&amp;cv); 函数来唤醒一个等待在该条件变量上的线程。如果有多个线程等待在该条件变量上，pthread_cond_signal 函数会选择其中一个线程进行唤醒。" ID="ID_380523297" CREATED="1744516032496" MODIFIED="1744516034357"/>
</node>
<node TEXT="调用 pthread_cond_broadcast" POSITION="bottom_or_right" ID="ID_281804303" CREATED="1744517704908" MODIFIED="1744517749499">
<node TEXT="唤醒所有等待在指定条件变量上的线程。唤醒顺序取决于操作系统的调度策略" ID="ID_1253163454" CREATED="1744517726330" MODIFIED="1744517765635"/>
</node>
</node>
<node TEXT="解锁互斥锁" ID="ID_245105686" CREATED="1744516012385" MODIFIED="1744516020000">
<node TEXT="线程在调用 pthread_cond_signal 函数后，需要释放互斥锁，以便被唤醒的线程可以获取该互斥锁并继续执行。如果不释放互斥锁，被唤醒的线程将无法获取互斥锁，仍然会处于阻塞状态。" ID="ID_969030759" CREATED="1744516044625" MODIFIED="1744516045464"/>
</node>
</node>
</node>
<node TEXT="注意事项" ID="ID_1930592184" CREATED="1744516087439" MODIFIED="1744516092092">
<node TEXT="使用 while 循环检查条件" ID="ID_1701394698" CREATED="1744516102892" MODIFIED="1744516107491">
<node TEXT="这是因为线程被唤醒后，条件可能仍然不满足（例如，被其他线程抢先修改了共享资源）" ID="ID_383930081" CREATED="1744516119872" MODIFIED="1744516121329"/>
</node>
<node TEXT="互斥锁是资源身上的属性，而条件变量可以是资源身上的，也可以是线程自身的" ID="ID_119958846" CREATED="1744516433899" MODIFIED="1744516466452">
<node TEXT="当条件变量在资源身上，当有多个线程因为同一个条件变量阻塞时，收到信号后根据操作系统的调度策略随机选择一个线程唤醒" ID="ID_912738601" CREATED="1744517086129" MODIFIED="1744517139400"/>
<node TEXT="如果条件变量在线程身上，则可以控制唤醒哪一个线程" ID="ID_390947118" CREATED="1744517140151" MODIFIED="1744517164030"/>
</node>
<node TEXT="发送信号时如果没有线程阻塞在信号变量上，则什么都不会发生" ID="ID_528279463" CREATED="1744517018542" MODIFIED="1744517046471"/>
<node TEXT="一个条件变量不能与多个互斥锁关联" ID="ID_109456993" CREATED="1744517218776" MODIFIED="1744517221079">
<node TEXT="一个条件变量在同一时间只能与一个互斥锁关联，这是因为条件变量的实现依赖于互斥锁来保证线程安全。pthread_cond_wait 函数在调用时会自动释放关联的互斥锁，并在被唤醒后重新获取该互斥锁。" ID="ID_697374450" CREATED="1744517239918" MODIFIED="1744517248352"/>
</node>
<node TEXT="多个条件变量与同一个互斥锁关联" ID="ID_1546364584" CREATED="1744517269962" MODIFIED="1744517271179">
<node TEXT="假设在一个生产者 - 消费者模型中，除了 “队列已满” 和 “队列已空” 这两个条件外，还有一个 “队列中特定元素达到一定数量” 的条件。可以使用多个条件变量来处理这些不同的条件。" ID="ID_1370829499" CREATED="1744517291731" MODIFIED="1744517296827"/>
</node>
<node TEXT="信号变量和互斥锁一样，不能通过memcpy拷贝" ID="ID_1294759761" CREATED="1744517819469" MODIFIED="1744517837737"/>
<node TEXT="当需要检查多个条件是否满足时，需要同时检查所有条件，避免虚假唤醒" ID="ID_1918742509" CREATED="1744518201877" MODIFIED="1744518262493"/>
</node>
</node>
<node TEXT="线程屏障（Thread Barirer）" ID="ID_1765259200" CREATED="1744530714194" MODIFIED="1744532907972">
<node TEXT="会阻塞线程，直到达到指定数量的线程后，恢复所有阻塞的线程，最后一个线程不会阻塞，会直接通过thread barirer，并且会发送一个信号给其中一个阻塞的线程，阻塞的线程收到后恢复执行，并且也会发送一个信号给其他阻塞的线程，直到最后一个阻塞的线程，最后一个线程不会再发送信号，因为已经没有必要了" ID="ID_832830774" CREATED="1744531276372" MODIFIED="1744532195027"/>
<node TEXT="数据结构" ID="ID_78981693" CREATED="1744532019191" MODIFIED="1744532025681">
<node TEXT="typedef struct th_barrier_ {&#xa;&#xa; &#x9;uint32_t threshold_count;&#xa;&#x9;uint32_t curr_wait_count;&#xa;&#x9;pthread_cond_t cv;&#xa;&#x9;pthread_mutex_t mutex;&#xa;&#x9;bool is_ready_again;&#xa;&#x9;pthread_cond_t busy_cv;&#xa;} th_barrier_t;" ID="ID_730093430" CREATED="1744532025920" MODIFIED="1744532028172"/>
</node>
<node TEXT="算法实现" FOLDED="true" ID="ID_573931942" CREATED="1744532056643" MODIFIED="1744532061924">
<node TEXT="void thread_barrier_wait ( th_barrier_t *barrier) {&#xa;         pthread_mutex_lock (&amp;barrier-&gt;mutex);&#xa;         while (barrier-&gt;is_ready_again == false ) {&#xa;                  pthread_cond_wait(&amp;barrier-&gt;busy_cv,&#xa;                                    &amp;barrier-&gt;mutex);&#xa;         }&#xa;         if ( barrier-&gt;curr_wait_count + 1 == barrier-&gt;threshold_count ) {&#xa;                  barrier-&gt;is_ready_again = false;&#xa;                  pthread_cond_signal(&amp;barrier-&gt;cv);&#xa;                  pthread_mutex_unlock (&amp;barrier-&gt;mutex);&#xa;                  return;&#xa;         }&#xa;         barrier-&gt;curr_wait_count++;&#xa;         pthread_cond_wait(&amp;barrier-&gt;cv, &amp;barrier-&gt;mutex);&#xa;         barrier-&gt;curr_wait_count--;&#xa;         if (barrier-&gt;curr_wait_count == 0) {&#xa;                  barrier-&gt;is_ready_again = true;&#xa;                  pthread_cond_broadcast(&amp;barrier-&gt;busy_cv);&#xa;    }&#xa;         else {&#xa;                  pthread_cond_signal(&amp;barrier-&gt;cv);&#xa;         }&#xa;         pthread_mutex_unlock (&amp;barrier-&gt;mutex);&#xa;}" ID="ID_1439811661" CREATED="1744532062371" MODIFIED="1744532102959"/>
</node>
</node>
<node TEXT="自旋锁（Spin Locks）" FOLDED="true" ID="ID_764221966" CREATED="1744532218482" MODIFIED="1744532900291">
<node TEXT="类似于互斥锁，互斥锁阻塞时会发生上下文切换，而上下文切换比较昂贵，因此，自旋锁阻塞时会让线程在原地循环（自旋），持续占用 CPU 周期，避免上下文切换带来的开销。" ID="ID_1631775196" CREATED="1744532936386" MODIFIED="1744533057134"/>
<node TEXT="原理" ID="ID_1811597355" CREATED="1744533077935" MODIFIED="1744533085029">
<node TEXT="加锁（pthread_spinlock_lock）" ID="ID_372379655" CREATED="1744533091480" MODIFIED="1744533092535">
<node TEXT="若锁可用，立即获取并继续执行；&#xa;若锁被占用，线程在用户态执行空循环（自旋），不断重试获取锁，直到成功。" ID="ID_1943416091" CREATED="1744533111193" MODIFIED="1744533112343"/>
</node>
<node TEXT="解锁（pthread_spinlock_unlock）" ID="ID_290330737" CREATED="1744533097295" MODIFIED="1744533098300">
<node TEXT="释放锁时，唤醒所有自旋等待的线程（实际由硬件或库实现保证公平性）" ID="ID_1665778141" CREATED="1744533103982" MODIFIED="1744533106999"/>
</node>
</node>
<node TEXT="使用场景" ID="ID_25525824" CREATED="1744533121616" MODIFIED="1744533131004">
<node TEXT="临界区极短：如仅包含几个指令（设置 / 读取标志位、简单计数器操作）。" ID="ID_978878731" CREATED="1744533136324" MODIFIED="1744533139280"/>
<node TEXT="非阻塞同步：需要无阻塞等待的场景（如实时系统、高吞吐量的用户态服务）。" ID="ID_228624680" CREATED="1744533153204" MODIFIED="1744533154400"/>
</node>
<node TEXT="注意事项" ID="ID_831114043" CREATED="1744533169461" MODIFIED="1744533178054">
<node TEXT="CPU 资源浪费：自旋时线程持续占用 CPU，若锁竞争激烈或临界区耗时较长，会导致 CPU 利用率飙升" ID="ID_366770621" CREATED="1744533184132" MODIFIED="1744533186586"/>
<node TEXT="不支持条件变量：自旋锁无法与条件变量（CV）配合使用，因为自旋线程无法进入阻塞状态等待条件唤醒" ID="ID_817369283" CREATED="1744533192109" MODIFIED="1744533215867"/>
</node>
</node>
<node TEXT="信号量（Semaphore）" LOCALIZED_STYLE_REF="styles.important" FOLDED="true" ID="ID_431692227" CREATED="1744441765477" MODIFIED="1744543047101">
<node TEXT="是一个非负整数，代表可用资源的数量，允许多个线程同时访问共享资源，只要信号量&gt;=0" ID="ID_1497679395" CREATED="1744540217263" MODIFIED="1744540349761"/>
<node TEXT="当一个线程尝试获取一个值为 0 的信号量时，该线程会被阻塞。当其他线程释放信号量时，信号量的值会增加，被阻塞的线程会被唤醒。信号量可以同时唤醒多个等待的线程，具体取决于信号量的值。" ID="ID_353258947" CREATED="1744540330976" MODIFIED="1744540332110"/>
<node TEXT="如果信号量初始化为1，等同于互斥锁" ID="ID_417243166" CREATED="1744540668764" MODIFIED="1744540698158"/>
<node TEXT="利用两个信号量可以实现两个线程交替运行" ID="ID_1402231376" CREATED="1744541684527" MODIFIED="1744541723415"/>
<node TEXT="信号量类型" ID="ID_1489243375" CREATED="1744542266183" MODIFIED="1744542271680">
<node TEXT="根据作用范围和创建方式分类" FOLDED="true" ID="ID_1823840476" CREATED="1744542271948" MODIFIED="1744542375925">
<node TEXT="无名信号量（Unnamed Semaphores）" ID="ID_603490895" CREATED="1744542390328" MODIFIED="1744542391319">
<node TEXT="特点：" ID="ID_1728797075" CREATED="1744542768307" MODIFIED="1744542769216">
<node TEXT="没有显式的名称，通过内存中的变量直接访问，生命周期与所在进程或共享内存绑定。" POSITION="bottom_or_right" ID="ID_1275215837" CREATED="1744542401125" MODIFIED="1744542402208"/>
</node>
<node TEXT="作用范围：" ID="ID_473106046" CREATED="1744542774107" MODIFIED="1744542775089">
<node TEXT="同一进程内的线程（Threads）：&#xa;最常见场景，线程通过共享进程内存中的信号量变量实现同步（如严格交替执行、资源计数）。" ID="ID_143183127" CREATED="1744542778395" MODIFIED="1744542783367"/>
<node TEXT="相关进程（Related Processes）：&#xa;仅适用于通过 fork() 等方式创建的子进程（父子进程共享内存），需手动通过共享内存区域传递信号量变量（如 POSIX 共享内存 + sem_init 初始化）。" ID="ID_1145340510" CREATED="1744542788161" MODIFIED="1744542789096"/>
</node>
<node TEXT="API（POSIX）：" ID="ID_1264071417" CREATED="1744542798980" MODIFIED="1744542799922">
<node TEXT="初始化：sem_init(sem_t *sem, int pshared, unsigned int value)&#xa;pshared=0：用于同一进程内的线程（默认）。&#xa;pshared=1：用于相关进程（需共享内存）。&#xa;销毁：sem_destroy(sem_t *sem)（仅在不再使用时调用）。" ID="ID_544943299" CREATED="1744542804277" MODIFIED="1744542806744"/>
</node>
</node>
<node TEXT="命名信号量（Named Semaphores）" ID="ID_1967418578" CREATED="1744542376230" MODIFIED="1744542386303">
<node TEXT="特点：" ID="ID_1069066411" CREATED="1744542823158" MODIFIED="1744542828075">
<node TEXT="有一个唯一的名称（如 /my_semaphore），通过文件系统命名空间（虚拟文件系统，如 /dev/shm）标识，生命周期独立于进程（需显式销毁）。" POSITION="bottom_or_right" ID="ID_1350880947" CREATED="1744542445922" MODIFIED="1744542446920"/>
</node>
<node TEXT="作用范围：" ID="ID_372169727" CREATED="1744542834065" MODIFIED="1744542835078">
<node TEXT="不相关进程（Unrelated Processes）：&#xa;无需共享内存，只要知道信号量名称，任何进程都可以通过名称打开并操作（如两个独立的可执行程序）。" ID="ID_1105455862" CREATED="1744542839023" MODIFIED="1744542844728"/>
<node TEXT="相关进程或线程：&#xa;也可用于同一进程内的线程或相关进程，但更常用于跨进程场景。" ID="ID_1097639075" CREATED="1744542854530" MODIFIED="1744542855662"/>
</node>
<node TEXT="API（POSIX）：" ID="ID_510777151" CREATED="1744542859807" MODIFIED="1744542865795">
<node TEXT="打开 / 创建：sem_open(const char *name, int oflag, mode_t mode, unsigned int value)&#xa;oflag 包含 O_CREAT（创建新信号量）、O_EXCL（防止重复创建）等标志。" ID="ID_132040564" CREATED="1744542866670" MODIFIED="1744542869363"/>
<node TEXT="关闭：sem_close(sem_t *sem)（释放进程对信号量的引用）。" ID="ID_1326463567" CREATED="1744542872840" MODIFIED="1744542876696"/>
<node TEXT="销毁：sem_unlink(const char *name)（从系统中删除信号量，防止内存泄漏）。" ID="ID_1988360446" CREATED="1744542877693" MODIFIED="1744542878743"/>
</node>
</node>
<node TEXT="选择建议" ID="ID_508976832" CREATED="1744542491809" MODIFIED="1744542503390">
<node TEXT="线程间同步：优先使用无名信号量（简单高效，无需命名）。&#xa;相关进程同步（如父子进程）：无名信号量 + 共享内存（需处理内存共享逻辑）。" ID="ID_1640714977" CREATED="1744542504178" MODIFIED="1744542903200"/>
<node TEXT="不相关进程同步：必须使用命名信号量（通过名称跨进程访问）" ID="ID_1658373817" CREATED="1744542904515" MODIFIED="1744542905967"/>
</node>
</node>
<node TEXT="根据唤醒线程方式分类" FOLDED="true" ID="ID_359429255" CREATED="1744542530206" MODIFIED="1744542538847">
<node TEXT="强信号量（Strong Semaphores）" ID="ID_1522459296" CREATED="1744542539912" MODIFIED="1744542544734">
<node TEXT="阻塞线程按FIFO 顺序唤醒（先阻塞的线程先获得信号量）。" ID="ID_1693976821" CREATED="1744542586112" MODIFIED="1744542586974"/>
<node TEXT="因为每个线程的等待时间被限定在 “所有已阻塞线程依次获取信号量的时间” 之内。" ID="ID_1554310788" CREATED="1744542592812" MODIFIED="1744542596650"/>
<node TEXT="每个线程等待信号量的次数和时间有明确上界。" ID="ID_964563190" CREATED="1744542597839" MODIFIED="1744542598734"/>
</node>
<node TEXT="弱信号量（Weak Semaphores）" ID="ID_775427961" CREATED="1744542549707" MODIFIED="1744542550751">
<node TEXT="当多个线程阻塞在信号量上时，内核选择唤醒线程的顺序是非确定性的（可能随机或基于某种非 FIFO 策略）" ID="ID_725569894" CREATED="1744542558775" MODIFIED="1744542559781"/>
<node TEXT="可能导致某些线程长期无法获取信号量，即存在 ** 饥饿（Starvation）** 问题。" ID="ID_664674463" CREATED="1744542566158" MODIFIED="1744542567117"/>
<node TEXT="不保证有界等待—— 线程等待信号量的时间没有上限，可能无限期阻塞" ID="ID_1648536491" CREATED="1744542580747" MODIFIED="1744542581749"/>
</node>
</node>
</node>
<node TEXT="API" ID="ID_1703860615" CREATED="1744540405237" MODIFIED="1744540407874">
<node TEXT="sem_init (sem_t *sem, int pshared, int permit counter);" ID="ID_1217943214" CREATED="1744540602782" MODIFIED="1744540603801">
<node TEXT="counter：允许线程进入临界区的最大数量" ID="ID_1317774916" CREATED="1744540620025" MODIFIED="1744540773300"/>
</node>
<node TEXT="sem_wait (sem_t *sem);" ID="ID_1097592587" CREATED="1744540408296" MODIFIED="1744540412196">
<node TEXT="无条件减少计数器，如果计数器小于0，阻塞当前线程" ID="ID_1585826755" CREATED="1744540413286" MODIFIED="1744540441491"/>
</node>
<node TEXT="sem_post (sem_t *sem);" ID="ID_1144265830" CREATED="1744540446059" MODIFIED="1744540448233">
<node TEXT="无条件增加计数器，发送信号给阻塞的线程" ID="ID_192605545" CREATED="1744540449423" MODIFIED="1744540587746"/>
</node>
<node TEXT="sem_destroy (sem_t *sem);" ID="ID_284030161" CREATED="1744540617086" MODIFIED="1744540618129"/>
</node>
<node TEXT="实现原理" ID="ID_202549776" CREATED="1744542088976" MODIFIED="1744542094211">
<node TEXT="数据结构" ID="ID_1747082985" CREATED="1744542094477" MODIFIED="1744542098999">
<node TEXT="struct sema_ {&#xa;    int permit_counter;&#xa;    pthread_cond_t cv;&#xa;    pthread_mutex_t mutex;&#xa;};" ID="ID_1839537552" CREATED="1744542113244" MODIFIED="1744542117962"/>
</node>
<node TEXT="API" FOLDED="true" ID="ID_1119896276" CREATED="1744542099410" MODIFIED="1744542103960">
<node TEXT="void sema_init(sema_t *sema, int permit_counter) {&#xa;    sema-&gt;permit_counter = permit_counter;&#xa;    pthread_cond_init(&amp;sema-&gt;cv, NULL);&#xa;    pthread_mutex_init(&amp;sema-&gt;mutex, NULL);&#xa;}" ID="ID_1512402287" CREATED="1744542124761" MODIFIED="1744542166355"/>
<node TEXT="void sema_wait(sema_t *sema) {&#xa;   pthread_mutex_lock(&amp;sema-&gt;mutex);&#xa;   sema-&gt;permit_counter--;&#xa;   if (sema-&gt;permit_counter &lt; 0) {&#xa;       pthread_cond_wait(&amp;sema-&gt;cv, &amp;sema-&gt;mutex);&#xa;   }&#xa;   pthread_mutex_unlock(&amp;sema-&gt;mutex);&#xa;}" ID="ID_1009099850" CREATED="1744542135526" MODIFIED="1744542163371"/>
<node TEXT="void sema_post(sema_t *sema) {&#xa;    bool any_thread_waiting;&#xa;    pthread_mutex_lock(&amp;sema-&gt;mutex);&#xa;    any_thread_waiting = sema-&gt;permit_counter &lt; 0 ? true : false;&#xa;    sema-&gt;permit_counter++;&#xa;    if (any_thread_waiting) {&#xa;        pthread_cond_signal(&amp;sema-&gt;cv);&#xa;    }&#xa;    pthread_mutex_unlock(&amp;sema-&gt;mutex);&#xa;}" ID="ID_1988486385" CREATED="1744542143823" MODIFIED="1744542159184"/>
<node TEXT="void sema_destroy(sema_t *sema) {&#xa;    sema-&gt;permit_counter = 0;&#xa;    pthread_mutex_unlock(&amp;sema-&gt;mutex);&#xa;    pthread_cond_destroy(&amp;sema-&gt;cv);&#xa;    pthread_mutex_destroy(&amp;sema-&gt;mutex);&#xa;}" ID="ID_255090303" CREATED="1744542149773" MODIFIED="1744542154452"/>
</node>
</node>
<node TEXT="应用场景" ID="ID_1294631796" CREATED="1744543095997" MODIFIED="1744543100366">
<node TEXT="固定大小缓冲区：如消息队列、环形缓冲区。" ID="ID_276210189" CREATED="1744543104519" MODIFIED="1744543115646"/>
<node TEXT="资源池管理：限制同时访问硬件设备（如打印机）的线程数。" ID="ID_1544302903" CREATED="1744543118885" MODIFIED="1744543119906"/>
<node TEXT="简单互斥：替代互斥锁（如sem_init(&amp;mutex, 0, 1)）。" ID="ID_196359167" CREATED="1744543124059" MODIFIED="1744543125591"/>
</node>
</node>
</node>
<node TEXT="死锁" FOLDED="true" ID="ID_767171003" CREATED="1744449305540" MODIFIED="1744449596900">
<node TEXT="形成的四个必要条件" ID="ID_929122749" CREATED="1744449309137" MODIFIED="1744449595016">
<node TEXT="互斥条件（Mutual Exclusion）" ID="ID_546439382" CREATED="1744449492593" MODIFIED="1744449508324">
<node TEXT="资源具有排他性，同一时刻只能被一个线程占用，其他线程无法共享。" ID="ID_1194839939" CREATED="1744449516257" MODIFIED="1744449517277"/>
</node>
<node TEXT="占有并等待条件（Hold and Wait）" ID="ID_1448266084" CREATED="1744449522128" MODIFIED="1744449526373">
<node TEXT="线程在持有至少一个资源的同时，等待获取其他线程持有的资源，且不释放已持有资源。" ID="ID_1153451861" CREATED="1744449527671" MODIFIED="1744449528495"/>
</node>
<node TEXT="不可抢占条件（No Preemption）" ID="ID_1935687641" CREATED="1744449533728" MODIFIED="1744449538028">
<node TEXT="资源不能被强制剥夺，只能由持有线程主动释放。" ID="ID_1908085367" CREATED="1744449540849" MODIFIED="1744449542315"/>
</node>
<node TEXT="循环等待条件（Circular Wait）" ID="ID_394478020" CREATED="1744449550612" MODIFIED="1744449554499">
<node TEXT="多个线程形成环形等待链，每个线程都在等待下一个线程持有的资源。" ID="ID_1046297213" CREATED="1744449555240" MODIFIED="1744449558058"/>
</node>
</node>
<node TEXT="预防与避免" ID="ID_155547018" CREATED="1744449579577" MODIFIED="1744449598814">
<node TEXT="破坏互斥条件" ID="ID_1740317523" CREATED="1744449605407" MODIFIED="1744449607843">
<node TEXT="将非共享资源转化为可共享资源（但多数情况下无法实现，如互斥锁本质就是互斥的）。" ID="ID_877030633" CREATED="1744449621942" MODIFIED="1744449624273"/>
<node TEXT="比如使用无锁数据结构（如原子操作）替代互斥锁，允许多线程并发访问（需保证原子性）" POSITION="bottom_or_right" ID="ID_988967336" CREATED="1744449629435" MODIFIED="1744449635421"/>
</node>
<node TEXT="破坏占有并等待条件" ID="ID_1003323556" CREATED="1744449641303" MODIFIED="1744449642190">
<node TEXT="要求线程一次性获取所有需要的资源，否则不获取任何资源（“全有或全无”）。" ID="ID_1360961408" CREATED="1744449645621" MODIFIED="1744449649117"/>
</node>
<node TEXT="破坏不可抢占条件" ID="ID_657556745" CREATED="1744449653585" MODIFIED="1744449654383">
<node TEXT="允许抢占资源（仅适用于部分场景）。" ID="ID_1353972365" CREATED="1744449661361" MODIFIED="1744449665024"/>
<node TEXT="比如给锁设置超时时间（如 pthread_mutex_trylock），超时后释放已持有资源。" ID="ID_11945667" CREATED="1744449669745" MODIFIED="1744449672848"/>
</node>
<node TEXT="破坏循环等待条件" ID="ID_50263805" CREATED="1744449679219" MODIFIED="1744449686563">
<node TEXT="对资源进行全局编号，要求所有线程按相同顺序获取资源（避免环形等待）。" ID="ID_950708412" CREATED="1744449687437" MODIFIED="1744449690181"/>
</node>
</node>
<node TEXT="检测与恢复" ID="ID_84378447" CREATED="1744449722545" MODIFIED="1744449727306">
<node TEXT="日志与监控：记录线程持有和等待的资源，定期检查是否存在循环等待。" ID="ID_1791232143" CREATED="1744449739697" MODIFIED="1744449742863"/>
<node TEXT="为资源获取设置超时时间，超时后释放已持有资源并重试（适用于非关键路径）。" ID="ID_87204021" CREATED="1744449747661" MODIFIED="1744449748576"/>
<node TEXT="通过调试工具（如 pthread_stack）查看线程栈，手动终止死锁线程（最后手段）。" ID="ID_105686903" CREATED="1744449753081" MODIFIED="1744449753977"/>
</node>
</node>
<node TEXT="粗粒度锁 vs 细粒度锁" ID="ID_1462411324" CREATED="1744450809072" MODIFIED="1744450810169">
<node TEXT="假设线程 T1 需要对链表中的某个节点执行一个耗时操作 OP(node)（例如复杂的计算、I/O 操作）。此时，锁的粒度（即锁保护的范围）会直接影响程序的并发性能和同步安全性。" FOLDED="true" ID="ID_1095612348" CREATED="1744450818144" MODIFIED="1744450837493">
<node TEXT="粗粒度锁（锁定整个链表）" ID="ID_370421157" CREATED="1744450852758" MODIFIED="1744450853886">
<node TEXT="void foo() {&#xa;    pthread_mutex_lock(&amp;list-&gt;mutex);  // 锁定整个链表（粗粒度锁）&#xa;    node = list_node_search(list, a);  // 搜索目标节点&#xa;    if (!node) {&#xa;        pthread_mutex_unlock(&amp;list-&gt;mutex);&#xa;        return;&#xa;    }&#xa;    OP(node);  // 对节点执行耗时操作&#xa;    pthread_mutex_unlock(&amp;list-&gt;mutex);&#xa;}" ID="ID_1125244870" CREATED="1744450886325" MODIFIED="1744450887522"/>
<node TEXT="优点：&#xa;实现简单，只需维护一把锁，避免复杂的锁管理。&#xa;确保链表结构在搜索和操作期间完全互斥，无数据竞争风险。" ID="ID_1371854018" CREATED="1744450909620" MODIFIED="1744450910709"/>
<node TEXT="缺点：&#xa;并发度低：即使 OP(node) 仅操作单个节点，其他线程也无法访问链表的任何部分（包括未被操作的节点）。&#xa;性能瓶颈：若 OP(node) 耗时较长，其他线程会被长时间阻塞，尤其在高并发场景下吞吐量下降明显。" ID="ID_1436796071" CREATED="1744450914633" MODIFIED="1744450915628"/>
</node>
<node TEXT="细粒度锁（分级锁定链表和节点）" ID="ID_679928588" CREATED="1744450923384" MODIFIED="1744450924305">
<node TEXT="void foo() {&#xa;    pthread_mutex_lock(&amp;list-&gt;mutex);          // 第一步：锁定链表（获取全局锁）&#xa;    node = list_node_search(list, a);           // 搜索目标节点&#xa;    if (!node) {&#xa;        pthread_mutex_unlock(&amp;list-&gt;mutex);&#xa;        return;&#xa;    }&#xa;    pthread_mutex_lock(&amp;node-&gt;mutex);           // 第二步：锁定目标节点（细粒度锁）&#xa;    pthread_mutex_unlock(&amp;list-&gt;mutex);          // 释放链表锁，允许其他线程访问链表&#xa;    /* 此时，其他线程可搜索/操作链表的其他节点，但无法操作当前 node */&#xa;    OP(node);                                   // 对节点执行耗时操作（仅受 node-&gt;mutex 保护）&#xa;    pthread_mutex_unlock(&amp;node-&gt;mutex);          // 释放节点锁&#xa;}" ID="ID_773781548" CREATED="1744450927116" MODIFIED="1744450929783"/>
<node TEXT="优点：&#xa;高并发度：其他线程可同时搜索链表或操作其他节点（只要不获取当前节点的锁），适合链表规模大、节点操作独立的场景。&#xa;减少锁竞争：耗时操作 OP(node) 期间，仅锁定单个节点，而非整个链表，缩短链表锁的持有时间。" ID="ID_730545662" CREATED="1744450944267" MODIFIED="1744450945259"/>
<node TEXT="缺点：&#xa;锁管理复杂：需维护两把锁（链表锁和节点锁），增加死锁风险（如线程以不同顺序获取锁）。&#xa;正确性要求高：必须确保在释放链表锁之前获取节点锁，避免链表结构被修改导致节点指针失效（如节点被删除）。" ID="ID_410474410" CREATED="1744450949915" MODIFIED="1744450950917">
<node TEXT="强制所有线程按 全局一致的顺序 获取锁（破坏循环等待条件）。来避免死锁" ID="ID_48765393" CREATED="1744450976188" MODIFIED="1744450990324"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Thread Pool" POSITION="bottom_or_right" ID="ID_1623228864" CREATED="1744722415210" MODIFIED="1744722418749">
<edge COLOR="#0000ff"/>
<node TEXT="基本定义" ID="ID_258018110" CREATED="1744722616015" MODIFIED="1744722621089">
<node TEXT="线程池是用来存放那些暂时不能运行但随时可以恢复运行的线程的地方。" POSITION="bottom_or_right" ID="ID_1563019321" CREATED="1744722419177" MODIFIED="1744722553527"/>
<node TEXT="线程池可以用任何数据结构来建模，比如列表（list）、树（tree）等，只要这种数据结构能够存储线程对象（thread_t objects）即可。" POSITION="bottom_or_right" ID="ID_858373843" CREATED="1744722562787" MODIFIED="1744722563754"/>
<node TEXT="那些因为条件变量（CVs, Condition Variables）而被阻塞的线程会被放置（存储）在线程池中，以便后续使用。当条件满足时，这些线程可以被唤醒继续执行。" POSITION="bottom_or_right" ID="ID_462964943" CREATED="1744722579608" MODIFIED="1744722580510"/>
<node TEXT="当应用程序需要执行某个任务 W 时，它会从线程池中选取一个未使用的线程，将任务 W 分配给该线程，并向该线程发送信号，通知其开始执行任务。" POSITION="bottom_or_right" ID="ID_996005224" CREATED="1744722586483" MODIFIED="1744722587375"/>
<node TEXT="当一个线程完成了它的任务后，它会被放回线程池中，等待下一次任务的分配。" POSITION="bottom_or_right" ID="ID_1873038483" CREATED="1744722592508" MODIFIED="1744722593350"/>
<node TEXT="在应用程序的初始化阶段，可以在线程池中创建预定义数量的线程，这样可以提前准备好一定数量的线程资源，提高应用程序的执行效率。" POSITION="bottom_or_right" ID="ID_1900454529" CREATED="1744722605246" MODIFIED="1744722606132"/>
</node>
<node TEXT="好处" ID="ID_1195902092" CREATED="1744722997912" MODIFIED="1744723003010">
<node TEXT="应用程序无需调用 pthread_create() 来创建新线程，这带来了性能上的改善。因为 pthread_create() 是对 clone() 系统调用的封装，而系统调用通常开销较大，创建线程的过程涉及到一系列复杂的系统资源分配和设置操作。通过使用线程池，避免了频繁地创建新线程，从而节省了系统资源和时间，提高了应用程序的运行效率。" ID="ID_1695909024" CREATED="1744723012994" MODIFIED="1744723016056"/>
<node TEXT="线程池对应用程序能够创建的线程数量设置了上限。这在资源受限的环境中非常有用，因为过多的线程可能会导致系统资源（如内存、CPU 时间等）的过度消耗，从而影响系统的整体性能甚至导致系统崩溃。通过限制线程数量，线程池可以确保应用程序在可用资源的范围内运行，避免资源耗尽的问题。" ID="ID_1090173895" CREATED="1744723037840" MODIFIED="1744723038888"/>
</node>
</node>
</node>
</map>
