<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="计算机图形学" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1750495316493" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="1.1">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" show_tags="UNDER_NODES" associatedTemplateLocation="template:/standard-1.6.mm" show_note_icons="true" fit_to_viewport="false" show_icons="BESIDE_NODES" showTagCategories="false"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<node TEXT="TODO" POSITION="bottom_or_right" ID="ID_140750931" CREATED="1750490270657" MODIFIED="1750490274362">
<edge COLOR="#00ffff"/>
<node TEXT="模拟光照时加入空气的影响，离光源越远，看起来越暗" ID="ID_1119647639" CREATED="1750490274838" MODIFIED="1750490315400"/>
<node TEXT="全局光照" ID="ID_943025734" CREATED="1750490463748" MODIFIED="1750490467739"/>
<node TEXT="BRDF，镜面反射" ID="ID_258218421" CREATED="1750493956734" MODIFIED="1750493969289"/>
</node>
<node TEXT="光线追踪" POSITION="bottom_or_right" ID="ID_655857836" CREATED="1750495318952" MODIFIED="1750495330432">
<edge COLOR="#00007c"/>
<node TEXT="光线追踪基本原理" POSITION="top_or_left" ID="ID_1424533972" CREATED="1750489160143" MODIFIED="1750495339445">
<node TEXT="球体方程" ID="ID_1214950321" CREATED="1750690193546" MODIFIED="1750690197395">
<node TEXT="\latex (\mathbf{P} - \mathbf{C}) \cdot (\mathbf{P} - \mathbf{C}) = R^{2}" POSITION="bottom_or_right" ID="ID_667238038" CREATED="1750689677938" MODIFIED="1750691952565">
<font SIZE="20"/>
</node>
</node>
<node TEXT="射线方程" ID="ID_561588647" CREATED="1750690204663" MODIFIED="1750690209557">
<node TEXT="\latex \mathbf{P}=\mathbf{O} + t\mathbf{D}" ID="ID_962311478" CREATED="1750690211464" MODIFIED="1750691952567">
<font SIZE="20"/>
</node>
</node>
<node TEXT="射线与球体相交" POSITION="bottom_or_right" ID="ID_1682715315" CREATED="1750489491685" MODIFIED="1750489507538">
<node TEXT="将p替换到球体方程，一元二次方程，求解t" ID="ID_1095168510" CREATED="1750690412558" MODIFIED="1750690414374">
<node TEXT="\latex t^2(\mathbf{D} \cdot \mathbf{D}) + 2t(\overrightarrow{CO} \cdot \mathbf{D}) + (\overrightarrow{CO} \cdot \overrightarrow{CO}) = r^2" LOCALIZED_STYLE_REF="default" ID="ID_205320876" CREATED="1750690416121" MODIFIED="1750692362441" MAX_WIDTH="20.4 cm">
<attribute_layout NAME_WIDTH="42 pt" VALUE_WIDTH="36.66667 pt"/>
<font SIZE="22"/>
</node>
</node>
<node TEXT="t &lt; 0" ID="ID_1685551064" CREATED="1750489689040" MODIFIED="1750489694486">
<node TEXT="在相机后面" ID="ID_1691245375" CREATED="1750489694491" MODIFIED="1750489701763"/>
</node>
<node TEXT="0 &lt;= t &lt;= 1" ID="ID_1983896734" CREATED="1750489704066" MODIFIED="1750489725802">
<node TEXT="在相机和视口/投影平面之间" ID="ID_411354648" CREATED="1750489712591" MODIFIED="1750489773839"/>
</node>
<node TEXT="t &gt; 1" ID="ID_724337553" CREATED="1750489744155" MODIFIED="1750489748330">
<node TEXT="在视口/投影平面前面" ID="ID_477281054" CREATED="1750489748707" MODIFIED="1750489781404"/>
</node>
</node>
</node>
<node TEXT="光照" POSITION="top_or_left" ID="ID_294532768" CREATED="1750490173259" MODIFIED="1750495339458">
<node TEXT="光源" ID="ID_1000676712" CREATED="1750490229545" MODIFIED="1750490232844">
<node TEXT="点光源" POSITION="bottom_or_right" ID="ID_1701009057" CREATED="1750490192925" MODIFIED="1750490202667">
<node TEXT="位置，方向" ID="ID_559776895" CREATED="1750490368215" MODIFIED="1750490374854"/>
</node>
<node TEXT="方向光" POSITION="bottom_or_right" ID="ID_1886010832" CREATED="1750490203080" MODIFIED="1750490212026">
<node TEXT="方向" ID="ID_598320102" CREATED="1750490401224" MODIFIED="1750490404611"/>
</node>
<node TEXT="环境光" POSITION="bottom_or_right" ID="ID_1763876603" CREATED="1750490216598" MODIFIED="1750490220492">
<node TEXT="只有一个强度值，最基础的光照" ID="ID_567620820" CREATED="1750490481844" MODIFIED="1750490506834"/>
</node>
</node>
<node TEXT="光的反射" ID="ID_1598291062" CREATED="1750490541986" MODIFIED="1750490559267">
<node TEXT="漫反射" ID="ID_1186954842" CREATED="1750490559702" MODIFIED="1750490564592">
<node TEXT="点乘小于0的情况不在最终光照计算结果中，此时光照方向与法线方向大于90度" ID="ID_1049764249" CREATED="1750492525422" MODIFIED="1750492594961"/>
<node TEXT="光照射在了哑光物体上，比如墙壁，不管在哪个方向观看颜色都一样" ID="ID_1196523451" CREATED="1750492648645" MODIFIED="1750492670137"/>
<node TEXT="漫反射方程" ID="ID_1714262484" CREATED="1750495089286" MODIFIED="1750495299214">
<node TEXT="计算光线L和法线N的角度" ID="ID_213906812" CREATED="1750495101351" MODIFIED="1750495299213" HGAP_QUANTITY="20.66667 pt" VSHIFT_QUANTITY="-6.66667 pt"/>
<node TEXT="漫反射方程" ID="ID_763497120" CREATED="1750690784177" MODIFIED="1750691174982">
<node TEXT="\latex $I_{P} = I_A + \sum_{i=1}^{n}I_{i}\frac{\mathbf{N} \cdot \mathbf{L}_{i}}{\left | \mathbf{N}\right |\left | \mathbf{L_{i}}\right |}$" ID="ID_274690623" CREATED="1750691175490" MODIFIED="1750691287778">
<font SIZE="24"/>
</node>
</node>
</node>
</node>
<node TEXT="镜面反射" ID="ID_1016598140" CREATED="1750492611969" MODIFIED="1750495290695">
<node TEXT="光照射在了抛光物体上，比如镜子，R代表入射光线L的反射光线，越接近R，光泽度越高，如果是完美抛光的物体，只会有一条反射光线，但是大部分都不是完美抛光的，因此会有很多条反射光线" ID="ID_1626729711" CREATED="1750492672510" MODIFIED="1750495303372" HGAP_QUANTITY="15.33333 pt" VSHIFT_QUANTITY="-15.33333 pt"/>
<node TEXT="光泽度的公式符合cos函数，0度为1，90度为0" ID="ID_1309928468" CREATED="1750493538816" MODIFIED="1750493848481"/>
<node TEXT="cos函数的幂，称为镜面反射指数，越大对应的cos函数变化越快" ID="ID_1418426536" CREATED="1750493881747" MODIFIED="1750493948980"/>
<node TEXT="镜面反射方程" ID="ID_1895125222" CREATED="1750494990291" MODIFIED="1750494996489">
<node TEXT="先计算L关于N的反射向量R，再计算R和V的角度" ID="ID_1102077831" CREATED="1750495008550" MODIFIED="1750495058346"/>
<node TEXT="计算反射向量" ID="ID_1941622114" CREATED="1750691300397" MODIFIED="1750691312775">
<node TEXT="\latex \mathbf{R} = 2\mathbf{N}(\mathbf{N}\cdot\mathbf{L}) - \mathbf{L}" ID="ID_249472282" CREATED="1750691313325" MODIFIED="1750691918610">
<font SIZE="24"/>
</node>
</node>
<node TEXT="镜面反射方程" ID="ID_1719932996" CREATED="1750691316987" MODIFIED="1750691927426">
<node TEXT="\latex $I_{s}=I_{L}\left (\frac{\mathbf{R} \cdot \mathbf{V}}{\left | \mathbf{R}\right |\left | \mathbf{V}\right |}  \right )^{s}$" ID="ID_1535779946" CREATED="1750691392779" MODIFIED="1750691903080">
<font SIZE="24"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="为了计算单个点的光照，我们将计算每个光源贡献的光，并将它们加在一起，得到一个代表该点接收到的光的总量的数字。然后用这个总量乘物体表面在该点的颜色，从而获得该点的着色颜色，用以代表该点接收了多少光。" ID="ID_1064150118" CREATED="1750492429756" MODIFIED="1750492471342"/>
</node>
<node TEXT="阴影" POSITION="top_or_left" ID="ID_1651239165" CREATED="1750495360957" MODIFIED="1750495364636">
<node TEXT="如果要渲染的点和光源之间有物体遮挡，则不要添加来自该光源的光照" ID="ID_1709119720" CREATED="1750495415200" MODIFIED="1750495424383"/>
</node>
<node TEXT="优化" ID="ID_1288414344" CREATED="1750513350207" MODIFIED="1750513352912">
<node TEXT="缓存不会变化的值，避免重复计算" POSITION="bottom_or_right" ID="ID_575507196" CREATED="1750513311012" MODIFIED="1750513333723"/>
<node TEXT="利用多线程，创建一组“任务”，每个任务负责对画布的一部分（一个矩形区域，小到一个像素）进行光线追踪，并在它们可用时将它们分配给在物理核心上运行的工作线程" POSITION="bottom_or_right" ID="ID_647079878" CREATED="1750513252140" MODIFIED="1750513279719"/>
</node>
<node TEXT="TODO" ID="ID_1065776342" CREATED="1750513478286" MODIFIED="1750513479421">
<node TEXT="将相机放置在场景中的任何位置、性能优化、球体以外的图元、使用体素构造表示法对物体进行建模、支持透明表面和超采样" POSITION="bottom_or_right" ID="ID_827753437" CREATED="1750512048992" MODIFIED="1750512054485"/>
</node>
</node>
<node TEXT="光栅化" POSITION="bottom_or_right" ID="ID_634819322" CREATED="1750513464506" MODIFIED="1750513468963">
<edge COLOR="#007c00"/>
<node TEXT="绘制直线" ID="ID_689125971" CREATED="1750764165495" MODIFIED="1750764174739">
<node TEXT="直线方程" ID="ID_1341615430" CREATED="1750764364536" MODIFIED="1750764374066">
<node TEXT="\latex $p = p_{0} + t(p_{1} - P_{0})$" ID="ID_834553708" CREATED="1750764374286" MODIFIED="1750764437586">
<font SIZE="24"/>
</node>
<node TEXT="\latex $y=ax+b$" ID="ID_938954815" CREATED="1750764546529" MODIFIED="1750764561803">
<font SIZE="24"/>
</node>
</node>
<node TEXT="代码实现" ID="ID_161868930" CREATED="1750764578581" MODIFIED="1750764585247">
<node TEXT="第一版" FOLDED="true" ID="ID_1055691351" CREATED="1750764691105" MODIFIED="1750764696042">
<node TEXT="DrawLine(P0, P1, color) {&#xa;    a = (y1 - y0) / (x1 - x0)&#xa;    b = y0 - a * x0&#xa;    for x = x0 to x1 {&#xa;        y = a * x + b&#xa;        canvas.PutPixel(x, y, color)&#xa;    }&#xa;}" POSITION="bottom_or_right" ID="ID_483654019" CREATED="1750764585483" MODIFIED="1750764600421"/>
</node>
<node TEXT="第二版" FOLDED="true" ID="ID_975654346" CREATED="1750764699668" MODIFIED="1750764744510">
<node TEXT="DrawLine(P0, P1, color) {&#xa;    a = (y1 - y0) / (x1 - x0)&#xa;    y = y0&#xa;    for x = x0 to x1 {&#xa;        canvas.PutPixel(x, y, color)&#xa;        y = y + a&#xa;    }&#xa;}" ID="ID_935993460" CREATED="1750764717233" MODIFIED="1750764746143"/>
</node>
<node TEXT="第三版" FOLDED="true" ID="ID_59606696" CREATED="1750764817323" MODIFIED="1750764820493">
<node TEXT="DrawLine(P0, P1, color) {&#xa;    dx = x1 - x0&#xa;    dy = y1 - y0&#xa;    if abs(dx) &gt; abs(dy) {&#xa;        // 直线偏向水平情况&#xa;        // 确保 x0 &lt; x1&#xa;        if x0 &gt; x1 {&#xa;            swap(P0, P1)&#xa;        }&#xa;        a = dy / dx&#xa;        y = y0&#xa;        for x = x0 to x1 {&#xa;            canvas.PutPixel(x, y, color)&#xa;            y = y + a&#xa;        }&#xa;    } else {&#xa;        // 直线偏向垂直情况 &#xa;        // 确保 y0 &lt; y1&#xa;        if y0 &gt; y1 {&#xa;            swap(P0, P1)&#xa;        }&#xa;        a = dx / dy&#xa;        x = x0&#xa;        for y = y0 to y1 {&#xa;            canvas.PutPixel(x, y, color)&#xa;            x = x + a&#xa;        }&#xa;    }&#xa;}" ID="ID_450284008" CREATED="1750764820938" MODIFIED="1750764826856"/>
</node>
</node>
</node>
<node TEXT="绘制三角形" ID="ID_1176403069" CREATED="1750764861453" MODIFIED="1750764866129">
<node TEXT="将三角形是为水平线段的集合或者垂直线段的集合" FOLDED="true" ID="ID_904549666" CREATED="1750765199904" MODIFIED="1750765248075">
<node TEXT="水平" ID="ID_201314094" CREATED="1750765267681" MODIFIED="1750765271338">
<node TEXT="DrawFilledTriangle (P0, P1, P2, color) {&#xa;    ①// 对点进行排序，从而使 y0 &lt;= y1 &lt;= y2&#xa;    if y1 &lt; y0 { swap(P1, P0) }&#xa;    if y2 &lt; y0 { swap(P2, P0) }&#xa;    if y2 &lt; y1 { swap(P2, P1) }&#xa;    ②// 计算三角形各条边的x坐标&#xa;    x01 = Interpolate(y0, x0, y1, x1)&#xa;    x12 = Interpolate(y1, x1, y2, x2)&#xa;    x02 = Interpolate(y0, x0, y2, x2)&#xa;    ③// 拼合短边数组&#xa;    remove_last(x01)&#xa;    x012 = x01 + x12&#xa;    ④// 决定哪条是左侧边，哪条是右侧边&#xa;    m = floor(x012.length / 2)&#xa;    if x02[m] &lt; x012[m] {&#xa;        x_left = x02&#xa;        x_right = x012&#xa;    } else {&#xa;        x_left = x012&#xa;        x_right = x02&#xa;    }&#xa;    ⑤// 绘制水平直线段&#xa;    for y = y0 to y2 {&#xa;        for x = x_left[y - y0] to x_right[y - y0] {&#xa;            canvas.PutPixel(x, y, color)&#xa;        }&#xa;    }&#xa;}" LOCALIZED_STYLE_REF="default" POSITION="bottom_or_right" ID="ID_1723881136" CREATED="1750765627531" MODIFIED="1750778994124"/>
</node>
<node TEXT="垂直" ID="ID_1784593504" CREATED="1750765271549" MODIFIED="1750765274990"/>
</node>
</node>
<node TEXT="透视投影" ID="ID_1879319132" CREATED="1750766881682" MODIFIED="1750766885654">
<node TEXT="\latex 近平面 z = d，将p投影到视口上 $ {p}\&apos;$" ID="ID_454357824" CREATED="1750766886109" MODIFIED="1750769981403">
<font SIZE="12"/>
<node TEXT="\latex $ P&apos;_x = \frac{P_x \cdot d}{P_z} $" ID="ID_452102858" CREATED="1750769828191" MODIFIED="1750769846051">
<font SIZE="24"/>
</node>
<node TEXT="\latex $ P&apos;_y = \frac{P_y \cdot d}{P_z} $" ID="ID_386004426" CREATED="1750769358098" MODIFIED="1750769804214">
<font SIZE="22"/>
</node>
<node TEXT="\latex $ P&apos;_z = d" ID="ID_452408612" CREATED="1750769861334" MODIFIED="1750769875084">
<font SIZE="22"/>
</node>
</node>
<node TEXT="\latex 将 $ {p}\&apos;$ 转换到画布" ID="ID_1982906604" CREATED="1750769918382" MODIFIED="1750769967173">
<font SIZE="12"/>
<node TEXT="\latex $ C_x = \frac{P&apos;_x \cdot C_{\text{w}}}{V_{\text{w}}} $" ID="ID_946559336" CREATED="1750770415661" MODIFIED="1750770477446">
<font SIZE="22"/>
</node>
<node TEXT="\latex $ C_y = \frac{P&apos;_y \cdot C_{\text{h}}}{V_{\text{h}}} $" ID="ID_1203260408" CREATED="1750770433738" MODIFIED="1750770477450">
<font SIZE="22"/>
</node>
</node>
<node TEXT="如果3个点在空间中对齐，它们的投影将在视口上对齐。换句话说，直线总是被投影成直线。两点之间线段的投影就是两点投影之间的线段，三角形的投影是由其顶点的投影形成的三角形" ID="ID_206306617" CREATED="1750770231865" MODIFIED="1750770247353"/>
</node>
<node TEXT="场景的描述和渲染" ID="ID_1528593999" CREATED="1750773566100" MODIFIED="1750773577777">
<node TEXT="模型变换" ID="ID_1740894977" CREATED="1750774671471" MODIFIED="1750774922043">
<node TEXT="缩放" ID="ID_523078975" CREATED="1750774678071" MODIFIED="1750774682533"/>
<node TEXT="旋转" ID="ID_484518379" CREATED="1750774682862" MODIFIED="1750774687689"/>
<node TEXT="平移" ID="ID_425919220" CREATED="1750774688247" MODIFIED="1750774695710"/>
<node TEXT="应用变换的顺序很重要，平移必须是最后应用" ID="ID_110633869" CREATED="1750774695906" MODIFIED="1750774717247"/>
<node TEXT="在模型空间中完成变换，顶点从模型空间变到了世界空间" ID="ID_58284092" CREATED="1750774755548" MODIFIED="1750774842926"/>
</node>
<node TEXT="相机变换" ID="ID_1876360037" CREATED="1750774871414" MODIFIED="1750774917342">
<node TEXT="在固定的场景中旋转和平移相机与固定相机而旋转和平移场景是没有区别的。" ID="ID_1666470097" CREATED="1750774942084" MODIFIED="1750774946981"/>
<node TEXT="通过将相机固定在原点并指向z轴正方向，我们可以使用透视投影方程而无须任何修改。相机的坐标系称为相机空间（camera space）" ID="ID_1631026245" CREATED="1750774996295" MODIFIED="1750775085297"/>
<node TEXT="如果相机也附加了变换，包括平移和旋转。为了从相机的视野渲染场景，我们需要对场景的每个顶点应用相反的变换，先平移再旋转和缩放" ID="ID_972477224" CREATED="1750774978598" MODIFIED="1750775142313"/>
<node TEXT="通过相机变换，顶点从世界空间变到了相机空间，然后应用透视获得视口坐标，最后将视口坐标映射到画布坐标" ID="ID_1104874205" CREATED="1750775179737" MODIFIED="1750775284253"/>
</node>
</node>
<node TEXT="裁剪" FOLDED="true" ID="ID_1022935870" CREATED="1750859387805" MODIFIED="1750859397076">
<node TEXT="裁剪平面（clipping plane）将任何点分类为裁剪体（clipping volume）的内部（inside）或外部（outside）" ID="ID_1800773949" CREATED="1750859397353" MODIFIED="1750859520365"/>
<node TEXT="每个裁剪平面将空间分成两部分，我们称之为半空间（half-space）。内部半空间是平面前面的所有东西，外部半空间是它后面的所有东西" ID="ID_109442443" CREATED="1750859522762" MODIFIED="1750859527811"/>
<node TEXT="裁剪体的内部是每个裁剪平面定义的内部半空间的交集（intersection）" ID="ID_29479518" CREATED="1750859550430" MODIFIED="1750859555276"/>
<node TEXT="裁剪过程" ID="ID_851375661" CREATED="1750859610641" MODIFIED="1750859614335">
<node TEXT="首先，尝试一次性对整个物体进行分类。如果一个物体完全在裁剪体内部，则它被接受" ID="ID_1270307042" CREATED="1750859614542" MODIFIED="1750859638582">
<node TEXT="可以简单的使用包围球来计算" ID="ID_229319485" CREATED="1750860398860" MODIFIED="1750860410237"/>
<node TEXT="通过计算模型中所有顶点的坐标平均值来获取球体的球心，然后将半径定义为从球心到它最远的顶点的距离" ID="ID_459775250" CREATED="1750860417288" MODIFIED="1750860422198"/>
<node TEXT="将任意点代入平面方程就能得到该点到平面的有符号距离。特别是，我们可以计算从边界球的球心到平面的有符号距离d。所以如果d&gt;r，球体在平面的前面；如果d&lt;-r，则球体在平面的后面；否则|d| &lt; r，表示平面与球体相交" POSITION="bottom_or_right" ID="ID_760439265" CREATED="1750860453058" MODIFIED="1750860523127"/>
</node>
<node TEXT="如果一个物体不能被完全接受或丢弃，就对它的每个三角形进行独立的分类。如果三角形完全在裁剪体内部，它是被接受的；如果三角形完全在外部，则将其丢弃" ID="ID_155962490" CREATED="1750859657956" MODIFIED="1750859689156">
<node TEXT="查看三角形每个顶点到裁剪平面的有符号距离，以此来根据裁剪平面对三角形每个顶点进行分类。如果距离为0或为正值，则顶点在裁剪平面的前面；否则，它在后面" ID="ID_19829532" CREATED="1750860601695" MODIFIED="1750860607102">
<node TEXT="3个顶点在裁剪平面的前面。在这种情况下，整个三角形都在裁剪平面的前面，所以我们接受它，不需要进一步使用这个平面对它进行裁剪。" ID="ID_472426717" CREATED="1750860619646" MODIFIED="1750860660581"/>
<node TEXT="3个顶点在裁剪平面的后面。在这种情况下，整个三角形都在裁剪平面的后面，所以我们丢弃它，不再需要任何进一步的裁剪" ID="ID_1528240526" CREATED="1750860624915" MODIFIED="1750860656917"/>
<node TEXT="1个顶点在裁剪平面的前面，丢掉整个三角形，添加一个新的三角形，其中两个顶点是原三角形和平面的交点" ID="ID_768653627" CREATED="1750860649005" MODIFIED="1750860748723"/>
<node TEXT="2个顶点在裁剪平面的前面，丢掉整个三角形，添加一个新的三角形，其中新的顶点是原三角形和平面的交点" ID="ID_1185899929" CREATED="1750860688962" MODIFIED="1750860816889"/>
</node>
<node TEXT="线段与平面的交点" ID="ID_1797447335" CREATED="1750861766608" MODIFIED="1750861775480">
<node TEXT="将平面方程与直线方程联合求解" ID="ID_1705858888" CREATED="1750861806563" MODIFIED="1750861843488"/>
<node TEXT="\latex $ P = A + t(B-A) $" ID="ID_179481118" CREATED="1750861849017" MODIFIED="1750861880367">
<font SIZE="18"/>
</node>
<node TEXT="\latex \mathbf{N} \cdot P + D = 0" ID="ID_953769624" CREATED="1750859771105" MODIFIED="1750859962627">
<font SIZE="18"/>
</node>
<node TEXT="\latex $ t = \frac{-D - \boldsymbol{N} \cdot A}{\boldsymbol{N} \cdot (B - A)} &#xa; $" ID="ID_1776442111" CREATED="1750861914638" MODIFIED="1750862041636">
<font SIZE="22"/>
</node>
<node TEXT="\latex $ 交点Q = A + t(B-A) $" ID="ID_1840126067" CREATED="1750862279673" MODIFIED="1750862334839">
<font SIZE="18"/>
</node>
</node>
</node>
<node TEXT="最后，对于每个既没有被接受也没有被丢弃的三角形，我们需要裁剪三角形本身。将原来的三角形移除，并添加一个或两个新的三角形来覆盖裁剪体内部的三角形部分" ID="ID_180737697" CREATED="1750859705814" MODIFIED="1750859711093"/>
</node>
<node TEXT="定义裁剪平面" FOLDED="true" ID="ID_1630220330" CREATED="1750859726526" MODIFIED="1750859731990">
<node TEXT="FOV=45度" ID="ID_1230253838" CREATED="1750860127562" MODIFIED="1750860134986"/>
<node TEXT="近平面" ID="ID_1618725787" CREATED="1750860136513" MODIFIED="1750860192813">
<node TEXT="\latex $  \[&#xa;(0, 0, 1) \cdot P - d = 0&#xa;\] $" ID="ID_569479087" CREATED="1750860275820" MODIFIED="1750860362484">
<font SIZE="18"/>
</node>
</node>
<node TEXT="左平面" ID="ID_1147507259" CREATED="1750860193194" MODIFIED="1750860204306">
<node TEXT="\latex $  \[&#xa;\left( \frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}} \right) \cdot P = 0&#xa;\] $" ID="ID_1946951789" CREATED="1750860275820" MODIFIED="1750860362488">
<font SIZE="18"/>
</node>
</node>
<node TEXT="右平面" ID="ID_655128349" CREATED="1750860204566" MODIFIED="1750860209740">
<node TEXT="\latex $ \[&#xa;\left( \frac{-1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}} \right) \cdot P = 0&#xa;\] $" ID="ID_1402108799" CREATED="1750860275820" MODIFIED="1750860362487">
<font SIZE="18"/>
</node>
</node>
<node TEXT="上平面" ID="ID_885907889" CREATED="1750860209900" MODIFIED="1750860218357">
<node TEXT="\latex $  \[&#xa;\left( 0, \frac{-1}{\sqrt{2}}, \frac{1}{\sqrt{2}} \right) \cdot P = 0&#xa;\] $" ID="ID_1594920092" CREATED="1750860275820" MODIFIED="1750860362487">
<font SIZE="18"/>
</node>
</node>
<node TEXT="下平面" ID="ID_447400418" CREATED="1750860218522" MODIFIED="1750860222514">
<node TEXT="\latex $  \[&#xa;\left( 0, \frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}} \right) \cdot P = 0&#xa;\] $" ID="ID_208495604" CREATED="1750860275820" MODIFIED="1750860362486">
<font SIZE="18"/>
</node>
</node>
</node>
<node TEXT="平面方程" ID="ID_51300858" CREATED="1750859764799" MODIFIED="1750859770813">
<node TEXT="一般方程" ID="ID_1903308899" CREATED="1750859831676" MODIFIED="1750859837395">
<node TEXT="Ax + By +Cz +D = 0" ID="ID_651025905" CREATED="1750859837666" MODIFIED="1750859868765"/>
<node TEXT="P = (x, y, z)，当且仅当P在平面上时，才满足这个方程" ID="ID_1834402121" CREATED="1750859877746" MODIFIED="1750859907776"/>
<node TEXT="因此可以将方程重写，N= (A, B, C)" ID="ID_1977337822" CREATED="1750859924330" MODIFIED="1750859953448"/>
<node TEXT="\latex \mathbf{N} \cdot P + D = 0" POSITION="bottom_or_right" ID="ID_802078731" CREATED="1750859771105" MODIFIED="1750859962627">
<font SIZE="18"/>
</node>
<node TEXT="N是法线，D是原点到平面的距离" POSITION="bottom_or_right" ID="ID_1648786877" CREATED="1750860032232" MODIFIED="1750860060366"/>
</node>
</node>
<node TEXT="TODO" ID="ID_909080195" CREATED="1750862419942" MODIFIED="1750862421141">
<node TEXT="如果你可以将场景划分为“房间”，那么你可以制作一张表，列出从任何给定的房间可以看到的房间。当稍后渲染场景时，你只需要弄清楚相机所在的房间，然后你就可以安全地忽略所有标记为“不可见”的房间，从而在渲染过程中节省大量资源。当然，代价就是这样需要更多的预处理时间和更加固定不变的场景。如果你对这个主题感兴趣，请阅读关于BSP分区和门户系统（portal  system）的内容。" ID="ID_1862512021" CREATED="1750862421690" MODIFIED="1750862430498"/>
</node>
</node>
<node TEXT="背面剔除" ID="ID_1437682341" CREATED="1751201918817" MODIFIED="1751201981803">
<node TEXT="如果视线向量和这个箭头（实际上是三角形的法向量）形成的角度小于90°，则三角形是正面的；否则，它是背面的" ID="ID_1877190756" CREATED="1751201977734" MODIFIED="1751201983482">
<node TEXT="\latex \boldsymbol{N} \cdot \boldsymbol{V} &lt;= 0 背面" ID="ID_660503699" CREATED="1751202136867" MODIFIED="1751202188206">
<font SIZE="14"/>
</node>
<node TEXT="\latex \boldsymbol{N} \cdot \boldsymbol{V} &gt; 0 正面" ID="ID_1350176799" CREATED="1751202163372" MODIFIED="1751202192993">
<font SIZE="14"/>
</node>
<node TEXT="N取决于三角形顶点的顺序，顶点顺序是顺时针还是逆时针决定了法线方向" ID="ID_815722767" CREATED="1751202273101" MODIFIED="1751202320042"/>
</node>
<node TEXT="需要对我们的3D模型施加一个限制条件：它们必须是封闭的（closed）。封闭物体有一个有趣的特性，即无论模型或相机的方位如何，物体正向表面的集合完全覆盖背向表面的集合。这意味着我们根本不需要绘制背向的表面，可以节省宝贵的计算时间。" ID="ID_1596382126" CREATED="1751201997614" MODIFIED="1751202061232"/>
</node>
<node TEXT="深度缓冲" ID="ID_1147780276" CREATED="1751201926593" MODIFIED="1751201931254">
<node TEXT="不能直接使用z值，不是线性插值的，要用1/z" ID="ID_1224911272" CREATED="1751207370221" MODIFIED="1751207387527"/>
</node>
<node TEXT="着色" ID="ID_1479048851" CREATED="1751207401167" MODIFIED="1751207404463"/>
</node>
<node TEXT="opengl" POSITION="bottom_or_right" ID="ID_730432956" CREATED="1751070634575" MODIFIED="1751070640954">
<edge COLOR="#007c7c"/>
<node TEXT="理论" ID="ID_1023323253" CREATED="1751072118400" MODIFIED="1751072122925">
<node TEXT="渲染管线" FOLDED="true" ID="ID_1683980452" CREATED="1751074921578" MODIFIED="1751074925257">
<node TEXT="应用程序" ID="ID_336204190" CREATED="1751074926398" MODIFIED="1751075123366"/>
<node TEXT="顶点着色器" POSITION="bottom_or_right" ID="ID_293358386" CREATED="1751074853651" MODIFIED="1751074884847"/>
<node TEXT="曲面细分着色器" POSITION="bottom_or_right" ID="ID_871553115" CREATED="1751074890139" MODIFIED="1751074895240"/>
<node TEXT="几何着色器" POSITION="bottom_or_right" ID="ID_1892069326" CREATED="1751074895474" MODIFIED="1751074906978"/>
<node TEXT="光栅化" POSITION="bottom_or_right" ID="ID_730764693" CREATED="1751075084157" MODIFIED="1751075090517">
<node TEXT="光栅化不仅可以对像素插值。任何顶点着色器输出的变量和片段着色器的输入变量都可以基于对应的像素进行插值。我们将会使用该功能生成平滑的颜色渐变，实现真实光照以及许多其他效果" ID="ID_1181098294" CREATED="1751075090873" MODIFIED="1751075096408"/>
</node>
<node TEXT="片段着色器" POSITION="bottom_or_right" ID="ID_1092614211" CREATED="1751074859627" MODIFIED="1751074889070"/>
<node TEXT="像素操作" POSITION="bottom_or_right" ID="ID_1293592779" CREATED="1751075109377" MODIFIED="1751075112776">
<node TEXT="隐藏面消除" ID="ID_1664981622" CREATED="1751075331926" MODIFIED="1751075339087"/>
</node>
</node>
</node>
<node TEXT="API" ID="ID_1896332690" CREATED="1751072123219" MODIFIED="1751072128078">
<node TEXT="Shader相关" FOLDED="true" ID="ID_1671831043" CREATED="1751073974513" MODIFIED="1751073980502">
<node TEXT="使用流程" ID="ID_77828901" CREATED="1751075589874" MODIFIED="1751075600880">
<node TEXT="glCreateShader" POSITION="bottom_or_right" ID="ID_1325747072" CREATED="1751073980994" MODIFIED="1751073989971">
<node TEXT="GL_VERTEX_SHADER：顶点着色器（处理顶点位置、颜色等）" ID="ID_616267138" CREATED="1751073996868" MODIFIED="1751074106075"/>
<node TEXT="GL_FRAGMENT_SHADER：片段着色器（处理像素颜色输出）" ID="ID_656926080" CREATED="1751074004848" MODIFIED="1751074114498"/>
<node TEXT="GL_GEOMETRY_SHADER：几何着色器（可选，处理图元几何变换）" ID="ID_1167489765" CREATED="1751074120568" MODIFIED="1751074121610"/>
<node TEXT="返回新创建的着色器对象 ID（非 0 值），若失败返回 0" ID="ID_866131234" CREATED="1751074133065" MODIFIED="1751074138940"/>
<node TEXT="着色器对象创建后需通过glShaderSource填充代码，最终由glDeleteShader释放" ID="ID_746164092" CREATED="1751074155132" MODIFIED="1751074156115"/>
</node>
<node TEXT="glShaderSource" POSITION="bottom_or_right" ID="ID_1331004860" CREATED="1751074010763" MODIFIED="1751074012013">
<node TEXT="shader：目标着色器对象 ID。" ID="ID_1641335665" CREATED="1751074162531" MODIFIED="1751074163635"/>
<node TEXT="count：源代码字符串的数量" ID="ID_472515183" CREATED="1751074168131" MODIFIED="1751074169004"/>
<node TEXT="string：指向着色器源代码字符串的指针数组" ID="ID_844963354" CREATED="1751074174490" MODIFIED="1751074175371"/>
<node TEXT="length：可选参数，指定每个字符串的长度（若为NULL，则字符串需以\0结尾）。" ID="ID_1378751737" CREATED="1751074181930" MODIFIED="1751074182859"/>
<node TEXT="多次调用会覆盖之前的源代码，需在glCompileShader前调用。" ID="ID_844899208" CREATED="1751074199309" MODIFIED="1751074200220"/>
</node>
<node TEXT="glCompileShader" POSITION="bottom_or_right" ID="ID_366957610" CREATED="1751074015226" MODIFIED="1751074016084">
<node TEXT="编译指定的着色器对象。" ID="ID_1927640344" CREATED="1751074205817" MODIFIED="1751074206836"/>
<node TEXT="可能发生编译错误" ID="ID_775994373" CREATED="1751074381112" MODIFIED="1751074390261">
<node TEXT="编译错误通常源于语法错误（如变量未声明、类型不匹配）或 GLSL 版本不兼容。" ID="ID_1156043307" CREATED="1751074390518" MODIFIED="1751074391640"/>
</node>
</node>
<node TEXT="glCreateProgram" POSITION="bottom_or_right" ID="ID_25450444" CREATED="1751074020481" MODIFIED="1751074021395">
<node TEXT="创建一个新的着色器程序对象，并返回其标识符" ID="ID_1664835967" CREATED="1751074240074" MODIFIED="1751074241019"/>
<node TEXT="返回新程序对象 ID（非 0 值），失败返回 0" ID="ID_896843608" CREATED="1751074248694" MODIFIED="1751074254281"/>
<node TEXT="程序对象用于链接着色器，最终通过glDeleteProgram释放" ID="ID_834915246" CREATED="1751074262689" MODIFIED="1751074267848"/>
</node>
<node TEXT="glAttachShader" POSITION="bottom_or_right" ID="ID_501928465" CREATED="1751074024396" MODIFIED="1751074025285">
<node TEXT="program：目标程序对象 ID" ID="ID_1592155759" CREATED="1751074274814" MODIFIED="1751074280280"/>
<node TEXT="shader：待附加的着色器对象 ID。" ID="ID_174624714" CREATED="1751074284047" MODIFIED="1751074289929"/>
<node TEXT="将着色器对象附加到程序对象上" POSITION="bottom_or_right" ID="ID_1597754458" CREATED="1751074268223" MODIFIED="1751074269178"/>
<node TEXT="附加后着色器仍可被修改，但需重新编译后链接程序才会生效" POSITION="bottom_or_right" ID="ID_1788682239" CREATED="1751074303820" MODIFIED="1751074304899"/>
</node>
<node TEXT="glLinkProgram" POSITION="bottom_or_right" ID="ID_182427398" CREATED="1751074028709" MODIFIED="1751074029644">
<node TEXT="链接程序对象中的所有着色器，生成可执行的着色器程序。" ID="ID_929055216" CREATED="1751074309835" MODIFIED="1751074310675"/>
<node TEXT="可能会发生链接错误" ID="ID_612283513" CREATED="1751074326698" MODIFIED="1751074337333">
<node TEXT="变量未在着色器间正确声明（如顶点着色器输出变量未在片段着色器中接收）。" ID="ID_182922149" CREATED="1751074358607" MODIFIED="1751074361411"/>
<node TEXT="重复定义同名变量或函数。" ID="ID_830208789" CREATED="1751074365654" MODIFIED="1751074376949"/>
</node>
</node>
<node TEXT="glUseProgram" POSITION="bottom_or_right" ID="ID_1006073835" CREATED="1751074480581" MODIFIED="1751074481692">
<node TEXT="program: 着色器程序对象 ID" ID="ID_1889332170" CREATED="1751074524102" MODIFIED="1751074543702"/>
<node TEXT="将指定的着色器程序对象设置为当前渲染状态的一部分。一旦激活，后续的所有绘图命令（如 glDrawArrays、glDrawElements）都会使用这个程序对象中的着色器来处理顶点和片段数据" ID="ID_1194968348" CREATED="1751074619231" MODIFIED="1751074619907"/>
<node TEXT="频繁切换着色器程序（glUseProgram 调用）会引入一定开销，因为 GPU 需要重新配置渲染状态。在实际应用中，应尽量批量处理使用相同着色器的绘制命令，减少状态切换次数。" ID="ID_678362324" CREATED="1751074595266" MODIFIED="1751074596593"/>
</node>
</node>
<node TEXT="向shader传递数据" POSITION="bottom_or_right" ID="ID_1459192719" CREATED="1751075574100" MODIFIED="1751075588516">
<node TEXT="glGetUniformLocation" ID="ID_46052873" CREATED="1751075622011" MODIFIED="1751075629350">
<node TEXT="在已编译链接的着色器程序中查找名为samp的 uniform 变量，并返回其位置索引。" ID="ID_1789443633" CREATED="1751108289172" MODIFIED="1751108296372"/>
<node TEXT="Uniform 变量在着色器中是全局且只读的，OpenGL 通过位置索引而非名称来快速访问它们。此函数建立了从名称到索引的映射。" ID="ID_1816390365" CREATED="1751108541234" MODIFIED="1751108543136"/>
<node TEXT="初始化阶段查询所有需要的 uniform 变量位置，避免重复查询。" ID="ID_694218050" CREATED="1751108552854" MODIFIED="1751108553944"/>
<node TEXT="调试时检查变量是否正确链接（若返回-1，可能是变量名拼写错误或未被使用）" ID="ID_317665084" CREATED="1751108563906" MODIFIED="1751108564792"/>
<node TEXT="program：着色器程序 ID（由glCreateProgram生成）" ID="ID_1211857998" CREATED="1751108495355" MODIFIED="1751108505165"/>
<node TEXT="name：uniform 变量名" ID="ID_1525267156" CREATED="1751108507187" MODIFIED="1751108511234"/>
<node TEXT="成功返回非负整数，失败返回-1" ID="ID_765479561" CREATED="1751108515504" MODIFIED="1751108527983"/>
</node>
<node TEXT="glProgramUniform1f" ID="ID_552268787" CREATED="1751075630581" MODIFIED="1751075631615"/>
<node TEXT="glUniform1i" ID="ID_1568492559" CREATED="1751108331747" MODIFIED="1751108332843">
<node TEXT="将指定位置的 uniform 变量设置为整数值。" ID="ID_1124856073" CREATED="1751108348739" MODIFIED="1751108576395"/>
<node TEXT="在纹理操作中，v0通常对应纹理单元编号（如0对应GL_TEXTURE0）。此函数告诉着色器：“使用编号为v0的纹理单元来采样该 uniform 对应的纹理”。" ID="ID_1313093892" CREATED="1751108623035" MODIFIED="1751108624241"/>
<node TEXT="location：由glGetUniformLocation返回的变量位置。" ID="ID_1089681468" CREATED="1751108593273" MODIFIED="1751108593273"/>
<node TEXT="v0：要设置的整数值。" ID="ID_690787052" CREATED="1751108593273" MODIFIED="1751108593273"/>
</node>
<node TEXT="uniform缓冲对象(UBO)" ID="ID_1495327880" CREATED="1751183098297" MODIFIED="1751183126784">
<node TEXT="可以将着⾊器中的多个uniform组合在⼀起，并⼀次将它们都发送出去。对于具有许多uniform的着⾊器程序，这样做通常会⽐单独设置每个uniform值更加有效" ID="ID_1393390107" CREATED="1751183134672" MODIFIED="1751183169662"/>
<node TEXT="使用 uniform缓冲对象，可以将 uniform分成多个组。例如，可以有用于每帧更新一次的 uniform，以及每个对象更新一次的 uniform。每帧的视图投影变化不会超过一次，然而每个 actor 都会有一个不同的世界变换矩阵。这样，可以在帧的开头只在一次函数调用中更新所有针对此帧的uniform。同样，也可以针对每个对象分别更新所有针对此对象的 uniform。要实现这一点，必须更改在着色器中声明 uniform的方式，以及在C++代码中镜像该数据的方式" ID="ID_1500856441" CREATED="1751183226857" MODIFIED="1751183229075"/>
</node>
</node>
</node>
<node TEXT="顶点相关" FOLDED="true" ID="ID_750711262" CREATED="1751074725278" MODIFIED="1751074736514">
<node TEXT="glGenVertexArrays" ID="ID_615654439" CREATED="1751074741160" MODIFIED="1751074751608">
<node TEXT="n：需要生成的 VAO 数量" ID="ID_375008396" CREATED="1751091736310" MODIFIED="1751091738167"/>
<node TEXT="arrays：存储生成的 VAO 标识符的数组" ID="ID_463943570" CREATED="1751091743572" MODIFIED="1751091744933"/>
<node TEXT="作用：VAO 是一个对象，存储了顶点数据的配置信息，包括顶点属性的格式和来源。" ID="ID_1302355276" CREATED="1751091759677" MODIFIED="1751091766709"/>
</node>
<node TEXT="glBindVertexArray" ID="ID_1874880955" CREATED="1751074754359" MODIFIED="1751092768947">
<node TEXT="array：VAO 对象的标识符（由 glGenVertexArrays 生成）。传入 0 则解绑当前 VAO，恢复到默认状态（不推荐在现代 OpenGL 中使用，因为默认状态缺少必要的顶点属性配置）。" ID="ID_719741214" CREATED="1751092381940" MODIFIED="1751092385304"/>
<node TEXT="作用：将指定的VAO标记为“活跃”，这样生成的缓冲区就会和这个VAO相关联" ID="ID_1742887025" CREATED="1751092414763" MODIFIED="1751092772928"/>
<node TEXT="绑定不同的 VAO 可以立即切换整个顶点数据配置，无需重新设置每个属性" ID="ID_1561783441" CREATED="1751093085810" MODIFIED="1751093087433"/>
</node>
<node TEXT="glGenBuffers" ID="ID_516062509" CREATED="1751091781234" MODIFIED="1751091782414">
<node TEXT="n：需要生成的 VBO 数量" ID="ID_155337928" CREATED="1751091794040" MODIFIED="1751091801118"/>
<node TEXT="buffers：存储生成的 VBO 标识符的数组" ID="ID_1074590620" CREATED="1751091805849" MODIFIED="1751091807086"/>
<node TEXT="作用：VBO 用于存储顶点数据 (如位置、颜色、法线等)" ID="ID_1169274740" CREATED="1751091812992" MODIFIED="1751091814053"/>
</node>
<node TEXT="glBindBuffer" ID="ID_329153367" CREATED="1751091846777" MODIFIED="1751091847972">
<node TEXT="target：缓冲目标类型，常用值：" ID="ID_1860043619" CREATED="1751091853822" MODIFIED="1751091857429">
<node TEXT="GL_ARRAY_BUFFER：顶点属性数据" ID="ID_883891352" CREATED="1751091862818" MODIFIED="1751091866572"/>
<node TEXT="GL_ELEMENT_ARRAY_BUFFER：索引数据" ID="ID_532179694" CREATED="1751091871615" MODIFIED="1751091872612"/>
</node>
<node TEXT="buffer：要绑定的缓冲对象标识符" ID="ID_1946722103" CREATED="1751091877026" MODIFIED="1751091877952"/>
<node TEXT="作用：将缓冲对象设置为当前活动对象，后续操作将影响该对象" ID="ID_1700694094" CREATED="1751092707773" MODIFIED="1751092800910"/>
</node>
<node TEXT="glBuffData" ID="ID_1647500602" CREATED="1751091911588" MODIFIED="1751091941711">
<node TEXT="target：缓冲目标类型 (同glBindBuffer)" ID="ID_134673431" CREATED="1751092062177" MODIFIED="1751092083687" TEXT_WRITING_DIRECTION="LEFT_TO_RIGHT">
<font BOLD="false"/>
</node>
<node TEXT="size：数据大小 (字节)" ID="ID_15919962" CREATED="1751092062178" MODIFIED="1751092116767"/>
<node TEXT="data：指向数据的指针 (或NULL仅分配内存)" ID="ID_1801988889" CREATED="1751092123597" MODIFIED="1751092128848"/>
<node TEXT="usage：数据使用模式，常用值：" ID="ID_51635776" CREATED="1751092062216" MODIFIED="1751092135631">
<node TEXT="GL_STATIC_DRAW：数据不会或很少改变" ID="ID_291780857" CREATED="1751092062219" MODIFIED="1751092148543"/>
<node TEXT="GL_DYNAMIC_DRAW：数据会被频繁改变" ID="ID_1362335740" CREATED="1751092062220" MODIFIED="1751092154503"/>
<node TEXT="GL_STREAM_DRAW：数据每次绘制时都会改变" ID="ID_717345991" CREATED="1751092062220" MODIFIED="1751092158433"/>
</node>
<node TEXT="作用：为当前绑定的缓冲对象分配内存并填充数据" ID="ID_1951896589" CREATED="1751092734607" MODIFIED="1751092834982"/>
</node>
<node TEXT="glVertexAttribPointer" ID="ID_1941435266" CREATED="1751092188313" MODIFIED="1751092189295">
<node TEXT="index：顶点属性索引 (对应着色器中的layout(location = 0)等)" ID="ID_1681121084" CREATED="1751092248541" MODIFIED="1751092248541"/>
<node TEXT="size：每个属性的组件数量 (如位置为 3 个浮点数)" ID="ID_1802650276" CREATED="1751092248541" MODIFIED="1751092248541"/>
<node TEXT="type：数据类型 (如GL_FLOAT)" ID="ID_1306150223" CREATED="1751092248543" MODIFIED="1751092248543"/>
<node TEXT="normalized：是否归一化 (如将[0,255]的颜色转换为[0.0,1.0])" ID="ID_1873290764" CREATED="1751092248543" MODIFIED="1751092248543"/>
<node TEXT="stride：连续顶点属性之间的字节偏移" ID="ID_1880225052" CREATED="1751092248543" MODIFIED="1751092248543"/>
<node TEXT="pointer：当前缓冲中该属性的起始偏移量" ID="ID_612410887" CREATED="1751092248543" MODIFIED="1751092248543"/>
<node TEXT="作用：指定顶点属性的格式和位置" ID="ID_1429643571" CREATED="1751092860269" MODIFIED="1751092864381"/>
</node>
<node TEXT="glEnableVertexAttribArray" ID="ID_994737720" CREATED="1751092259063" MODIFIED="1751092261271">
<node TEXT="index：要启用的顶点属性索引" ID="ID_1429027682" CREATED="1751092267285" MODIFIED="1751092270295"/>
<node TEXT="作用：默认情况下，顶点属性是禁用的，必须显式启用才能使用" ID="ID_338157517" CREATED="1751092278789" MODIFIED="1751092882036"/>
</node>
<node TEXT="glDeleteBuffers" ID="ID_773528651" CREATED="1751169927082" MODIFIED="1751169935254"/>
<node TEXT="glDeleteVertexArrays" ID="ID_1335378823" CREATED="1751169940335" MODIFIED="1751169941686"/>
</node>
<node TEXT="绘制相关" ID="ID_1214515754" CREATED="1751074781482" MODIFIED="1751074787790">
<node TEXT="glViewport" POSITION="bottom_or_right" ID="ID_971245430" CREATED="1752289397539" MODIFIED="1752289421785">
<node TEXT="前两个参数设置窗口左下角的位置。第三个和第四个参数以像素为单位设置渲染窗口的宽度和高度" ID="ID_290629107" CREATED="1752289422651" MODIFIED="1752289442658"/>
<node TEXT="在幕后，OpenGL 使用通过`glViewport`指定的数据，将其处理的二维坐标转换为屏幕上的坐标。" ID="ID_1862847110" CREATED="1752289443107" MODIFIED="1752289443741"/>
</node>
<node TEXT="glClearColor" POSITION="bottom_or_right" ID="ID_1865845922" CREATED="1751072128350" MODIFIED="1751072135224">
<node TEXT="设置用来重置缓冲区时填充的颜色" ID="ID_1926162419" CREATED="1751072209899" MODIFIED="1751072223656"/>
</node>
<node TEXT="glClear" POSITION="bottom_or_right" ID="ID_1604578565" CREATED="1751072136294" MODIFIED="1751072142494">
<node TEXT="清除缓冲区" ID="ID_936178643" CREATED="1751072241997" MODIFIED="1751072248151"/>
<node TEXT="GL_COLOR_BUFFER_BIT" ID="ID_605134806" CREATED="1751072154982" MODIFIED="1751072163126">
<node TEXT="颜色缓冲区" ID="ID_63978620" CREATED="1751072178309" MODIFIED="1751072191290"/>
</node>
<node TEXT="GL_DEPTH_BUFFER_BIT" ID="ID_1447522704" CREATED="1751075674631" MODIFIED="1751075675622"/>
<node TEXT="GL_STENCIL_BUFFER_BIT" ID="ID_269338839" CREATED="1752289566654" MODIFIED="1752289567770"/>
</node>
<node TEXT="glPointSize" POSITION="bottom_or_right" ID="ID_841514183" CREATED="1751074788272" MODIFIED="1751074789316"/>
<node TEXT="glPolygonMode" POSITION="bottom_or_right" ID="ID_355735527" CREATED="1751075007669" MODIFIED="1751075009321"/>
<node TEXT="glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)" POSITION="bottom_or_right" ID="ID_672619900" CREATED="1751185084399" MODIFIED="1751185105784">
<node TEXT="打开颜色缓冲区混合，默认禁用" ID="ID_487781221" CREATED="1751185109196" MODIFIED="1751185129225"/>
<node TEXT="glEnable(GL_BLEND)" ID="ID_1897183807" CREATED="1751185133172" MODIFIED="1751185142081"/>
</node>
<node TEXT="glDrawArrays" POSITION="bottom_or_right" ID="ID_298941127" CREATED="1751073821104" MODIFIED="1751073822613">
<node TEXT="mode" ID="ID_949966341" CREATED="1751073834191" MODIFIED="1751073843649">
<node TEXT="GL_TRIANGLES" ID="ID_1933967887" CREATED="1751073845176" MODIFIED="1751073851692"/>
</node>
<node TEXT="first" ID="ID_578783056" CREATED="1751073859193" MODIFIED="1751073861989">
<node TEXT="从哪个顶点开始绘制" ID="ID_857471331" CREATED="1751073878114" MODIFIED="1751073886074"/>
</node>
<node TEXT="count" ID="ID_1277775101" CREATED="1751073864784" MODIFIED="1751073866800">
<node TEXT="总共要绘制的顶点数" ID="ID_1604767867" CREATED="1751073867691" MODIFIED="1751073876376"/>
</node>
</node>
<node TEXT="实例化渲染" POSITION="bottom_or_right" ID="ID_13324156" CREATED="1751096144112" MODIFIED="1751096162401">
<node TEXT="glDrawArraysInstanced" ID="ID_1047013009" CREATED="1751094797571" MODIFIED="1751094799645">
<node TEXT="mode：渲染图元类型（如 GL_TRIANGLES、GL_POINTS 等）。" ID="ID_1478355213" CREATED="1751096040519" MODIFIED="1751096040519"/>
<node TEXT="first：从顶点数组的第几个元素开始渲染。" ID="ID_1922037980" CREATED="1751096040519" MODIFIED="1751096040519"/>
<node TEXT="count：每个实例使用的顶点数量。" ID="ID_864335372" CREATED="1751096040521" MODIFIED="1751096040521"/>
<node TEXT="instancecount：要渲染的实例总数。" ID="ID_178790775" CREATED="1751096040521" MODIFIED="1751096040521"/>
<node TEXT="通过实例化渲染，可以高效处理游戏中的粒子效果、森林场景、城市建筑等需要大量重复模型的场景，显著提升渲染性能" ID="ID_609475196" CREATED="1751096127721" MODIFIED="1751096131390"/>
</node>
<node TEXT="glVertexAttribDivisor" ID="ID_228835722" CREATED="1751096162684" MODIFIED="1751096164517">
<node TEXT="index：顶点属性索引。" ID="ID_1760177647" CREATED="1751096249222" MODIFIED="1751096249222"/>
<node TEXT="divisor：" ID="ID_1223688156" CREATED="1751096249222" MODIFIED="1751096249222">
<node TEXT="0（默认值）：每个顶点更新一次。" POSITION="bottom_or_right" ID="ID_150836946" CREATED="1751096249223" MODIFIED="1751096249223"/>
<node TEXT="1：每个实例更新一次。" POSITION="bottom_or_right" ID="ID_1188609264" CREATED="1751096249223" MODIFIED="1751096249223"/>
<node TEXT="n：每 n 个实例更新一次。" POSITION="bottom_or_right" ID="ID_1470984582" CREATED="1751096249223" MODIFIED="1751096249223"/>
</node>
<node TEXT="设置属性的更新频率" ID="ID_1816375972" CREATED="1751096257939" MODIFIED="1751096258945"/>
</node>
<node TEXT="核心作用" ID="ID_189302290" CREATED="1751096183615" MODIFIED="1751096186906">
<node ID="ID_1372261123" CREATED="1751096187993" MODIFIED="1751096187993"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      减少函数调用开销：传统渲染方式需要为每个对象调用一次 glDrawArrays，而实例化渲染只需一次调用即可渲染多个对象。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_884597559" CREATED="1751096187993" MODIFIED="1751096187993"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      共享顶点数据：所有实例共享同一组顶点数据（存储在 VBO 中），仅通过 ** 实例化属性（Instanced Attributes）** 区分不同实例的变换、颜色等特性。
    </p>
  </body>
</html>
</richcontent>
<node TEXT="实例化属性与普通顶点属性的区别在于：" ID="ID_1111945863" CREATED="1751096221378" MODIFIED="1751096233122">
<node ID="ID_36657634" CREATED="1751096230409" MODIFIED="1751096230409"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      普通顶点属性：每个顶点更新一次（如位置、法线）。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1330150963" CREATED="1751096230410" MODIFIED="1751096230410"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      实例化属性：每个实例更新一次（如变换矩阵、颜色）
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node ID="ID_527716559" CREATED="1751096187996" MODIFIED="1751096187996"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      提高缓存利用率：GPU 可以更高效地利用顶点缓存，减少内存访问延迟
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="支持的图元类型" FOLDED="true" POSITION="bottom_or_right" ID="ID_390197041" CREATED="1751097957625" MODIFIED="1751097973863">
<node TEXT="GL_TRIANGLES" ID="ID_1234373526" CREATED="1751097974260" MODIFIED="1751097993203">
<node TEXT="顶点按 (0,1,2), (3,4,5), (6,7,8)... 分组绘制三角形" ID="ID_990615396" CREATED="1751098004667" MODIFIED="1751098007594"/>
<node TEXT="每三个顶点构成独立三角形" ID="ID_298899363" CREATED="1751098091800" MODIFIED="1751098092802"/>
</node>
<node TEXT="GL_TRIANGLE_STRIP" ID="ID_1614374753" CREATED="1751098016388" MODIFIED="1751098017315">
<node TEXT="顶点按 0,1,2（△1）、1,2,3（△2）、2,3,4（△3）... 规律生成三角形" ID="ID_1936939703" CREATED="1751098035313" MODIFIED="1751098048442"/>
<node TEXT="连续顶点构成三角形带（相邻三个顶点形成三角形）" ID="ID_1759499386" CREATED="1751098086174" MODIFIED="1751098087066"/>
</node>
<node TEXT="GL_TRIANGLE_FAN" ID="ID_211121418" CREATED="1751098059510" MODIFIED="1751098060356">
<node TEXT="顶点按 0,1,2（△1）、0,2,3（△2）、0,3,4（△3）... 规律生成三角形" ID="ID_718811828" CREATED="1751098069328" MODIFIED="1751098070611"/>
<node TEXT="以第一个顶点为公共顶点，其余顶点依次构成三角形" ID="ID_827296566" CREATED="1751098075205" MODIFIED="1751098076123"/>
</node>
<node TEXT="GL_LINES" ID="ID_257295226" CREATED="1751098124113" MODIFIED="1751098125114">
<node TEXT="顶点按 (0,1), (2,3), (4,5)... 分组绘制线段，剩余顶点忽略" ID="ID_1082140363" CREATED="1751098136138" MODIFIED="1751098137372"/>
<node TEXT="每对顶点构成独立线段" ID="ID_414134299" CREATED="1751098142897" MODIFIED="1751098143730"/>
</node>
<node TEXT="GL_LINE_STRIP " ID="ID_10731747" CREATED="1751098162326" MODIFIED="1751098204107">
<node TEXT="所有顶点依次连接成连续折线" ID="ID_303381175" CREATED="1751098168112" MODIFIED="1751098169162"/>
<node TEXT=" 顶点按 0→1→2→3→... 顺序连接，形成一条折线 " ID="ID_1556520022" CREATED="1751098173337" MODIFIED="1751098174187"/>
<node TEXT=" 轮廓线、路径动画、心电图曲线" ID="ID_1244601377" CREATED="1751098177525" MODIFIED="1751098178824"/>
</node>
<node TEXT="GL_LINE_LOOP " ID="ID_1409885328" CREATED="1751098162326" MODIFIED="1751098185620">
<node TEXT=" 顶点依次连接成闭合环（最后一点与第一点连接）     " ID="ID_1102605703" CREATED="1751098186618" MODIFIED="1751098189396"/>
<node TEXT="  顶点按 0→1→2→...→n→0 顺序连接，形成闭合折线       " ID="ID_289713482" CREATED="1751098192353" MODIFIED="1751098197098"/>
<node TEXT="环形进度条、雷达图边框" ID="ID_520435639" CREATED="1751098198205" MODIFIED="1751098199107"/>
</node>
</node>
</node>
<node TEXT="背面剔除" FOLDED="true" ID="ID_293465204" CREATED="1751098284165" MODIFIED="1751098343413">
<node TEXT="glEnable(GL_CULL_FACE)" ID="ID_1809938578" CREATED="1751098286392" MODIFIED="1751098294867">
<node TEXT="识别并“剔除”（不渲染）背向的三角形" ID="ID_1043359088" CREATED="1751098309393" MODIFIED="1751098310849"/>
<node TEXT="glFrontFace" POSITION="bottom_or_right" ID="ID_391893467" CREATED="1751098399109" MODIFIED="1751098400769">
<node TEXT="定义正面的顶点顺序" ID="ID_1675544580" CREATED="1751098492145" MODIFIED="1751098631169"/>
<node TEXT="GL_CCW（默认）、GL_CW" ID="ID_133344808" CREATED="1751098631577" MODIFIED="1751098830789"/>
</node>
<node TEXT="glCullFace" POSITION="bottom_or_right" ID="ID_953517298" CREATED="1751098423367" MODIFIED="1751098532606">
<node TEXT="指定要剔除的面" ID="ID_960668620" CREATED="1751098668787" MODIFIED="1751098681955"/>
<node TEXT="GL_BACK（默认）、GL_FRONT、GL_FRONT_AND_BACK" ID="ID_1832809345" CREATED="1751098682128" MODIFIED="1751098713602"/>
</node>
</node>
<node TEXT="glDisable(GL_CULL_FACE)" ID="ID_127802859" CREATED="1751098300136" MODIFIED="1751098301373">
<node TEXT="禁用背面剔除" ID="ID_1829115277" CREATED="1751098314560" MODIFIED="1751098315641"/>
</node>
<node TEXT="默认不启用" POSITION="bottom_or_right" ID="ID_687719951" CREATED="1751098348619" MODIFIED="1751098591749"/>
<node TEXT="启用默认情况下，只有三角形朝前时才会被渲染" POSITION="bottom_or_right" ID="ID_857074470" CREATED="1751098582958" MODIFIED="1751098587162"/>
<node TEXT="如果三角形的3个顶点从OpenGL摄像机中查看是以逆时针顺序排列的（基于它们在缓冲区中定义的顺序），则三角形被视为面向前方" POSITION="bottom_or_right" ID="ID_204544528" CREATED="1751098463738" MODIFIED="1751098464803"/>
<node TEXT="顶点沿顺时针方向排列的三角形（从OpenGL摄像机中看）是朝后的，不会被渲染" POSITION="bottom_or_right" ID="ID_1412876706" CREATED="1751098474383" MODIFIED="1751098475532"/>
</node>
<node TEXT="纹理贴图" FOLDED="true" ID="ID_282184012" CREATED="1751099103262" MODIFIED="1751099109104">
<node TEXT="显卡上有专门的纹理单元来处理纹理" POSITION="bottom_or_right" ID="ID_700694017" CREATED="1751107088472" MODIFIED="1751107118435">
<node TEXT="可用纹理单元的数量取决于图形卡上提供的数量" ID="ID_1882057969" CREATED="1751108024206" MODIFIED="1751108026137"/>
<node TEXT="OpenGL 4.5版要求每个着色器阶段至少有16个，所有阶段总共至少80个单元" ID="ID_1921116957" CREATED="1751108041697" MODIFIED="1751108042936"/>
</node>
<node TEXT="需要的原材料" FOLDED="true" ID="ID_246732317" CREATED="1751107154034" MODIFIED="1751107201504">
<node TEXT="用于保存纹理图像的纹理对象，GLuint类型" ID="ID_724308578" CREATED="1751107160381" MODIFIED="1751107410608">
<node TEXT="1，使用SOIL2实例化OpenGL纹理对象并从图像文件中读入数据" ID="ID_1916310052" CREATED="1751107281789" MODIFIED="1751107316608"/>
<node TEXT="2，调用glBindTexture()以使新创建的纹理对象处于激活状态" ID="ID_1857806127" CREATED="1751107291283" MODIFIED="1751107320334"/>
<node TEXT="3，使用glTexParameter()函数调整纹理设置。最终获得的结果就是现在可用的OpenGL纹理对象的整型ID。" ID="ID_1196458011" CREATED="1751107303151" MODIFIED="1751107323097"/>
</node>
<node TEXT="一个特殊的统一采样器变量，以便顶点着色器可以访问纹理；" POSITION="bottom_or_right" ID="ID_1259005808" CREATED="1751107160381" MODIFIED="1751107160381">
<node TEXT="layout (binding=0) uniform sampler2D samp;" POSITION="bottom_or_right" ID="ID_12572355" CREATED="1751107884672" MODIFIED="1751107886017">
<node TEXT="统一采样器变量" POSITION="bottom_or_right" ID="ID_1337503176" CREATED="1751107859012" MODIFIED="1751107862537"/>
<node TEXT="用于指示显卡上的纹理单元，从加载的纹理对象中提取或“采样”哪个纹素" POSITION="bottom_or_right" ID="ID_1785315376" CREATED="1751107873364" MODIFIED="1751107875929"/>
<node TEXT="layout (binding=0)”指定此采样器与纹理单元0相关联" POSITION="bottom_or_right" ID="ID_253782002" CREATED="1751107911178" MODIFIED="1751107915650"/>
</node>
<node TEXT="in vec2 tc;            // 纹理坐标&#xa;. . .&#xa;color = texture(samp, tc);" POSITION="bottom_or_right" ID="ID_592237906" CREATED="1751108102256" MODIFIED="1751108104103">
<node TEXT="使用从顶点着色器（通过光栅着色器）接收的插值纹理坐标来对纹理对象进行采样" ID="ID_191793197" CREATED="1751108118211" MODIFIED="1751108123200"/>
</node>
</node>
<node TEXT="用于保存纹理坐标的缓冲区；" POSITION="bottom_or_right" ID="ID_657446708" CREATED="1751107160381" MODIFIED="1751107160381"/>
<node TEXT="用于将纹理坐标传递给管线的顶点属性；" POSITION="bottom_or_right" ID="ID_548228478" CREATED="1751107160381" MODIFIED="1751107160381">
<node TEXT="为模型中的每个顶点指定纹理坐标，光栅化时会自动给顶点属性线性插值" ID="ID_632798787" CREATED="1751107454826" MODIFIED="1751107660338">
<node TEXT="纹理坐标是对纹理图像（通常是2D）中的像素的引用。纹理图像中的像素被称为纹素（Texel）" ID="ID_829047486" CREATED="1751107471371" MODIFIED="1751107474740"/>
<node TEXT="纹理坐标用于将3D模型上的点映射到纹理中的位置" ID="ID_1650509460" CREATED="1751107483269" MODIFIED="1751107484374"/>
<node TEXT="2D纹理图像被设定为矩形，左下角的位置坐标为(0,0)，右上角的位置坐标为(1,1)，纹理坐标应该在[0…1]范围内取值" ID="ID_629946225" CREATED="1751107545975" MODIFIED="1751107580360"/>
</node>
</node>
<node TEXT="显卡上的纹理单元。" POSITION="bottom_or_right" ID="ID_985494309" CREATED="1751107160381" MODIFIED="1751107160381"/>
</node>
<node TEXT="使用方法" ID="ID_704468718" CREATED="1751108991820" MODIFIED="1751108995918">
<node TEXT="1. 纹理数据加载并生成纹理对象" ID="ID_1750775690" CREATED="1751109361781" MODIFIED="1751109764176">
<node ID="ID_796966857" CREATED="1751109399071" MODIFIED="1751109781122"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      假设已使用库（如 stb_image<content ename="content"/>）加载图像：
    </p>
  </body>
</html>
</richcontent>
<node TEXT="int width, height, nrChannels;&#xa;unsigned char *data = stbi_load(&quot;texture.jpg&quot;, &amp;width, &amp;height, &amp;nrChannels, 0);" POSITION="bottom_or_right" ID="ID_1717373237" CREATED="1751109374298" MODIFIED="1751109377206"/>
<node TEXT="生成纹理对象" POSITION="bottom_or_right" ID="ID_1067712145" CREATED="1751108996652" MODIFIED="1751109797509">
<node TEXT="GLuint textureID;&#xa;glGenTextures(1, &amp;textureID);  // 生成1个纹理对象，返回ID" ID="ID_1807786213" CREATED="1751109223947" MODIFIED="1751109226413">
<node TEXT="glGenTextures 创建纹理对象并分配唯一 ID，类似 VBO、VAO 的创建方式" POSITION="bottom_or_right" ID="ID_739242364" CREATED="1751109256155" MODIFIED="1751109257110"/>
</node>
</node>
<node TEXT="上传数据到gpu" POSITION="bottom_or_right" ID="ID_1604019828" CREATED="1751109382445" MODIFIED="1751109391310">
<node TEXT="if (data) {&#xa;    // 上传图像数据到当前绑定的纹理对象，此时data也可以释放了&#xa;    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);&#xa;   &#xa;    // 生成多级渐远纹理（Mipmaps）&#xa;    glGenerateMipmap(GL_TEXTURE_2D);&#xa;} else {&#xa;    printf(&quot;Failed to load texture\n&quot;);&#xa;}&#xa;stbi_image_free(data);  // 释放CPU端图像数据" ID="ID_1118443944" CREATED="1751109391877" MODIFIED="1751184275201">
<node TEXT="glTexImage2D 参数说明：" FOLDED="true" POSITION="bottom_or_right" ID="ID_1622118056" CREATED="1751109412867" MODIFIED="1751109416790">
<node ID="ID_863742960" CREATED="1751109417584" MODIFIED="1751109417584"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      target：GL_TEXTURE_2D。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1198991360" CREATED="1751109417585" MODIFIED="1751109417585"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      level：Mipmap 级别（0 为基础级别）。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_732713786" CREATED="1751109417587" MODIFIED="1751109417587"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      internalFormat：纹理在 GPU 中的存储格式（如 GL_RGB、GL_RGBA）。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1924770004" CREATED="1751109417588" MODIFIED="1751109417588"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      width/height：纹理宽度 / 高度。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1653572452" CREATED="1751109417589" MODIFIED="1751109417589"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      format：输入数据的格式（需与 internalFormat 匹配）。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1326144007" CREATED="1751109417590" MODIFIED="1751109417590"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      type：输入数据的类型（如 GL_UNSIGNED_BYTE）。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_8854190" CREATED="1751109417591" MODIFIED="1751109417591"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      data：指向图像数据的指针。
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="使用SOIL2来加载图像" ID="ID_1767255513" CREATED="1751109805567" MODIFIED="1751109819537">
<node TEXT="GLuint SOIL_load_OGL_texture(&#xa;    const char *filename,         // 图像文件路径&#xa;    int force_channels,           // 强制通道数 (0=自动检测)&#xa;    GLuint reuse_texture_ID,      // 重用纹理ID (0=创建新ID)&#xa;    unsigned int flags            // 配置标志位&#xa;);" ID="ID_1577838699" CREATED="1751109884834" MODIFIED="1751109887389"/>
</node>
</node>
<node TEXT="2. 绑定纹理对象" ID="ID_406482402" CREATED="1751109231002" MODIFIED="1751109232013">
<node TEXT="glBindTexture(GL_TEXTURE_2D, textureID);  // 绑定为2D纹理" ID="ID_253781115" CREATED="1751109236475" MODIFIED="1751109238674"/>
<node TEXT="绑定后，后续对 GL_TEXTURE_2D 的操作将作用于该纹理对象" ID="ID_1749980812" CREATED="1751109264113" MODIFIED="1751109272107"/>
</node>
<node TEXT="3. 纹理参数设置" ID="ID_138326954" CREATED="1751109273939" MODIFIED="1751109278133">
<node TEXT="设置过滤模式" ID="ID_1239585364" CREATED="1751109284910" MODIFIED="1751109288397">
<node TEXT="// 缩小过滤（纹理比屏幕像素小时）&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);&#xa;&#xa;// 放大过滤（纹理比屏幕像素大时）&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);" ID="ID_1874029005" CREATED="1751109294661" MODIFIED="1751109297199">
<node TEXT="GL_NEAREST：最近邻采样（像素化效果）。" ID="ID_163335579" CREATED="1751109339358" MODIFIED="1751109339358"/>
<node TEXT="GL_LINEAR：线性插值（平滑效果）。" ID="ID_882390165" CREATED="1751109339358" MODIFIED="1751109339358"/>
</node>
</node>
<node TEXT="设置环绕模式" ID="ID_1497773579" CREATED="1751109301915" MODIFIED="1751109303022">
<node TEXT="// S/T 方向均使用重复环绕&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);" ID="ID_1528133934" CREATED="1751109303504" MODIFIED="1751109309286">
<node TEXT="GL_REPEAT：重复纹理。" ID="ID_1756350093" CREATED="1751109349488" MODIFIED="1751109349488"/>
<node TEXT="GL_CLAMP_TO_EDGE：边缘拉伸。" ID="ID_1388897560" CREATED="1751109349488" MODIFIED="1751109349488"/>
<node TEXT="GL_MIRRORED_REPEAT：镜像重复。" ID="ID_1715920367" CREATED="1751109349488" MODIFIED="1751109349488"/>
</node>
</node>
</node>
<node TEXT="5. 纹理单元绑定与渲染" ID="ID_1494006755" CREATED="1751109516440" MODIFIED="1751110050115">
<node TEXT="设置着色器中的采样器与纹理单元关联" ID="ID_1286087897" CREATED="1751109549012" MODIFIED="1751109549922">
<node TEXT="// 获取采样器的uniform位置&#xa;GLint texLocation = glGetUniformLocation(shaderProgram, &quot;texture1&quot;);&#xa;// 设置采样器使用纹理单元0&#xa;glUniform1i(texLocation, 0);  // 0对应GL_TEXTURE0" ID="ID_60944531" CREATED="1751109555593" MODIFIED="1751109559182"/>
</node>
<node TEXT="激活纹理单元并绑定纹理" ID="ID_637701922" CREATED="1751109529678" MODIFIED="1751109531961">
<node TEXT="// 激活纹理单元0&#xa;glActiveTexture(GL_TEXTURE0);&#xa;// 将纹理对象绑定到当前激活的单元&#xa;glBindTexture(GL_TEXTURE_2D, textureID);" ID="ID_1658259318" CREATED="1751109536912" MODIFIED="1751109541789">
<font BOLD="false"/>
</node>
<node TEXT="glActiveTexture" POSITION="bottom_or_right" ID="ID_1919264806" CREATED="1751108050567" MODIFIED="1751108051671">
<node TEXT="指定后续纹理操作将影响哪个纹理单元。" ID="ID_1257405961" CREATED="1751108656133" MODIFIED="1751108658760"/>
<node TEXT="texture：纹理单元标识符，如：" ID="ID_1346880879" CREATED="1751108678396" MODIFIED="1751108678396">
<node TEXT="GL_TEXTURE0：第一个纹理单元。" POSITION="bottom_or_right" ID="ID_674290660" CREATED="1751108678396" MODIFIED="1751108678396"/>
<node TEXT="GL_TEXTURE1：第二个纹理单元。" POSITION="bottom_or_right" ID="ID_1401515965" CREATED="1751108678396" MODIFIED="1751108678396"/>
<node TEXT="依此类推，最大支持数量为GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS（通常≥32）。" POSITION="bottom_or_right" ID="ID_332973011" CREATED="1751108678396" MODIFIED="1751108678396"/>
</node>
</node>
<node TEXT="glBindTexture" POSITION="bottom_or_right" ID="ID_793435534" CREATED="1751108720493" MODIFIED="1751108721898">
<node TEXT="将指定的纹理对象 (texture) 绑定到当前激活的纹理单元的target类型上。" ID="ID_963147157" CREATED="1751108916852" MODIFIED="1751108918082"/>
<node TEXT="纹理对象是存储纹理数据和参数的 OpenGL 对象。绑定操作将纹理对象与当前激活的纹理单元关联，后续对该target的操作（如设置过滤模式）将作用于该纹理对象。" ID="ID_1969476640" CREATED="1751108728048" MODIFIED="1751108793343"/>
<node TEXT="target：纹理类型，常见值：" ID="ID_472369537" CREATED="1751108745548" MODIFIED="1751108745548">
<node TEXT="GL_TEXTURE_2D：二维纹理（最常见）。" POSITION="bottom_or_right" ID="ID_384288206" CREATED="1751108745548" MODIFIED="1751108745548"/>
<node TEXT="GL_TEXTURE_CUBE_MAP：立方体贴图（如天空盒）。" POSITION="bottom_or_right" ID="ID_146606285" CREATED="1751108745548" MODIFIED="1751108745548"/>
<node TEXT="GL_TEXTURE_3D：三维纹理（如体数据）。" POSITION="bottom_or_right" ID="ID_1232822614" CREATED="1751108745548" MODIFIED="1751108745548"/>
</node>
<node TEXT="texture：纹理对象 ID（由glGenTextures生成）。" ID="ID_1093839109" CREATED="1751108745548" MODIFIED="1751108745548"/>
</node>
</node>
</node>
<node TEXT="6. 着色器配置" ID="ID_1760266217" CREATED="1751109457529" MODIFIED="1751110047922">
<node TEXT="顶点着色器" FOLDED="true" ID="ID_997875862" CREATED="1751109470139" MODIFIED="1751109487794">
<node TEXT="#version 330 core&#xa;layout (location = 0) in vec3 aPos;&#xa;layout (location = 1) in vec2 aTexCoord;&#xa;&#xa;out vec2 TexCoord;&#xa;&#xa;uniform mat4 model;&#xa;uniform mat4 view;&#xa;uniform mat4 projection;&#xa;&#xa;void main() {&#xa;    gl_Position = projection * view * model * vec4(aPos, 1.0);&#xa;    TexCoord = aTexCoord;  // 传递纹理坐标&#xa;}" ID="ID_1991113336" CREATED="1751109488077" MODIFIED="1751109491114"/>
</node>
<node TEXT="片段着色器" FOLDED="true" ID="ID_448795724" CREATED="1751109498916" MODIFIED="1751109503502">
<node TEXT="#version 330 core&#xa;in vec2 TexCoord;&#xa;out vec4 FragColor;&#xa;&#xa;uniform sampler2D texture1;  // 纹理采样器&#xa;&#xa;void main() {&#xa;    FragColor = texture(texture1, TexCoord);  // 从纹理采样颜色&#xa;}" ID="ID_1359332115" CREATED="1751109504119" MODIFIED="1751109505505"/>
</node>
</node>
</node>
<node TEXT="多级渐远纹理贴图" ID="ID_1374973511" CREATED="1751110101546" MODIFIED="1751110107484">
<node TEXT="它需要用各种分辨率创建纹理图像的不同版本。然后，OpenGL使用最适合正在处理的这一点处的分辨率的纹理图像进行纹理贴图。更好的是，可以为被贴图的区域使用最适合的分辨率的纹理图像的平均颜色" ID="ID_24966653" CREATED="1751110163946" MODIFIED="1751110166500"/>
<node TEXT="传统纹理渲染中，当物体远离摄像机时，若直接使用高分辨率纹理会导致两大问题" ID="ID_1926252896" CREATED="1751110766339" MODIFIED="1751110767577">
<node TEXT="采样走样（Aliasing）：纹理被缩小时，像素采样频率不足，导致锯齿、摩尔纹等失真现象。" ID="ID_371456259" CREATED="1751110785383" MODIFIED="1751110785383"/>
<node TEXT="性能浪费：远距离物体在屏幕上占据的像素少，使用高分辨率纹理会增加不必要的计算量（如纹理采样次数）。" ID="ID_994152902" CREATED="1751110785383" MODIFIED="1751110785383"/>
</node>
</node>
<node TEXT="各向异性过滤" ID="ID_14121319" CREATED="1751110601275" MODIFIED="1751110603808"/>
<node TEXT="最临近过滤" ID="ID_1550214602" CREATED="1751184140008" MODIFIED="1751184147188"/>
<node TEXT="双线性过滤" ID="ID_973578067" CREATED="1751184147378" MODIFIED="1751184152682"/>
<node TEXT="TODO" ID="ID_799979864" CREATED="1751110948701" MODIFIED="1751110970004">
<node TEXT="使用纹理单元来存储“高度图”以生成地形，以及存储“阴影贴图”以有效地为场景添加阴影" ID="ID_1207361849" CREATED="1751110973267" MODIFIED="1751110973267"/>
<node TEXT="着色器还可以向纹理写入数据，允许着色器修改纹理图像，甚至将一个纹理的一部分复制到另一个纹理的某个部分" ID="ID_1271706941" CREATED="1751110984581" MODIFIED="1751110985688"/>
<node TEXT="多级渐远纹理贴图和各向异性过滤不是减少纹理中的叠影伪影的唯一工具。例如，全屏抗锯齿（Full-scene anti-aliasing，FSAA）和其他超采样方法也可以改善3D场景中纹理的外观。虽然不是OpenGL核心的一部分，但它们通过OpenGL的扩展机制[OE16]在许多显卡上得到支持。" ID="ID_1986418809" CREATED="1751110997816" MODIFIED="1751110999147"/>
<node TEXT="还有一种用于配置和管理纹理和采样器的替代机制。OpenGL 3.3版引入了采样器对象（有时称为“采样器状态”——不要与采样器变量混淆），可用于保存一组独立于实际纹理对象的纹理设置。采样器对象附加到纹理单元，可以方便有效地更改纹理设置。" ID="ID_1935496148" CREATED="1751111014038" MODIFIED="1751111015553"/>
</node>
<node TEXT="透视变形" FOLDED="true" ID="ID_571839500" CREATED="1751110268753" MODIFIED="1751110578695">
<node TEXT="当纹理坐标从顶点着色器传递到片段着色器时，它们通过光栅着色器并被插值，这是自动线性插值的结果，总是在顶点属性上执行，然而，在纹理坐标的情况下，线性插值可能导致具有透视投影的3D场景中的可以察觉的失真" ID="ID_1453563024" CREATED="1751110281594" MODIFIED="1751110300289"/>
<node TEXT="默认情况下，OpenGL在光栅化期间会应用透视校正算法" ID="ID_321277839" CREATED="1751110323534" MODIFIED="1751110578695"/>
<node TEXT="可以通过在包含纹理坐标的顶点属性的声明中添加关键字“noperspective”来禁用OpenGL的透视校正。必须在顶点着色器和片段着色器中都这样添加" ID="ID_727275684" CREATED="1751110344772" MODIFIED="1751110346461">
<node TEXT="顶点着色器：noperspective out vec2 texCoord;" ID="ID_966137401" CREATED="1751110356562" MODIFIED="1751110376576"/>
<node TEXT="片段着色器：noperspective in vec2 texCoord;" ID="ID_1195984316" CREATED="1751110351410" MODIFIED="1751110381358"/>
</node>
</node>
</node>
<node TEXT="光照" FOLDED="true" ID="ID_1628914802" CREATED="1751111456044" MODIFIED="1751111461717">
<node TEXT="光照的影响" FOLDED="true" POSITION="bottom_or_right" ID="ID_1249244803" CREATED="1751111605591" MODIFIED="1751111648388">
<node TEXT="光源类型及其环境、漫反射和镜面反射特性；" ID="ID_1781206296" CREATED="1751111662462" MODIFIED="1751111662462"/>
<node TEXT="对象材质的环境、漫反射和镜面反射特征；" POSITION="bottom_or_right" ID="ID_534908070" CREATED="1751111662462" MODIFIED="1751111662462"/>
<node TEXT="对象的材质指定为“光泽”；" POSITION="bottom_or_right" ID="ID_419101135" CREATED="1751111662462" MODIFIED="1751111662462"/>
<node TEXT="光线照射物体的角度；" POSITION="bottom_or_right" ID="ID_1608216781" CREATED="1751111662462" MODIFIED="1751111662462"/>
<node TEXT="从中查看场景的角度。" POSITION="bottom_or_right" ID="ID_185317319" CREATED="1751111662462" MODIFIED="1751111662462"/>
</node>
<node TEXT="ADS模型" POSITION="bottom_or_right" ID="ID_314008111" CREATED="1751115187242" MODIFIED="1751115215975">
<node TEXT="环境光反射（Ambient reflection）模拟低级光照，影响场景中的所有物体" POSITION="bottom_or_right" ID="ID_233311771" CREATED="1751111544605" MODIFIED="1751111544605"/>
<node TEXT="漫反射（Diffuse reflection）根据光线的入射角度调整物体亮度。" POSITION="bottom_or_right" ID="ID_1271705091" CREATED="1751111535238" MODIFIED="1751111552719"/>
<node TEXT="镜面反射（Specular reflection）用以展示物体的光泽，通过在物体表面上，光线最直接地反射到我们的眼睛的位置，策略性地放置适当大小的高光来实现。" POSITION="bottom_or_right" ID="ID_452897173" CREATED="1751111558083" MODIFIED="1751111559158"/>
</node>
<node TEXT="光源类型" POSITION="bottom_or_right" ID="ID_1557365289" CREATED="1751111703198" MODIFIED="1751111709967">
<node TEXT="全局光" ID="ID_1525360193" CREATED="1751111721268" MODIFIED="1751111757655">
<node TEXT="没有光源位置——无论场景中的对象在何处，其上的每个像素都有着相同的光照，也没有方向" ID="ID_896254314" CREATED="1751111767364" MODIFIED="1751111917837"/>
<node TEXT="模拟了现实世界中的一种光线现象，即光线经过很多次反射，其光源和方向都已经无法确定" ID="ID_216450837" CREATED="1751111788362" MODIFIED="1751111789454"/>
<node TEXT="仅具有环境光反射分量，用RGBA值设定；它没有漫反射或镜面反射分量。" ID="ID_255227244" CREATED="1751111835595" MODIFIED="1751111836525"/>
<node TEXT="float globalAmbient[4] = { 0.6f, 0.6f, 0.6f, 1.0f };" ID="ID_209303549" CREATED="1751111850050" MODIFIED="1751111851735">
<node TEXT="RGBA的取值范围为0～1，全局环境光通常被建模为偏暗的白光，其中RGB各值设为0～1的相同的小数，alpha设置为1。" ID="ID_910946536" CREATED="1751111857080" MODIFIED="1751111859257"/>
</node>
</node>
<node TEXT="定向光（或“远距离光”）；" POSITION="bottom_or_right" ID="ID_1919058292" CREATED="1751111721268" MODIFIED="1751111721268">
<node TEXT="没有源位置，但它具有方向。它可以用来模拟光源距离非常远，以至于光线接近平行的情况，例如阳光" ID="ID_743468202" CREATED="1751111882911" MODIFIED="1751111906109"/>
<node TEXT="建模定向光需要指定其方向（以向量形式）及其环境、漫反射和镜面特征（以RGBA值）" ID="ID_1469215894" CREATED="1751111952522" MODIFIED="1751111953930"/>
<node TEXT="指向Z轴负方向的红色定向光可以指定如下" ID="ID_582182567" CREATED="1751111984023" MODIFIED="1751111985363">
<node TEXT="float dirLightAmbient[4] = { 0.1f, 0.0f, 0.0f, 1.0f };" ID="ID_538233389" CREATED="1751111993688" MODIFIED="1751111993688"/>
<node TEXT="float dirLightDiffuse[4] = { 1.0f, 0.0f, 0.0f, 1.0f };" ID="ID_1277194838" CREATED="1751111993688" MODIFIED="1751111993688"/>
<node TEXT="float dirLightSpecular[4] = { 1.0f, 0.0f, 0.0f, 1.0f };" ID="ID_535148509" CREATED="1751111993689" MODIFIED="1751111993689"/>
<node TEXT="float dirLightDirection[3] = { 0.0f, 0.0f, -1.0f };" ID="ID_839652803" CREATED="1751111993689" MODIFIED="1751111993689"/>
</node>
</node>
<node TEXT="位置光（或“点光源”）；" POSITION="bottom_or_right" ID="ID_859552477" CREATED="1751111721268" MODIFIED="1751111721268">
<node TEXT="有位置，没有方向，可以包含衰减因子，来模拟它们的强度随距离减小的程度" ID="ID_1705180560" CREATED="1751112038814" MODIFIED="1751112070260"/>
<node TEXT="位置光具有指定为RGBA值的环境光反射、漫反射和镜面反射特性" ID="ID_621451714" CREATED="1751112089466" MODIFIED="1751112091972"/>
<node TEXT="位置（5,2,−3）处的红色位置光可以指定如下" ID="ID_481935158" CREATED="1751112100252" MODIFIED="1751112101564">
<node TEXT="float posLightAmbient[4] = { 0.1f, 0.0f, 0.0f, 1.0f };" ID="ID_1521706318" CREATED="1751112108770" MODIFIED="1751112108770"/>
<node TEXT="float posLightDiffuse[4] = { 1.0f, 0.0f, 0.0f, 1.0f };" ID="ID_1859133257" CREATED="1751112108770" MODIFIED="1751112108770"/>
<node TEXT="float posLightSpecular[4] = { 1.0f, 0.0f, 0.0f, 1.0f };" ID="ID_1739426087" CREATED="1751112108770" MODIFIED="1751112115323"/>
<node TEXT="float posLightLocation[3] = { 5.0f, 2.0f, -3.0f };" ID="ID_1010022152" CREATED="1751112108771" MODIFIED="1751112108771"/>
</node>
<node TEXT="衰减因子" ID="ID_1924348681" CREATED="1751112122158" MODIFIED="1751112127638"/>
</node>
<node TEXT="聚光灯" POSITION="bottom_or_right" ID="ID_67229893" CREATED="1751111721268" MODIFIED="1751111721268">
<node TEXT="同时具有位置和方向" POSITION="bottom_or_right" ID="ID_563714146" CREATED="1751112162439" MODIFIED="1751112162439"/>
<node TEXT="位于（5,2,−3）向下照射Z轴负方向的红色聚光灯可以表示为" POSITION="bottom_or_right" ID="ID_1714789784" CREATED="1751112234095" MODIFIED="1751112239860">
<node TEXT="float spotLightAmbient[4] = { 0.1f, 0.0f, 0.0f, 1.0f };" ID="ID_59876340" CREATED="1751112242188" MODIFIED="1751112242188"/>
<node TEXT="float spotLightDiffuse[4] = { 1.0f, 0.0f, 0.0f, 1.0f };" ID="ID_374221539" CREATED="1751112242188" MODIFIED="1751112242188"/>
<node TEXT="float spotLightSpecular[4] = { 1.0f,0.0f, 0.0f, 1.0f };" ID="ID_235422212" CREATED="1751112242188" MODIFIED="1751112242188"/>
<node TEXT="float spotLightLocation[3] = { 5.0f, 2.0f, -3.0f };" ID="ID_1115328713" CREATED="1751112242189" MODIFIED="1751112242189"/>
<node TEXT="float spotLightDirection[3] = { 0.0f, 0.0f, -1.0f };" ID="ID_1083812540" CREATED="1751112242189" MODIFIED="1751112242189"/>
<node TEXT="float spotLightCutoff = 20.0f;" ID="ID_555401666" CREATED="1751112242189" MODIFIED="1751112242189"/>
</node>
</node>
</node>
<node TEXT="材质" POSITION="bottom_or_right" ID="ID_922606837" CREATED="1751112282314" MODIFIED="1751115346164">
<node TEXT="光泽度" ID="ID_1303699739" CREATED="1751115242432" MODIFIED="1751115247324"/>
<node TEXT="透明度" ID="ID_1910890158" CREATED="1751115253926" MODIFIED="1751115257685"/>
<node TEXT="放射性" ID="ID_1153711660" CREATED="1751115290420" MODIFIED="1751115346164">
<node TEXT="在模拟自身发光的材质（例如磷光材质）时非常有用。" ID="ID_1120068867" CREATED="1751115299121" MODIFIED="1751115302276"/>
</node>
</node>
<node TEXT="计算每个光源对于每个像素的环境光反射、漫反射和镜面反射分量，并求和。基于场景内的光源类型以及渲染中模型的材质类型" POSITION="bottom_or_right" ID="ID_405083170" CREATED="1751115399885" MODIFIED="1751115414971">
<node TEXT="环境光分量" ID="ID_476540995" CREATED="1751115422091" MODIFIED="1751115429912">
<node TEXT="\latex $I_{ambient} = Light_{ambient} * Material_{ambient} $" ID="ID_1205839911" CREATED="1751115477660" MODIFIED="1751115723798" MAX_WIDTH="20 cm">
<font SIZE="18"/>
</node>
<node TEXT="是场景环境光与材质环境光分量的乘积" POSITION="bottom_or_right" ID="ID_1780535608" CREATED="1751115493335" MODIFIED="1751115493335"/>
</node>
<node TEXT="漫反射分量" ID="ID_1532438762" CREATED="1751115590532" MODIFIED="1751115596099">
<node TEXT="\latex $ I_{diffuse}=Light_{diffuse}*Material_{diffuse} * \max(\hat{\boldsymbol{N}} \cdot \hat{\boldsymbol{L}}, 0)$" ID="ID_594485495" CREATED="1751115604836" MODIFIED="1751116198654" MAX_WIDTH="20 cm">
<font SIZE="18"/>
</node>
<node TEXT="计算入射角" POSITION="bottom_or_right" ID="ID_856794872" CREATED="1751115828630" MODIFIED="1751115840412">
<node TEXT="a）求解从所绘制像素位置到光源的向量L（或者与光照方向相反的向量）" ID="ID_1240974034" CREATED="1751115857943" MODIFIED="1751116002488"/>
<node TEXT="（b）求解所渲染物体表面的法（垂直）向量N" POSITION="bottom_or_right" ID="ID_1348648591" CREATED="1751115865538" MODIFIED="1751116004841">
<node TEXT="在模型中给出" ID="ID_1079604286" CREATED="1751115937058" MODIFIED="1751115938767"/>
<node TEXT="基于周围顶点位置手动计算" ID="ID_649143730" CREATED="1751115952746" MODIFIED="1751115956392"/>
</node>
</node>
<node TEXT="只有L和N的点乘大于0，即角度在-90到90度之间，才需要计算" POSITION="bottom_or_right" ID="ID_483345257" CREATED="1751115978306" MODIFIED="1751116035318"/>
</node>
<node TEXT="镜面反射" ID="ID_153234709" CREATED="1751116226229" MODIFIED="1751116232631">
<node TEXT="R代表光反射的方向，V（叫作观察向量view vector）是从像素到眼睛的向量" ID="ID_454715216" CREATED="1751116264752" MODIFIED="1751116269492"/>
<node TEXT="在R与V之间的小夹角φ越小，眼睛越靠近光轴，或者说看向反射光，因此像素的镜面高光分量也就越大（像素看来应该更亮）" ID="ID_1945870036" CREATED="1751116278391" MODIFIED="1751116282127"/>
<node TEXT="反光度" ID="ID_574427505" CREATED="1751116335381" MODIFIED="1751116368533">
<node TEXT="随着角度φ的增大，镜面反射分量降低到0的速度" ID="ID_1274711790" CREATED="1751116370039" MODIFIED="1751116397681"/>
<node TEXT="可以用cos(φ)来对衰减进行建模，通过余弦函数的乘方来增减反光度，如cos(φ), cos2(φ), cos3(φ), cos10(φ), cos50(φ)等，指数n叫作材质的反光度因子" ID="ID_781395327" CREATED="1751116401581" MODIFIED="1751116438562"/>
<node TEXT="指数中的阶数越高，衰减越快" ID="ID_1241303772" CREATED="1751116423357" MODIFIED="1751116424922"/>
</node>
<node TEXT="\latex $ I_{spec}=Light_{spec}*Material_{spec} * \max((\hat{\boldsymbol{R}} \cdot \hat{\boldsymbol{V}})^n, 0)$" ID="ID_885005589" CREATED="1751116498249" MODIFIED="1751116567448" MAX_WIDTH="20 cm">
<font SIZE="20"/>
</node>
</node>
</node>
<node TEXT="面片着色" POSITION="bottom_or_right" ID="ID_328350242" CREATED="1751116636532" MODIFIED="1751116643624">
<node TEXT="对模型每个多边形的一个顶点进行光照计算，然后以每个多边形或每个三角形为基础，将计算结果的光照值复制到相邻的像素中" ID="ID_222891806" CREATED="1751116647633" MODIFIED="1751116706446"/>
<node TEXT="将“flat”插值限定符添加到相应的法向量属性声明中" ID="ID_95785451" CREATED="1751120707776" MODIFIED="1751120708957">
<node TEXT="基于Phong着色" ID="ID_74036044" CREATED="1751120723809" MODIFIED="1751120732403"/>
<node TEXT="在顶点着色器中&#xa;flat out vec3 varyingNormal;&#xa;在片段着色器中&#xa;flat in vec3 varyingNormal;" POSITION="bottom_or_right" ID="ID_569966186" CREATED="1751120713049" MODIFIED="1751120715595"/>
</node>
</node>
<node TEXT="Gouraud着色（双线性光强插值法）" FOLDED="true" POSITION="bottom_or_right" ID="ID_1580598689" CREATED="1751116723987" MODIFIED="1751116740477">
<node TEXT="在顶点着色器中进行光照计算，通过光栅化来对像素的颜色进行插值，在相机空间中计算" ID="ID_574836250" CREATED="1751116748316" MODIFIED="1751118088901"/>
<node TEXT="在顶点着色器中不能直接用法线应用模型视图矩阵变换，主要是因为法线属于方向向量（仅表示方向，无位置信息），而 MV 矩阵可能包含非均匀缩放（Non-uniform Scaling），这会导致法线方向在变换后不再垂直于表面，从而破坏光照计算的正确性" ID="ID_1995137478" CREATED="1751117864314" MODIFIED="1751117911958">
<node TEXT="当 MV 矩阵仅包含旋转和均匀缩放时，(M^-1)^T = M，此时可直接用法线乘 MV 矩阵。" ID="ID_759471648" CREATED="1751117887222" MODIFIED="1751117887222"/>
<node TEXT="但只要存在非均匀缩放，直接使用 MV 矩阵会导致法线方向错误。" ID="ID_968742397" CREATED="1751117887222" MODIFIED="1751117887222"/>
</node>
<node TEXT="流程" ID="ID_641017020" CREATED="1751118593269" MODIFIED="1751118955893">
<node TEXT="c++代码" ID="ID_472844626" CREATED="1751118638943" MODIFIED="1751118728759">
<node TEXT="放入缓冲区：&#xa;1. 模型顶点&#xa;2. 顶点法向量&#xa;放入统一变量：&#xa;1.MV和IPROJ短阵变换&#xa;2. 光照和材质特性" ID="ID_1457833109" CREATED="1751118731002" MODIFIED="1751118732624"/>
</node>
<node TEXT="顶点着色器" POSITION="bottom_or_right" ID="ID_1437257506" CREATED="1751118678531" MODIFIED="1751118735711">
<node TEXT="1.根据顶点计算N、L、V和R向量&#xa;2.计算 A、D、S分量&#xa;3. 输出属性&#xa;-光照后的顏色&#xa;-g_position" ID="ID_1294929628" CREATED="1751118736370" MODIFIED="1751118738032">
<node TEXT="vec4 color;&#xa; // 把顶点转换到相机空间&#xa; vec4 P = mv_matrix * vec4(vertPos,1.0);&#xa; // 把法线转换到相机空间&#xa; vec3 N = normalize((norm_matrix * vec4(vertNormal,1.0)).xyz);&#xa; // 计算相机空间下光源的方向&#xa; vec3 L = normalize(light.position - P.xyz);&#xa; //  计算视线方向&#xa; //  R is reflection of -L around the plane defined by N&#xa; vec3 R = reflect(-L,N);&#xa; // ambient, diffuse, and specular contributions&#xa; vec3 ambient =&#xa;              ((globalAmbient * material.ambient)&#xa;              + (light.ambient * material.ambient)).xyz;          &#xa; vec3 diffuse =&#xa;              light.diffuse.xyz * material.diffuse.xyz&#xa;              * max(dot(N,L), 0.0); &#xa; vec3 specular =&#xa;              pow(max(dot(R,V), 0.0f), material.shininess)&#xa;              * material.specular.xyz * light.specular.xyz;&#xa; // 将颜色传送到片段着色器，自动插值&#xa; varyingColor = vec4((ambient + diffuse + specular), 1.0);&#xa; // 发送位置&#xa; gl_Position = proj_matrix * mv_matrix * vec4(vertPos,1.0);" ID="ID_550748841" CREATED="1751118769663" MODIFIED="1751118928265"/>
</node>
</node>
<node TEXT="片段着色器" POSITION="bottom_or_right" ID="ID_1818005895" CREATED="1751118696648" MODIFIED="1751118741399">
<node TEXT="传入插值：&#xa;-颜色&#xa;-位置" ID="ID_1602986703" CREATED="1751118742468" MODIFIED="1751118744640"/>
</node>
</node>
</node>
<node TEXT="Phong着色" POSITION="bottom_or_right" ID="ID_152418855" CREATED="1751116730813" MODIFIED="1751120868574">
<node TEXT="在片段着色器中计算" ID="ID_422451739" CREATED="1751118560003" MODIFIED="1751118571067"/>
<node TEXT="流程" ID="ID_847880113" CREATED="1751118991677" MODIFIED="1751120868573">
<node TEXT="c++代码" ID="ID_1971829827" CREATED="1751118638943" MODIFIED="1751118728759">
<node TEXT="放入缓冲区：&#xa;1. 模型顶点&#xa;2. 顶点法向量&#xa;放入统一变量：&#xa;1.MV和IPROJ短阵变换&#xa;2. 光照和材质特性" ID="ID_1386780681" CREATED="1751118731002" MODIFIED="1751118732624"/>
</node>
<node TEXT="顶点着色器" ID="ID_943182748" CREATED="1751118678531" MODIFIED="1751118735711">
<node TEXT="1.根据顶点计算N、L、V&#xa;2. 输出属性&#xa;-光照后的顏色&#xa;-N，L，V，gl_position" ID="ID_119535861" CREATED="1751118736370" MODIFIED="1751119059683">
<node TEXT="varyingVertPos = (mv_matrix * vec4(vertPos,1.0)).xyz;&#xa;varyingLightDir = light.position - varyingVertPos;&#xa;varyingNormal = (norm_matrix * vec4(vertNormal,1.0)).xyz;&#xa;&#xa;gl_Position = proj_matrix * mv_matrix * vec4(vertPos,1.0);" ID="ID_1417409175" CREATED="1751119188481" MODIFIED="1751119219709"/>
</node>
</node>
<node TEXT="片段着色器" ID="ID_817230460" CREATED="1751118696648" MODIFIED="1751118741399">
<node TEXT="传入插值 N，L， V&#xa;2. 计算 R，theta，beta&#xa;3. 计算ADS分量&#xa;4. 输出颜色" ID="ID_528950929" CREATED="1751118742468" MODIFIED="1751119125081">
<node TEXT="// normalize the light, normal, and view vectors:&#xa; vec3 L = normalize(varyingLightDir);&#xa; vec3 N = normalize(varyingNormal);&#xa; vec3 V = normalize(-varyingVertPos);&#xa; &#xa; // 计算光照向量基于N的反射向量&#xa; vec3 R = normalize(reflect(-L, N));&#xa; &#xa; // 计算光照与平面法向量间的角度&#xa; float cosTheta = dot(L,N);&#xa; &#xa; // 计算视线和反射向量的夹角&#xa; float cosPhi = dot(V,R);&#xa;&#xa; // compute ADS contributions (per pixel):&#xa; vec3 ambient = ((globalAmbient * material.ambient) + (light.ambient * material.ambient)).xyz;&#xa; vec3 diffuse = light.diffuse.xyz * material.diffuse.xyz * max(cosTheta,0.0);&#xa; vec3 specular = light.specular.xyz * material.specular.xyz * pow(max(cosPhi,0.0), material.shininess);&#xa; &#xa; fragColor = vec4((ambient + diffuse + specular), 1.0);" ID="ID_292194912" CREATED="1751119200502" MODIFIED="1751119399224"/>
</node>
</node>
</node>
</node>
<node TEXT="Blinn-Phong着色" FOLDED="true" POSITION="bottom_or_right" ID="ID_158555555" CREATED="1751119418269" MODIFIED="1751119438302">
<node TEXT="计算反射向量非常费时，不在计算反射向量，而是通过计算L+V得到角平分线H，计算H和N的夹角，H和N的夹角刚好等于视线和反射向量夹角的一半" ID="ID_669841303" CREATED="1751119488509" MODIFIED="1751119647380"/>
<node TEXT="顶点着色器" ID="ID_520580790" CREATED="1751119691448" MODIFIED="1751119696725">
<node TEXT="varyingVertPos = (mv_matrix * vec4(vertPos,1.0)).xyz;&#xa;varyingLightDir = light.position - varyingVertPos;&#xa;varyingNormal = (norm_matrix * vec4(vertNormal,1.0)).xyz;&#xa;         &#xa;varyingHalfVector =&#xa;                  normalize(normalize(varyingLightDir)&#xa;                  + normalize(-varyingVertPos)).xyz;&#xa;&#xa;gl_Position = proj_matrix * mv_matrix * vec4(vertPos,1.0);" ID="ID_1711700303" CREATED="1751119697015" MODIFIED="1751119731347"/>
</node>
<node TEXT="片段着色器" ID="ID_966293317" CREATED="1751119711045" MODIFIED="1751119716714">
<node TEXT="// normalize the light, normal, and view vectors:&#xa; vec3 L = normalize(varyingLightDir);&#xa; vec3 N = normalize(varyingNormal);&#xa; vec3 V = normalize(-varyingVertPos);&#xa; &#xa; // 计算光照向量和法向量的夹角&#xa; float cosTheta = dot(L,N);&#xa; &#xa; // 归一化角平分线向量&#xa; vec3 H = normalize(varyingHalfVector);&#xa; &#xa; // 得到他们之间的夹角&#xa; float cosPhi = dot(H,N);&#xa;&#xa; // compute ADS contributions (per pixel):&#xa; vec3 ambient = ((globalAmbient * material.ambient) + (light.ambient * material.ambient)).xyz;&#xa; vec3 diffuse = light.diffuse.xyz * material.diffuse.xyz * max(cosTheta,0.0);&#xa; vec3 specular = light.specular.xyz * material.specular.xyz * pow(max(cosPhi,0.0), material.shininess*3.0);&#xa; fragColor = vec4((ambient + diffuse + specular), 1.0);" ID="ID_547908011" CREATED="1751119717056" MODIFIED="1751119836035"/>
</node>
</node>
<node TEXT="结合光照与纹理" FOLDED="true" POSITION="bottom_or_right" ID="ID_1944830114" CREATED="1751120311743" MODIFIED="1751120313069">
<node TEXT="纹理图像很写实地反映了物体真实的表面外观" FOLDED="true" ID="ID_1126366531" CREATED="1751120331485" MODIFIED="1751120445061">
<node TEXT="在片段着色器中完全将材质特性去除掉，之后使用纹理取样所得纹理颜色代替材质的ADS值" ID="ID_604580419" CREATED="1751120351278" MODIFIED="1751120355178"/>
<node TEXT="fragColor = textureColor * ( ambientLight + diffuseLight ) + specularLight" ID="ID_624191353" CREATED="1751120362235" MODIFIED="1751120363804">
<node TEXT="纹理颜色影响了环境光和漫反射分量，而镜面反射颜色仅由光源决定，这适用于金属或者闪亮的表面" POSITION="bottom_or_right" ID="ID_1464787164" CREATED="1751120374213" MODIFIED="1751120401479"/>
</node>
<node TEXT="fragColor = textureColor * ( ambientLight + diffuseLight + specularLight )" ID="ID_93585189" CREATED="1751120409020" MODIFIED="1751120410427">
<node TEXT="对于不那么闪亮的表面，如织物或未上漆的木材（甚至一小部分金属，如黄金），其镜面高光部分都应当包含物体表明颜色" ID="ID_1891809290" CREATED="1751120419619" MODIFIED="1751120421457"/>
</node>
</node>
<node TEXT="物体同时具有材质和纹理" ID="ID_928499239" CREATED="1751120450063" MODIFIED="1751120451962">
<node TEXT="既用到光照又用到材质的标准ADS模型就可以与纹理颜色相结合，并加权求和" ID="ID_302700041" CREATED="1751120587765" MODIFIED="1751120589837"/>
<node TEXT="textureColor = texture(sampler, texCoord)&#xa;lightColor = (ambLight * ambMaterial) + (diffLight * diffMaterial) + specLight&#xa;fragColor = 0.5 * textureColor + 0.5 * lightColor" POSITION="bottom_or_right" ID="ID_104299913" CREATED="1751120474969" MODIFIED="1751120478203"/>
</node>
<node TEXT="材质包括了阴影和反射信息" ID="ID_1941780306" CREATED="1751120456950" MODIFIED="1751120461169"/>
<node TEXT="有多种光和/或多个纹理" ID="ID_224002343" CREATED="1751120462688" MODIFIED="1751120463722"/>
</node>
</node>
<node TEXT="阴影" ID="ID_1184105590" CREATED="1751121179722" MODIFIED="1751121183138"/>
</node>
<node TEXT="GLSL" ID="ID_1000558199" CREATED="1751075250671" MODIFIED="1751075252918">
<node TEXT="vertex" ID="ID_777997110" CREATED="1751075253717" MODIFIED="1751075259455">
<node TEXT="gl_Position" ID="ID_1015852203" CREATED="1751075265289" MODIFIED="1751075271161">
<node TEXT="顶点位置" ID="ID_253557256" CREATED="1751075293564" MODIFIED="1751075296675"/>
</node>
<node TEXT="gl_VertexID" ID="ID_1466417077" CREATED="1751075488373" MODIFIED="1751075489423">
<node TEXT="逐顶点自增，初始为0" ID="ID_1256929813" CREATED="1751075494465" MODIFIED="1751075530551"/>
</node>
</node>
<node TEXT="frag" ID="ID_810577496" CREATED="1751075260061" MODIFIED="1751075261861">
<node TEXT="gl_FragCoord" ID="ID_1427251058" CREATED="1751075273413" MODIFIED="1751075279299">
<node TEXT="片段位置" ID="ID_225478238" CREATED="1751075281072" MODIFIED="1751075291753"/>
</node>
</node>
<node TEXT="矩阵" ID="ID_927296701" CREATED="1751086577579" MODIFIED="1751086587278">
<node TEXT="列优先" ID="ID_1001492669" CREATED="1751086587645" MODIFIED="1751086593792"/>
</node>
</node>
<node TEXT="其他" ID="ID_972331424" CREATED="1751075863845" MODIFIED="1751075865676">
<node TEXT="异常" ID="ID_335652832" CREATED="1751075873449" MODIFIED="1751075877063"/>
<node TEXT="参数查询" ID="ID_516209559" CREATED="1751075879757" MODIFIED="1751075890228">
<node TEXT="glGetFloatv" ID="ID_955807295" CREATED="1751075890424" MODIFIED="1751075891494"/>
</node>
<node TEXT="z冲突" FOLDED="true" ID="ID_390560963" CREATED="1751087176253" MODIFIED="1751097028584">
<node TEXT="当两个或多个物体的表面在三维空间中非常接近或重叠时，渲染器难以确定哪个表面应该显示在前面，从而在重叠区域产生闪烁或不规则的视觉效果" ID="ID_725074717" CREATED="1751097046341" MODIFIED="1751097047623"/>
<node TEXT="产生原因" ID="ID_1141985169" CREATED="1751097053394" MODIFIED="1751097075874">
<node TEXT="深度缓冲精度不足：在三维渲染中，深度缓冲用于记录每个像素的深度值，以确定像素的遮挡关系。当物体与相机之间的距离较远时，深度值的精度会下降。例如，若近裁剪平面和远裁剪平面距离设置不合理，远裁剪平面距离过远，会使相近深度的物体在深度缓冲中的数值表示难以区分，导致渲染器无法准确判断物体的前后顺序，进而产生 Z 冲突。" ID="ID_976254546" CREATED="1751097076525" MODIFIED="1751097077676"/>
<node TEXT="物体表面重叠：如果模型本身存在问题，导致两个或多个表面在物理上完全重叠或过于接近，也会引发 Z 冲突。因为深度测试算法无法确定这些重叠表面的正确渲染顺序，从而产生伪影。" ID="ID_1010217552" CREATED="1751097083384" MODIFIED="1751097084352"/>
</node>
<node TEXT="解决方法" ID="ID_115762181" CREATED="1751097100585" MODIFIED="1751097101471">
<node TEXT="让可能产生冲突的物体之间有一些微小偏移，使其表面不再共面，从而避免深度值冲突" ID="ID_996038099" CREATED="1751097115432" MODIFIED="1751097128104"/>
</node>
</node>
<node TEXT="深度缓冲" ID="ID_483414551" CREATED="1751191947591" MODIFIED="1751191952695">
<node TEXT="&#x9;SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);" ID="ID_276344377" CREATED="1751191985815" MODIFIED="1751191993942"/>
<node TEXT="glEnable(GL_DEPTH_TEST);" ID="ID_1438707794" CREATED="1751191995597" MODIFIED="1751192016898"/>
<node TEXT="glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);" ID="ID_1123000044" CREATED="1751192019327" MODIFIED="1751192020621"/>
<node TEXT="按照z缓冲区的规定，在具有透明物体的场景中不能使用z缓冲。" ID="ID_1888091544" CREATED="1751192057490" MODIFIED="1751192058619"/>
<node TEXT="如果要渲染透明的对象" ID="ID_1135230828" CREATED="1751192246776" MODIFIED="1751192267573">
<node TEXT="1，用z缓冲来渲染不透明对象" POSITION="bottom_or_right" ID="ID_1432454151" CREATED="1751192285547" MODIFIED="1751192308703"/>
<node TEXT="2，禁用深度缓冲区写入，并按从前到后的顺序渲染透明对象。" POSITION="bottom_or_right" ID="ID_1595918093" CREATED="1751192299001" MODIFIED="1751192312172"/>
<node TEXT="在渲染像素时，应该测试每个像素的深度，以确保不透明对象后面的透明像素不会被绘制。虽然上述方案意味着对于透明对象，会使用画家算法进行渲染，但透明对象的数量有望非常小。" POSITION="bottom_or_right" ID="ID_930223102" CREATED="1751192095751" MODIFIED="1751192294418"/>
</node>
<node TEXT="如果要同时渲染精灵和3d的对象" ID="ID_59575797" CREATED="1751192164054" MODIFIED="1751192369690">
<node TEXT="1,在禁用alpha 混合并启用z缓冲的情况下，渲染所有3D对象。" ID="ID_428616383" CREATED="1751192187375" MODIFIED="1751192228649"/>
<node TEXT="2,在启用alpha 混合并禁用z缓冲的情况下，渲染所有精灵。" ID="ID_1552593266" CREATED="1751192201400" MODIFIED="1751192396633"/>
<node TEXT="原因：因为精灵渲染使用 Alpha 混合来支持具有透明度的纹理。然而alpha 混合不能与Z缓冲很好地协作" ID="ID_1805026530" CREATED="1751192420765" MODIFIED="1751192462232"/>
<node TEXT="结果：所有2D 精灵都会显示在3D 场景的顶部" ID="ID_1568552143" CREATED="1751192467565" MODIFIED="1751192482268"/>
</node>
</node>
</node>
<node TEXT="如何把数据发送给OpenGL管线" FOLDED="true" ID="ID_1617799317" CREATED="1751091177566" MODIFIED="1751091236682">
<node TEXT="通过顶点属性的缓冲区" ID="ID_489801058" CREATED="1751091237901" MODIFIED="1751091393392">
<node TEXT="流程" ID="ID_1526083623" CREATED="1751091393794" MODIFIED="1751091397676">
<node TEXT="只做一次的步骤" POSITION="bottom_or_right" ID="ID_1912191049" CREATED="1751091307166" MODIFIED="1751091311886">
<node TEXT="创建一个缓冲区" POSITION="bottom_or_right" ID="ID_1460783287" CREATED="1751091276367" MODIFIED="1751091276367"/>
<node TEXT="将顶点数据复制到缓冲区" POSITION="bottom_or_right" ID="ID_1596030939" CREATED="1751091285802" MODIFIED="1751091285802"/>
</node>
<node TEXT="每帧都要做的步骤" POSITION="bottom_or_right" ID="ID_876030123" CREATED="1751091312917" MODIFIED="1751091314133">
<node TEXT="启用包含了顶点数据的缓冲区" POSITION="bottom_or_right" ID="ID_416178100" CREATED="1751091295767" MODIFIED="1751091300087"/>
<node TEXT="将这个缓冲区和一个顶点属性相关联" POSITION="bottom_or_right" ID="ID_28198056" CREATED="1751091301189" MODIFIED="1751091302212"/>
<node TEXT="启用这个顶点属性" POSITION="bottom_or_right" ID="ID_1379557308" CREATED="1751091327226" MODIFIED="1751091332318"/>
<node TEXT="使用glDrawArrays(…)绘制对象" POSITION="bottom_or_right" ID="ID_1602166817" CREATED="1751091333650" MODIFIED="1751091334788"/>
</node>
</node>
<node TEXT="顶点缓冲对象（Vertex Buffer Object，VBO）" ID="ID_1716674976" CREATED="1751091403396" MODIFIED="1751091412892">
<node TEXT="用于存储顶点数据（如位置、颜色、法线、纹理坐标等）的缓冲对象，它将顶点数据存储在 GPU 内存中，避免每次渲染时都从 CPU 传输数据，从而显著提高渲染效率" ID="ID_370146046" CREATED="1751093401438" MODIFIED="1751093403282"/>
<node TEXT="核心API" ID="ID_155771482" CREATED="1751093425200" MODIFIED="1751093429487">
<node TEXT="glGenBuffers：创建 VBO 对象。" ID="ID_984902684" CREATED="1751093430244" MODIFIED="1751093430244"/>
<node TEXT="glBindBuffer：绑定 VBO 到指定目标（如 GL_ARRAY_BUFFER）。" ID="ID_1564087282" CREATED="1751093430244" MODIFIED="1751093430244"/>
<node TEXT="glBufferData：向 VBO 中填充数据。" ID="ID_992643954" CREATED="1751093430245" MODIFIED="1751093430245"/>
</node>
<node TEXT="使用方法" FOLDED="true" ID="ID_97093470" CREATED="1751095558457" MODIFIED="1751095563488">
<node TEXT="// 1. 创建 VBO&#xa;GLuint VBO;&#xa;glGenBuffers(1, &amp;VBO);&#xa;&#xa;// 2. 绑定 VBO 到 GL_ARRAY_BUFFER 目标&#xa;glBindBuffer(GL_ARRAY_BUFFER, VBO);&#xa;&#xa;// 3. 向 VBO 中填充数据&#xa;glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);" ID="ID_904948841" CREATED="1751095564101" MODIFIED="1751095568698"/>
</node>
</node>
<node TEXT="顶点数组对象（Vertex Array Object，VAO）" ID="ID_1235868016" CREATED="1751091462440" MODIFIED="1751091463997">
<node TEXT="OpenGL要求至少创建一个VAO" ID="ID_949993076" CREATED="1751091475151" MODIFIED="1751091479141"/>
<node TEXT="封装了与顶点数据相关的所有状态信息" ID="ID_379791179" CREATED="1751093469947" MODIFIED="1751093470970">
<node TEXT="顶点属性配置（通过 glVertexAttribPointer 设置）。" ID="ID_753605570" CREATED="1751093480091" MODIFIED="1751093480091"/>
<node TEXT="启用的顶点属性（通过 glEnableVertexAttribArray 设置）。" ID="ID_994721715" CREATED="1751093480091" MODIFIED="1751093480091"/>
<node TEXT="关联的 VBO 和 EBO（索引缓冲对象）。" ID="ID_1563826633" CREATED="1751093480092" MODIFIED="1751093480092"/>
</node>
<node TEXT="VAO 可以理解为 “顶点属性配置的容器”，它允许我们在渲染时快速切换不同的顶点数据配置，而无需每次都重新设置所有属性" ID="ID_1467678248" CREATED="1751093508057" MODIFIED="1751093511065"/>
<node TEXT="核心API" ID="ID_259512382" CREATED="1751093537674" MODIFIED="1751093544404">
<node TEXT="glGenVertexArrays：创建 VAO 对象。" ID="ID_433853011" CREATED="1751093545037" MODIFIED="1751093545037"/>
<node TEXT="glBindVertexArray：绑定 VAO 以开始 / 结束记录状态。" ID="ID_1617038" CREATED="1751093545037" MODIFIED="1751093545037"/>
</node>
<node TEXT="使用方法" FOLDED="true" ID="ID_1482838560" CREATED="1751095582857" MODIFIED="1751095590993">
<node TEXT="// 1. 创建 VAO&#xa;GLuint VAO;&#xa;glGenVertexArrays(1, &amp;VAO);&#xa;&#xa;// 2. 绑定 VAO（开始记录顶点属性配置）&#xa;glBindVertexArray(VAO);&#xa;&#xa;// 3. 绑定 VBO 并填充数据（与 VBO 操作相同）&#xa;glBindBuffer(GL_ARRAY_BUFFER, VBO);&#xa;glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);&#xa;&#xa;// 4. 配置顶点属性（位置）&#xa;glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);&#xa;glEnableVertexAttribArray(0);&#xa;&#xa;// 5. 配置顶点属性（颜色）&#xa;glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));&#xa;glEnableVertexAttribArray(1);&#xa;&#xa;// 6. 解绑 VAO（结束记录）&#xa;glBindVertexArray(0);" ID="ID_100903621" CREATED="1751095591651" MODIFIED="1751095594503"/>
</node>
</node>
<node TEXT="VAO和VBO的对比" ID="ID_1360119625" CREATED="1751093573685" MODIFIED="1751093578994">
<node TEXT="VBO 是数据的载体，负责存储顶点数据。" ID="ID_997613152" CREATED="1751093588043" MODIFIED="1751093588043"/>
<node TEXT="VAO 是配置的载体，负责记录如何解释 VBO 中的数据。" ID="ID_684725752" CREATED="1751093588043" MODIFIED="1751093588043"/>
<node TEXT="一个 VAO 可以关联多个 VBO（例如，一个 VBO 存储位置，另一个存储颜色）。" ID="ID_1226276766" CREATED="1751093588044" MODIFIED="1751093588044"/>
<node TEXT="渲染时，只需绑定 VAO 和着色器程序，OpenGL 即可根据 VAO 的配置自动读取 VBO 中的数据并传递给着色器。" FOLDED="true" ID="ID_78101969" CREATED="1751093588044" MODIFIED="1751093588044">
<node TEXT="不使用VAO，每次渲染时需要重复配置顶点属性：" POSITION="bottom_or_right" ID="ID_1089643811" CREATED="1751095634058" MODIFIED="1751095690726">
<node TEXT="// 每次渲染时都要重新配置顶点属性&#xa;glUseProgram(shaderProgram);&#xa;&#xa;// 绑定 VBO&#xa;glBindBuffer(GL_ARRAY_BUFFER, VBO);&#xa;&#xa;// 配置顶点属性&#xa;glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);&#xa;glEnableVertexAttribArray(0);&#xa;glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));&#xa;glEnableVertexAttribArray(1);&#xa;&#xa;// 绘制&#xa;glDrawArrays(GL_TRIANGLES, 0, 3);" ID="ID_737564880" CREATED="1751095645147" MODIFIED="1751095668276"/>
</node>
<node TEXT="使用 VAO，只需在初始化时配置一次，渲染时直接绑定 VAO：" POSITION="bottom_or_right" ID="ID_1952253187" CREATED="1751095680971" MODIFIED="1751095687185">
<node TEXT="// 初始化阶段配置 VAO（见前面的 VAO 示例）&#xa;&#xa;// 渲染循环&#xa;while (!glfwWindowShouldClose(window)) {&#xa;    glClear(GL_COLOR_BUFFER_BIT);&#xa;    glUseProgram(shaderProgram);&#xa;   &#xa;    // 直接绑定 VAO，无需重复配置属性&#xa;    glBindVertexArray(VAO);&#xa;    glDrawArrays(GL_TRIANGLES, 0, 3);&#xa;}" ID="ID_245273754" CREATED="1751095704249" MODIFIED="1751095706760"/>
</node>
</node>
</node>
<node TEXT="常见问题" ID="ID_358113985" CREATED="1751095845415" MODIFIED="1751095849878">
<node TEXT="VAO 与 VBO 的创建顺序" POSITION="bottom_or_right" ID="ID_597721429" CREATED="1751095746206" MODIFIED="1751095779938">
<node TEXT="可以先创建 VAO 或 VBO，但配置 VAO 时必须先绑定 VAO，再绑定 VBO 并设置顶点属性。" ID="ID_152462747" CREATED="1751095758931" MODIFIED="1751095760758"/>
</node>
<node TEXT="多个 VAO 共享 VBO" POSITION="bottom_or_right" ID="ID_1968741182" CREATED="1751095766306" MODIFIED="1751095769213">
<node TEXT="多个 VAO 可以关联同一个 VBO，用于不同的顶点属性配置。例如，一个 VAO 将 VBO 解释为位置 + 颜色，另一个 VAO 将其解释为位置 + 法线。" ID="ID_1610075678" CREATED="1751095770199" MODIFIED="1751095774691">
<font BOLD="false"/>
</node>
</node>
<node TEXT="VAO 的性能优势" POSITION="bottom_or_right" ID="ID_694026040" CREATED="1751095781600" MODIFIED="1751095784158">
<node TEXT="减少渲染时的状态切换，提高渲染效率，尤其适用于复杂场景（如模型包含多个材质或子网格）。" ID="ID_1678265980" CREATED="1751095785220" MODIFIED="1751095787565"/>
</node>
</node>
<node TEXT="性能优化" POSITION="bottom_or_right" ID="ID_1217604375" CREATED="1751093161150" MODIFIED="1751093165016">
<node ID="ID_1276792166" CREATED="1751093168557" MODIFIED="1751093168557"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      减少 VAO 切换：频繁切换 VAO 会带来一定开销，尽量批量处理使用相同 VAO 的绘制命令。
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1515676523" CREATED="1751093168558" MODIFIED="1751093168558"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      预创建 VAO：在初始化阶段创建并配置所有需要的 VAO，避免在渲染循环中动态创建。
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="每个缓冲区需要有在顶点着色器中声明的相应的顶点属性变量" POSITION="bottom_or_right" ID="ID_237638094" CREATED="1751092519139" MODIFIED="1751092528698">
<node TEXT="layout (location = 0) in vec3 position;" ID="ID_57615207" CREATED="1751092534420" MODIFIED="1751092540352">
<node TEXT="关键字in意思是“输入”（input），表示这个顶点属性将会从缓冲区中接收数值，也可以声明为out，表示他们会把值发送到管线的下一个阶段" POSITION="bottom_or_right" ID="ID_696822463" CREATED="1751092562657" MODIFIED="1751094078618"/>
<node TEXT="vec3”的意思是着色器的每次调用会从缓冲区中抓3个浮点类型数值" POSITION="bottom_or_right" ID="ID_1050549395" CREATED="1751092578501" MODIFIED="1751092593121"/>
<node TEXT="layout (location=0)”这部分叫作“layout修饰符”，也就是我们把顶点属性和特定缓冲区关联起来的方法，这个顶点属性的识别号是0" POSITION="bottom_or_right" ID="ID_161367268" CREATED="1751092604879" MODIFIED="1751092622360"/>
</node>
</node>
<node TEXT="统一变量" POSITION="bottom_or_right" ID="ID_923967628" CREATED="1751093837256" MODIFIED="1751093841278">
<node TEXT="（a）获取统一变量的引用；" ID="ID_606040792" CREATED="1751093857119" MODIFIED="1751093865152">
<node TEXT="glGetUniformLocation" ID="ID_300911905" CREATED="1751093875407" MODIFIED="1751093876490"/>
</node>
<node TEXT="（b）将指向所需数值的指针与获取的统一引用相关联" ID="ID_1486026681" CREATED="1751093866380" MODIFIED="1751093867391">
<node TEXT="glUniformMatrix4fv" ID="ID_455510541" CREATED="1751093882338" MODIFIED="1751093883231"/>
</node>
<node TEXT="在着色器的每次调用中，不会变，不会被线性插值，但是顶点属性会被线性插值" ID="ID_563541996" CREATED="1751093983065" MODIFIED="1751094036220"/>
</node>
<node TEXT="顶点索引" POSITION="bottom_or_right" ID="ID_1170867919" CREATED="1751170092455" MODIFIED="1751170097000">
<node TEXT="使用顶点可以减少顶点着色器调用次数" ID="ID_1423931816" CREATED="1751170097472" MODIFIED="1751170139071"/>
</node>
</node>
<node TEXT="直接发送给统一变量。" ID="ID_302124011" CREATED="1751091243967" MODIFIED="1751091245277"/>
<node TEXT="TODO" ID="ID_1369973444" CREATED="1751098941202" MODIFIED="1751098942657">
<node TEXT="统一块，这是一种类似于C中的struct的用于统一变量的机制。甚至可以设置统一块从缓冲区接收数据" ID="ID_1915772453" CREATED="1751098945528" MODIFIED="1751098945528"/>
<node TEXT="着色器存储块，它本质上是一个着色器可以写入的缓冲区" ID="ID_1916048576" CREATED="1751098951621" MODIFIED="1751098952634"/>
</node>
</node>
<node TEXT="核心模式和立即模式" ID="ID_1616515229" CREATED="1752288247893" MODIFIED="1752288291638">
<node TEXT="核心模式" ID="ID_181473830" CREATED="1752288291886" MODIFIED="1752288302243">
<node TEXT="调用函数可直接绘图，如 glBegin/glEnd 包裹顶点绘制，简单易上手" ID="ID_1132759479" CREATED="1752288322214" MODIFIED="1752288323858"/>
<node TEXT="底层封装多，硬件调度不灵活，效率低，无法满足复杂场景性能需求" ID="ID_1550812777" CREATED="1752288327754" MODIFIED="1752288328682"/>
</node>
<node TEXT="立即模式" ID="ID_1894395281" CREATED="1752288302526" MODIFIED="1752288304757">
<node TEXT="需手动管理渲染流程（如顶点缓冲、着色器），灵活度高，可深度优化性能" ID="ID_933319234" CREATED="1752288332559" MODIFIED="1752288338463"/>
<node TEXT="学习曲线陡，需掌握缓冲区、着色器等底层概念，理解图形渲染管线细节" ID="ID_1332359335" CREATED="1752288338915" MODIFIED="1752288340090"/>
</node>
</node>
<node TEXT="状态机" ID="ID_1687739838" CREATED="1752288346483" MODIFIED="1752288354478">
<node TEXT="OpenGL本身是一个大型状态机：由一组变量组成，这些变量定义了OpenGL当前应如何运行。OpenGL的状态通常被称为OpenGL上下文。使用OpenGL时，我们通常通过设置一些选项、操作一些缓冲区，然后使用当前上下文进行渲染来改变其状态" ID="ID_814983692" CREATED="1752288355353" MODIFIED="1752288390026">
<node TEXT="改变上下文的状态更改函数" ID="ID_600383235" CREATED="1752288418635" MODIFIED="1752288435778"/>
<node TEXT="根据OpenGL当前状态执行某些操作的状态使用函数" ID="ID_1542469978" CREATED="1752288436690" MODIFIED="1752288547740"/>
</node>
<node TEXT="在OpenGL中，对象是一组选项的集合，这些选项代表了OpenGL状态的一个子集。可以在应用程序中定义多个对象，设置它们的选项。在需要时激活对应的对象" FOLDED="true" ID="ID_819276962" CREATED="1752288549326" MODIFIED="1752288680467">
<node TEXT="// The State of OpenGL&#xa;struct OpenGL_Context {&#xa;  &#x9;...&#xa;  &#x9;object_name* object_Window_Target;&#xa;  &#x9;...  &#xa;};" ID="ID_1860485257" CREATED="1752288558311" MODIFIED="1752288559436"/>
<node TEXT="// create object&#xa;unsigned int objectId = 0;&#xa;glGenObject(1, &amp;objectId);&#xa;// bind/assign object to context&#xa;glBindObject(GL_WINDOW_TARGET, objectId);&#xa;// set options of object currently bound to GL_WINDOW_TARGET&#xa;glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_WIDTH,  800);&#xa;glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_HEIGHT, 600);&#xa;// set context target back to default&#xa;glBindObject(GL_WINDOW_TARGET, 0);" ID="ID_1984613406" CREATED="1752288563911" MODIFIED="1752288589762" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="glad" ID="ID_1523356988" CREATED="1752289009666" MODIFIED="1752289012710">
<node TEXT="由于OpenGL实际上只是一个标准/规范，因此需要由驱动程序制造商来实现该规范，使其成为特定显卡支持的驱动程序。由于OpenGL驱动程序有许多不同的版本，其大多数函数的位置在编译时是未知的，需要在运行时进行查询。那么，开发人员的任务就是检索他/她需要的函数的位置，并将它们存储在函数指针中以供后续使用。检索这些位置是特定于操作系统的" ID="ID_1869529539" CREATED="1752289013300" MODIFIED="1752289014540">
<node TEXT="// define the function&apos;s prototype&#xa;typedef void (*GL_GENBUFFERS) (GLsizei, GLuint*);&#xa;// find the function and assign it to a function pointer&#xa;GL_GENBUFFERS glGenBuffers  = (GL_GENBUFFERS)wglGetProcAddress(&quot;glGenBuffers&quot;);&#xa;// function can now be called as normal&#xa;unsigned int buffer;&#xa;glGenBuffers(1, &amp;buffer);" ID="ID_119660026" CREATED="1752289019711" MODIFIED="1752289031359"/>
<node TEXT="对于每个可能需要但尚未声明的函数都要这样做，这是一个繁琐的过程" ID="ID_378391761" CREATED="1752289032395" MODIFIED="1752289033303"/>
</node>
<node TEXT="https://glad.dav1d.de/" ID="ID_1428044464" CREATED="1752289034917" MODIFIED="1752289120496"/>
</node>
</node>
<node TEXT="渲染流水线" ID="ID_1894757437" CREATED="1752298551181" MODIFIED="1752298554522">
<node TEXT="应用阶段" ID="ID_734005385" CREATED="1752298829267" MODIFIED="1752298838477">
<node TEXT="定义顶点" ID="ID_1572729346" CREATED="1752298838780" MODIFIED="1752298842776">
<node TEXT="float vertices[] = {&#xa;    -0.5f, -0.5f, 0.0f,&#xa;     0.5f, -0.5f, 0.0f,&#xa;     0.0f,  0.5f, 0.0f&#xa;}; " ID="ID_1053690807" CREATED="1752298843267" MODIFIED="1752298844017"/>
</node>
<node TEXT="传送数据到gpu" ID="ID_1400327308" CREATED="1752298935767" MODIFIED="1752298941426">
<node TEXT="在GPU上创建内存来存储顶点数据，配置OpenGL解释该内存的方式，并指定如何将数据发送到显卡。" ID="ID_328045849" CREATED="1752298941652" MODIFIED="1752298942571">
<node TEXT="从CPU向显卡发送数据相对较慢，所以只要有可能，我们就尽量一次性发送尽可能多的数据。" ID="ID_714698083" CREATED="1752298979714" MODIFIED="1752298980428"/>
</node>
</node>
</node>
<node TEXT="顶点着色器，它以单个顶点作为输入。顶点着色器的主要目的是将3D坐标转换为不同的3D坐标，并且顶点着色器允许我们对顶点属性进行一些基本处理。" ID="ID_353558347" CREATED="1752298554862" MODIFIED="1752298563594">
<node TEXT="一旦顶点坐标在顶点着色器中处理完毕，它们应该处于标准化设备坐标中。任何超出此范围的坐标将被丢弃/裁剪，并且不会在屏幕上显示。" ID="ID_1184302914" CREATED="1752298743300" MODIFIED="1752298755326"/>
<node TEXT="然后，你的归一化设备坐标（NDC）将通过视口变换，使用你通过`glViewport`提供的数据转换为屏幕空间坐标。得到的屏幕空间坐标随后会被光栅化转换为片段，作为片段着色器的输入。" ID="ID_1529051888" CREATED="1752298773042" MODIFIED="1752298790129"/>
</node>
<node TEXT="几何着色器将构成图元的一组顶点作为输入，并能够通过发出新的顶点以形成新的（或其他）图元来生成其他形状。" ID="ID_1754622470" CREATED="1752298584578" MODIFIED="1752298585741"/>
<node TEXT="图元装配阶段将来自顶点（或几何）着色器的所有顶点（如果选择GL_POINTS，则为单个顶点）作为输入，这些顶点构成一个或多个图元，并将给定图元形状中的所有点进行装配" ID="ID_985780500" CREATED="1752298596842" MODIFIED="1752298597330"/>
<node TEXT="光栅化阶段，在该阶段，生成的图元会映射到最终屏幕上相应的像素，从而生成片段供片段着色器使用。" ID="ID_261200210" CREATED="1752298621390" MODIFIED="1752298640660"/>
<node TEXT="执行裁剪操作。裁剪会丢弃视野之外的所有片段，以提高性能。" ID="ID_417684784" CREATED="1752298641029" MODIFIED="1752298641488"/>
<node TEXT="片段着色器的主要目的是计算一个像素的最终颜色，通常所有高级OpenGL特效都在这个阶段发生。通常片段着色器包含有关3D场景的数据，它可以用这些数据来计算最终的像素颜色（比如光照、阴影、光的颜色等等）。" ID="ID_815201378" CREATED="1752298659379" MODIFIED="1752298659812"/>
<node TEXT="透明度测试与混合阶段。这个阶段会检查片段相应的深度（和模板）值，并利用这些值来判断生成的片段是在其他对象之前还是之后，进而决定是否应该丢弃它。该阶段还会检查透明度值（透明度值定义了对象的不透明度），并相应地对对象进行混合。" ID="ID_802121385" CREATED="1752298681650" MODIFIED="1752298685912"/>
</node>
</node>
<node TEXT="数学" POSITION="bottom_or_right" ID="ID_1614820575" CREATED="1750776198280" MODIFIED="1750776201448">
<edge COLOR="#7c007c"/>
<node TEXT="矩阵" ID="ID_556654557" CREATED="1750776201578" MODIFIED="1751077453988">
<node TEXT="旋转矩阵" ID="ID_1469351974" CREATED="1750777683012" MODIFIED="1750777689018">
<node TEXT="\latex \begin{pmatrix}&#xa;A&amp;  B&amp;  C&amp;  0\\&#xa;D&amp;  E&amp;  F&amp;  0\\&#xa;G&amp;  H&amp;  I&amp;  0\\&#xa;0&amp;  0&amp;  0&amp;  1\\&#xa;\end{pmatrix}" ID="ID_701803609" CREATED="1750777857857" MODIFIED="1750777981185">
<font SIZE="12"/>
</node>
<node TEXT="glm::rotate(mat4, θ, x, y, z)" ID="ID_1815363717" CREATED="1751077056806" MODIFIED="1751077064009">
<node TEXT="构建绕 X, Y, Z轴旋转θ度的缩放矩阵" ID="ID_1131641562" CREATED="1751077064917" MODIFIED="1751077066773"/>
</node>
<node TEXT="围绕任何轴的旋转都可以表示为绕X、Y、Z轴旋转的组合。围绕这3个轴的旋转角度被称为欧拉角" ID="ID_492059726" CREATED="1751077076607" MODIFIED="1751077083268"/>
<node TEXT="当3D空间中旋转轴不穿过原点时，物体使用欧拉角进行旋转需要几个额外的步骤" ID="ID_900459691" CREATED="1751077315709" MODIFIED="1751077319462">
<node TEXT="1.平移旋转轴以使它经过原点" ID="ID_548876887" CREATED="1751077324035" MODIFIED="1751077358292"/>
<node TEXT="2.绕X、Y和Z轴旋转适当的欧拉角；" ID="ID_210524513" CREATED="1751077330849" MODIFIED="1751077363280"/>
<node TEXT="3.复原步骤1中的平移" ID="ID_1604823408" CREATED="1751077336557" MODIFIED="1751077373966"/>
</node>
<node TEXT="旋转矩阵反向旋转的矩阵恰等于其转置矩阵" ID="ID_951514738" CREATED="1751077404870" MODIFIED="1751077418433"/>
<node TEXT="描述万向节死锁，给出一个例子，并解释为什么万向节死锁会是个问题" ID="ID_864382620" CREATED="1751087249318" MODIFIED="1751087251053"/>
<node TEXT="绕x轴" ID="ID_1011033002" CREATED="1751077221563" MODIFIED="1751077231376">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;X&apos; \\&#xa;Y&apos; \\&#xa;Z&apos; \\&#xa;1&#xa;\end{pmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; \cos\theta &amp; -\sin\theta &amp; 0 \\&#xa;0 &amp; \sin\theta &amp; \cos\theta &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\times&#xa;\begin{pmatrix}&#xa;X \\&#xa;Y \\&#xa;Z \\&#xa;1&#xa;\end{pmatrix}&#xa;\]" ID="ID_1502587106" CREATED="1751077241028" MODIFIED="1751077276302">
<font SIZE="12"/>
<node TEXT="mat4 buildRotateX(float rad)&#xa;{ mat4 xrot = mat4(1.0, 0.0, 0.0, 0.0,&#xa;                   0.0, cos(rad), -sin(rad), 0.0,&#xa;                   0.0, sin(rad), cos(rad), 0.0,&#xa;                   0.0, 0.0, 0.0, 1.0 );&#xa;  return xrot;&#xa;}" POSITION="bottom_or_right" ID="ID_1192505849" CREATED="1751086745154" MODIFIED="1751086746618"/>
</node>
</node>
<node TEXT="绕y轴" ID="ID_1486416341" CREATED="1751077231708" MODIFIED="1751077235799">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;X&apos; \\&#xa;Y&apos; \\&#xa;Z&apos; \\&#xa;1&#xa;\end{pmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;\cos\theta &amp; 0 &amp; \sin\theta &amp; 0 \\&#xa;0 &amp; 1 &amp; 0 &amp; 0 \\&#xa;-\sin\theta &amp; 0 &amp; \cos\theta &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\times&#xa;\begin{pmatrix}&#xa;X \\&#xa;Y \\&#xa;Z \\&#xa;1&#xa;\end{pmatrix}&#xa;\]" FOLDED="true" ID="ID_1332375352" CREATED="1751077258498" MODIFIED="1751077276301">
<font SIZE="12"/>
<node TEXT="mat4 buildRotateY(float rad)&#xa;{ mat4 yrot = mat4(cos(rad), 0.0, sin(rad), 0.0,&#xa;                   0.0, 1.0, 0.0, 0.0,&#xa;                   -sin(rad), 0.0, cos(rad), 0.0,&#xa;                   0.0, 0.0, 0.0, 1.0 );&#xa;  return yrot;&#xa;}" ID="ID_1419784032" CREATED="1751086765697" MODIFIED="1751086767805"/>
</node>
</node>
<node TEXT="绕z轴" ID="ID_1194472733" CREATED="1751077236131" MODIFIED="1751077239433">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;X&apos; \\&#xa;Y&apos; \\&#xa;Z&apos; \\&#xa;1&#xa;\end{pmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;\cos\theta &amp; -\sin\theta &amp; 0 &amp; 0 \\&#xa;\sin\theta &amp; \cos\theta &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; 1 &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\times&#xa;\begin{pmatrix}&#xa;X \\&#xa;Y \\&#xa;Z \\&#xa;1&#xa;\end{pmatrix}&#xa;\]" FOLDED="true" ID="ID_1211888907" CREATED="1751077269961" MODIFIED="1751077276295">
<font SIZE="12"/>
<node TEXT="mat4 buildRotateZ(float rad)&#xa;{ mat4 zrot = mat4(cos(rad), -sin(rad), 0.0, 0.0,&#xa;                   sin(rad), cos(rad), 0.0, 0.0,&#xa;                   0.0, 0.0, 1.0, 0.0,&#xa;                   0.0, 0.0, 0.0, 1.0 );&#xa;  return zrot;&#xa;}" ID="ID_1989593891" CREATED="1751086775596" MODIFIED="1751086778360"/>
</node>
</node>
</node>
<node TEXT="缩放矩阵" ID="ID_1768781758" CREATED="1750777689185" MODIFIED="1750777694968">
<node TEXT="\latex \begin{pmatrix}&#xa;S_x&amp;  0&amp;  0&amp;  0\\&#xa;0&amp;  S_y&amp;  0&amp;  0\\&#xa;0&amp;  0&amp;  S_z&amp;  0\\&#xa;0&amp;  0&amp;  0&amp;  1\\&#xa;\end{pmatrix}" FOLDED="true" ID="ID_367389216" CREATED="1750777967697" MODIFIED="1750777981191">
<font SIZE="12"/>
<node TEXT="mat4 buildScale(float x, float y, float z)&#xa;{ mat4 scale = mat4(x, 0.0, 0.0, 0.0,&#xa;                    0.0, y, 0.0, 0.0,                   &#xa;                    0.0, 0.0, z, 0.0,&#xa;                    0.0, 0.0, 0.0, 1.0 );&#xa;  return scale;&#xa;}" ID="ID_1806918118" CREATED="1751086786232" MODIFIED="1751086813253"/>
</node>
<node TEXT="glm::scale(x, y, z)" ID="ID_95153092" CREATED="1751076941418" MODIFIED="1751076949699"/>
<node TEXT="还可以用来切换坐标系，通过反转Z坐标就可以在右手坐标系和左手坐标系中切换" FOLDED="true" ID="ID_1624611906" CREATED="1751076966951" MODIFIED="1751077028771">
<node TEXT="\latex \begin{pmatrix}&#xa;1&amp;  0&amp;  0&amp;  0\\&#xa;0&amp;  1&amp;  0&amp;  0\\&#xa;0&amp;  0&amp;  -1&amp;  0\\&#xa;0&amp;  0&amp;  0&amp;  1\\&#xa;\end{pmatrix}" ID="ID_445695368" CREATED="1751076994464" MODIFIED="1751085334021" VSHIFT_QUANTITY="12.66667 pt">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="平移矩阵" ID="ID_581543989" CREATED="1750777695124" MODIFIED="1750777699096">
<node TEXT="\latex \begin{pmatrix}&#xa;1&amp;  0&amp;  0&amp;  T_x\\&#xa;0&amp;  1&amp;  0&amp;  T_y\\&#xa;0&amp;  0&amp;  1&amp;  T_z\\&#xa;0&amp;  0&amp;  0&amp;  1\\&#xa;\end{pmatrix}" POSITION="bottom_or_right" ID="ID_859254989" CREATED="1750777918070" MODIFIED="1750777981191">
<font SIZE="12"/>
<node TEXT="mat4 buildTranslate(float x, float y, float z)&#xa;{ mat4 trans = mat4(1.0, 0.0, 0.0, 0.0,&#xa;                    0.0, 1.0, 0.0, 0.0,&#xa;                    0.0, 0.0, 1.0, 0.0,&#xa;                    x, y, z, 1.0 );&#xa;  return trans;&#xa;}" POSITION="bottom_or_right" ID="ID_1153180529" CREATED="1751086730555" MODIFIED="1751086733594"/>
</node>
<node TEXT="glm::translate(x, y, z)" POSITION="bottom_or_right" ID="ID_1130769712" CREATED="1751076892850" MODIFIED="1751076906777"/>
</node>
<node TEXT="透视矩阵" ID="ID_485008415" CREATED="1751085902156" MODIFIED="1751085907738">
<node TEXT="\latex &#xa;&#xa;\[&#xa;\begin{bmatrix}&#xa;A &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; q &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; B &amp; C \\&#xa;0 &amp; 0 &amp; -1 &amp; 0&#xa;\end{bmatrix}&#xa;\]" ID="ID_270947260" CREATED="1751086080210" MODIFIED="1751086212513">
<font SIZE="12"/>
<node TEXT="\latex \[&#xa;q = \frac{1}{\tan\left( \frac{\text{fieldOfView}}{2} \right)}&#xa;\]" ID="ID_1503711921" CREATED="1751086168500" MODIFIED="1751086212513">
<font SIZE="12" BOLD="true"/>
<node TEXT="y方向fov" ID="ID_1523118418" CREATED="1751086244254" MODIFIED="1751086260577"/>
</node>
<node TEXT="\latex \[&#xa;A = \frac{q}{\text{aspectRatio}}&#xa;\]" ID="ID_22281390" CREATED="1751086280216" MODIFIED="1751086287474">
<font SIZE="12"/>
<node TEXT="aspectRatio = height / width" ID="ID_792294984" CREATED="1751191641176" MODIFIED="1751191653086"/>
</node>
<node TEXT="\latex&#xa;\[&#xa;B = \frac{Z_{\text{near}} + Z_{\text{far}}}{Z_{\text{near}} - Z_{\text{far}}}&#xa;\]&#xa;&#xa;" ID="ID_249271091" CREATED="1751086178386" MODIFIED="1751086212512">
<font SIZE="12"/>
</node>
<node TEXT="\latex \[&#xa;C = \frac{2 \cdot (Z_{\text{near}} \cdot Z_{\text{far}})}{Z_{\text{near}} - Z_{\text{far}}}&#xa;\]" ID="ID_1475078631" CREATED="1751086178524" MODIFIED="1751086212510">
<font SIZE="12"/>
</node>
</node>
<node TEXT="glm::perspective()" ID="ID_1616439679" CREATED="1751086853817" MODIFIED="1751086855628"/>
</node>
<node TEXT="正交矩阵" ID="ID_1670313172" CREATED="1751085908094" MODIFIED="1751085917884">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;\frac{2}{R - L} &amp; 0 &amp; 0 &amp; -\frac{R + L}{R - L} \\&#xa;0 &amp; \frac{2}{T - B} &amp; 0 &amp; -\frac{T + B}{T - B} \\&#xa;0 &amp; 0 &amp; \frac{1}{Z_{\text{far}} - Z_{\text{near}}} &amp; -\frac{Z_{\text{near}}}{Z_{\text{far}} - Z_{\text{near}}} \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_803339351" CREATED="1751086308534" MODIFIED="1751086315130">
<font SIZE="12"/>
<node TEXT="从相机到投影平面的距离Znear" ID="ID_1923576671" CREATED="1751086326932" MODIFIED="1751086341243"/>
<node TEXT="从相机到远剪裁平面的距离Zfar" ID="ID_833895846" CREATED="1751086349765" MODIFIED="1751086351280"/>
<node TEXT="L和R分别是投影平面左右边界的X坐标，T和B分别是投影平面上下边界的Y坐标" ID="ID_669386770" CREATED="1751086358090" MODIFIED="1751086373957"/>
</node>
</node>
<node TEXT="投影矩阵" ID="ID_402910235" CREATED="1750777699219" MODIFIED="1750777704226">
<node TEXT="\latex \begin{pmatrix}&#xa;d&amp;  0&amp;  0&amp;  0\\&#xa;0&amp;  d&amp;  0&amp;  0\\&#xa;0&amp;  0&amp;  1&amp;  0\\&#xa;\end{pmatrix}" ID="ID_1552755442" CREATED="1750778019669" MODIFIED="1750778024983">
<font SIZE="12"/>
</node>
</node>
<node TEXT="齐次视口-画布变换矩阵" ID="ID_387651466" CREATED="1750777709563" MODIFIED="1750777730225">
<node TEXT="\latex \begin{pmatrix}&#xa;\frac{C_{\text{w}}}{V_{\text{w}}} &amp;  0&amp;  0\\&#xa; 0&amp;  \frac{C_{\text{h}}}{V_{\text{h}}}&amp;  0\\&#xa; 0&amp;  0&amp;  1\\&#xa;\end{pmatrix}" ID="ID_1563056794" CREATED="1750778294809" MODIFIED="1750778302553">
<font SIZE="12"/>
</node>
</node>
<node TEXT="LookAt矩阵" ID="ID_636244257" CREATED="1751076851593" MODIFIED="1751076856123">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;\boldsymbol{side}_X &amp; \boldsymbol{side}_Y &amp; \boldsymbol{side}_Z &amp; -(\boldsymbol{side} \boldsymbol{\cdot} \boldsymbol{eye}) \\&#xa;\boldsymbol{up}_X &amp; \boldsymbol{up}_Y &amp; \boldsymbol{up}_Z &amp; -(\boldsymbol{up} \boldsymbol{\cdot} \boldsymbol{eye}) \\&#xa;-\boldsymbol{fwd}_X &amp; -\boldsymbol{fwd}_Y &amp; -\boldsymbol{fwd}_Z &amp; -(-\boldsymbol{fwd} \boldsymbol{\cdot} \boldsymbol{eye}) \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_963078100" CREATED="1751086394383" MODIFIED="1751086402284">
<font SIZE="12"/>
<node TEXT="\latex \[&#xa;\boldsymbol{fwd} = \text{normalize}(\boldsymbol{eye} - \boldsymbol{target})&#xa;\]" ID="ID_1246166670" CREATED="1751086413460" MODIFIED="1751086435641">
<font SIZE="12"/>
</node>
<node TEXT="\latex&#xa;\[&#xa;\boldsymbol{side} = \text{normalize}(-\boldsymbol{fwd} \times \boldsymbol{Y})&#xa;\]" ID="ID_725273000" CREATED="1751086422356" MODIFIED="1751086435641">
<font SIZE="12"/>
</node>
<node TEXT="\latex&#xa;\[&#xa;\boldsymbol{up} = \text{normalize}(\boldsymbol{side} \times (-\boldsymbol{fwd}))&#xa;\]" ID="ID_1463536044" CREATED="1751086427128" MODIFIED="1751086435639">
<font SIZE="12"/>
</node>
</node>
<node TEXT="glm::lookAt()" ID="ID_1472376292" CREATED="1751086831962" MODIFIED="1751086833438"/>
</node>
<node TEXT="API" POSITION="bottom_or_right" ID="ID_1036863850" CREATED="1751076674359" MODIFIED="1751076676759">
<node TEXT="glm::mat4 m(1.0f)" ID="ID_22918555" CREATED="1751076699602" MODIFIED="1751076706696">
<node TEXT="单位矩阵" ID="ID_704327938" CREATED="1751076707783" MODIFIED="1751076711734"/>
</node>
<node TEXT="glm::transpose(mat4)" ID="ID_1448196166" CREATED="1751076726997" MODIFIED="1751076728394">
<node TEXT="矩阵转置" ID="ID_1081612159" CREATED="1751076728651" MODIFIED="1751076751548"/>
</node>
<node TEXT="矩阵加法" ID="ID_1049249739" CREATED="1751076759121" MODIFIED="1751076787808"/>
<node TEXT="矩阵乘法" ID="ID_987436287" CREATED="1751076788331" MODIFIED="1751076792149">
<node TEXT="左乘" ID="ID_1595323577" CREATED="1751076792374" MODIFIED="1751076802208"/>
<node TEXT="右乘" ID="ID_338844067" CREATED="1751076803002" MODIFIED="1751076808284"/>
</node>
<node TEXT="inverse" ID="ID_1210021983" CREATED="1751076832419" MODIFIED="1751076833587">
<node TEXT="逆矩阵" ID="ID_60644978" CREATED="1751076833973" MODIFIED="1751076836948"/>
</node>
</node>
<node TEXT="通 过 对 每 个 变 换 矩 阵 进 ⾏ 转 置 ， 可 以 实 现 ⾏ 向 量 和 列 向 量 之 间 的 切 换" POSITION="bottom_or_right" ID="ID_1263534289" CREATED="1751182152376" MODIFIED="1751182155977">
<node TEXT="行向量右乘，列向量左乘" ID="ID_903825708" CREATED="1751182163592" MODIFIED="1751182180260"/>
<node TEXT="\latex $ {q}\&apos; = qTR $" ID="ID_188029360" CREATED="1751182216875" MODIFIED="1751182439526">
<font SIZE="14"/>
</node>
<node TEXT="\latex {q}\&apos; = R^TT^Tq" ID="ID_1684921920" CREATED="1751182299457" MODIFIED="1751182439529">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="向量" FOLDED="true" ID="ID_1714979182" CREATED="1751077458654" MODIFIED="1751077464977">
<node TEXT="w = 0，代表向量，w = 1，代表点" POSITION="bottom_or_right" ID="ID_830421109" CREATED="1750776209033" MODIFIED="1750776247400"/>
<node TEXT="3D中的任何点在齐次坐标中都有无限多种表现形式，w=1的这个点为齐次坐标中的正则表示（canonical  representation），除以w转换为正则形式(笛卡尔坐标)" POSITION="bottom_or_right" ID="ID_1466992453" CREATED="1750776214924" MODIFIED="1750778844750"/>
<node TEXT="向量表示大小和方向，没有位置" POSITION="bottom_or_right" ID="ID_1647497937" CREATED="1751077516977" MODIFIED="1751077531396"/>
<node TEXT="要对向量V使用变换矩阵M进行与点相同的变换，&#xa;一般需要计算M的逆转置矩阵，并用所得矩阵乘以V。在某些情况下，逆转置矩阵等于自己" POSITION="bottom_or_right" ID="ID_249454601" CREATED="1751086918618" MODIFIED="1751087101322" TEXT_WRITING_DIRECTION="LEFT_TO_RIGHT">
<font SIZE="10"/>
</node>
<node TEXT="API" ID="ID_624896655" CREATED="1751077577414" MODIFIED="1751077586993">
<node TEXT="加法/减法" ID="ID_947688352" CREATED="1751077590065" MODIFIED="1751079468075">
<node TEXT="A ± B = (u ± x, v ± y, w ± z)" ID="ID_1088529488" CREATED="1751079333797" MODIFIED="1751079450743"/>
<node TEXT="glm: vec3 ± vec3" ID="ID_1574057934" CREATED="1751077839885" MODIFIED="1751077841506"/>
<node TEXT="GLSL: vec3 ± vec3" ID="ID_1093357668" CREATED="1751077844908" MODIFIED="1751077845865"/>
</node>
<node TEXT="归一化" ID="ID_1475552708" CREATED="1751077609062" MODIFIED="1751077615128">
<node TEXT="glm: normalize(vec3) 或 normalize(vec4)" ID="ID_1890924158" CREATED="1751077620541" MODIFIED="1751077856162"/>
<node TEXT="GLSL: normalize(vec3) 或normalize(vec4)" ID="ID_1645701637" CREATED="1751077859966" MODIFIED="1751077863998"/>
<node TEXT="\latex \[&#xa;\hat{A} = \frac{\boldsymbol{A}}{|\boldsymbol{A}|} = \frac{\boldsymbol{A}}{\sqrt{u^2 + v^2 + w^2}}&#xa;\]" ID="ID_1681483384" CREATED="1751078354946" MODIFIED="1751079647141">
<font SIZE="12"/>
</node>
</node>
<node TEXT="点积" FOLDED="true" ID="ID_492129924" CREATED="1751078191590" MODIFIED="1751085129988">
<node TEXT="A·B = ux + vy + wz" ID="ID_1388058462" CREATED="1751078332311" MODIFIED="1751078336357"/>
<node TEXT="glm: dot(vec3,vec3) 或dot(vec4,vec4)" ID="ID_658072053" CREATED="1751078217580" MODIFIED="1751078239383"/>
<node TEXT="GLSL: dot(vec3,vec3) 或dot(vec4,vec4)" ID="ID_993781367" CREATED="1751078229212" MODIFIED="1751078235002"/>
<node TEXT="求解两向量夹角。设有向量V和W，计算其夹角为θ" ID="ID_1297461145" CREATED="1751079709647" MODIFIED="1751079713753">
<node TEXT="\latex \boldsymbol{V} \boldsymbol{\cdot} \boldsymbol{W} = \vert \boldsymbol{V} \vert \vert \boldsymbol{W} \vert \cos(\theta)&#xa;&#xa;" ID="ID_1801367013" CREATED="1751079787531" MODIFIED="1751079809451">
<font SIZE="12"/>
</node>
<node TEXT="\latex \cos(\theta) = \frac{\boldsymbol{V} \boldsymbol{\cdot} \boldsymbol{W}}{\vert \boldsymbol{V} \vert \vert \boldsymbol{W} \vert}" ID="ID_1219118153" CREATED="1751079810845" MODIFIED="1751079815941">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解向量的大小" ID="ID_1276098255" CREATED="1751083649457" MODIFIED="1751083672119">
<node TEXT="\latex \sqrt{\boldsymbol{V} \cdot \boldsymbol{V}}" POSITION="bottom_or_right" ID="ID_947470071" CREATED="1751083328572" MODIFIED="1751085099130">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解两向量是否正交，若正交，则" ID="ID_1994793206" CREATED="1751083685416" MODIFIED="1751083690330">
<node TEXT="\latex \boldsymbol{V} \cdot \boldsymbol{W} = 0" ID="ID_71632755" CREATED="1751083748666" MODIFIED="1751085099133">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解两向量是否平行，若平行，则" ID="ID_1500877181" CREATED="1751083694986" MODIFIED="1751085129987">
<node TEXT="\latex \boldsymbol{V} \cdot \boldsymbol{W} = \vert\boldsymbol{V}\vert\vert\boldsymbol{W} \vert" ID="ID_1470079836" CREATED="1751083782223" MODIFIED="1751085099133">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解两向量是否平行但指向相反方向，若满足，则" ID="ID_1500888917" CREATED="1751083705456" MODIFIED="1751083710942">
<node TEXT="\latex \boldsymbol{V} \cdot \boldsymbol{W} = -\vert\boldsymbol{V}\vert\vert\boldsymbol{W} \vert" ID="ID_1457194597" CREATED="1751083847998" MODIFIED="1751085099133">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解两向量夹角是否在（−90°～+90°）" ID="ID_1425077612" CREATED="1751083716277" MODIFIED="1751083729426">
<node TEXT="\latex \hat{\boldsymbol{V}} \cdot \hat{\boldsymbol{W}} &gt; 0" ID="ID_260073300" CREATED="1751083875380" MODIFIED="1751085099133">
<font SIZE="12"/>
</node>
</node>
<node TEXT="求解点P=(x, y, z)到平面S=(a, b, c, d)的最小有符号距离" ID="ID_978221961" CREATED="1751083737284" MODIFIED="1751083742660">
<node TEXT="\latex 首先，求垂直于 $S$ 的单位法向量：&#xa;\[&#xa;\hat{\boldsymbol{n}} = \left( \frac{a}{\sqrt{a^2 + b^2 + c^2}}, \frac{b}{\sqrt{a^2 + b^2 + c^2}}, \frac{c}{\sqrt{a^2 + b^2 + c^2}} \right)&#xa;\]&#xa;以及从原点到平面的最短距离&#xa;\[&#xa;D = \frac{d}{\sqrt{a^2 + b^2 + c^2}}&#xa;\]。之后从 $P$ 到 $S$ 的最小有符号距离为 $(\hat{\boldsymbol{n}} \boldsymbol{\cdot} P) + D$，其符号由 $P$ 在 $S$ 的哪边决定。" ID="ID_1509236908" CREATED="1751085083207" MODIFIED="1751085115250">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="叉积" ID="ID_583550846" CREATED="1751078243544" MODIFIED="1751078247062">
<node TEXT="A × B = (vz-wy, wx-uz, uy-vx)" ID="ID_605593749" CREATED="1751078300328" MODIFIED="1751078306628"/>
<node TEXT="glm: cross(vec3,vec3)" ID="ID_1355515861" CREATED="1751078247353" MODIFIED="1751078262090"/>
<node TEXT="GLSL: cross(vec3,vec3)" ID="ID_1079626513" CREATED="1751078266555" MODIFIED="1751078270357"/>
<node TEXT="任意两个不共线向量都定义了一个平面" ID="ID_863880357" CREATED="1751085154229" MODIFIED="1751085163401"/>
</node>
</node>
</node>
<node TEXT="欧拉角" FOLDED="true" ID="ID_1061000796" CREATED="1751185936711" MODIFIED="1751185939735">
<node TEXT="通过三次绕不同轴的旋转来定义刚体方向，旋转顺序和轴的选择决定了不同的欧拉角类型" POSITION="bottom_or_right" ID="ID_761667077" CREATED="1751186013504" MODIFIED="1751186015975"/>
<node TEXT="绕 x 轴旋转（偏航，Yaw）" POSITION="bottom_or_right" ID="ID_988294447" CREATED="1751186028592" MODIFIED="1751186028592"/>
<node TEXT="绕 y 轴旋转（俯仰，Pitch）" POSITION="bottom_or_right" ID="ID_671486731" CREATED="1751186028592" MODIFIED="1751186028592"/>
<node TEXT="绕 z 轴旋转（滚转，Roll）" POSITION="bottom_or_right" ID="ID_1818979819" CREATED="1751186028593" MODIFIED="1751186028593"/>
<node TEXT="局限性" POSITION="bottom_or_right" ID="ID_305638509" CREATED="1751186069861" MODIFIED="1751186070846">
<node TEXT="万向节锁（Gimbal Lock）：当第二次旋转使两个旋转轴重合时（如俯仰角为 ±90° 时，偏航轴与滚转轴重合），会导致自由度丢失，出现计算奇异点。" ID="ID_870963810" CREATED="1751186079427" MODIFIED="1751186080798"/>
<node TEXT="旋转顺序依赖：不同的旋转顺序（如 ZXY、YXZ）会导致不同的欧拉角，需明确约定顺序。" ID="ID_1171303571" CREATED="1751186087782" MODIFIED="1751186094750"/>
<node TEXT="非连续性：欧拉角在奇异点附近的微小变化可能导致角度值的剧烈跳变，影响控制稳定性。" ID="ID_992172334" CREATED="1751186099517" MODIFIED="1751186100501"/>
</node>
</node>
<node TEXT="四元数" FOLDED="true" ID="ID_1615181631" CREATED="1751185939897" MODIFIED="1751185945474">
<node TEXT="3D 图形使用单位四元数，单位四元数是数值大小为1的四元数。四元数具有一个向量分量和一个标量分量。" ID="ID_1613731224" CREATED="1751186285785" MODIFIED="1751186287640">
<node TEXT="\latex $q = [q_v, q_s]$" ID="ID_389831987" CREATED="1751186324197" MODIFIED="1751186347311">
<font SIZE="18"/>
</node>
</node>
<node TEXT="四 元 数 的 向 量 和 标 量 的 计 算 取 决 于 标 准 化 的 旋 转 轴 a 和 旋 转 ⾓ 度 0" FOLDED="true" ID="ID_158581365" CREATED="1751186299332" MODIFIED="1751186300837">
<node TEXT="\latex \[&#xa;q_v = \hat{a} \sin \frac{\theta}{2}&#xa;\]" ID="ID_572815266" CREATED="1751186349863" MODIFIED="1751186524673">
<font SIZE="18"/>
</node>
<node TEXT="\latex \[&#xa;q_s = \cos \frac{\theta}{2}&#xa;\]" ID="ID_199174667" CREATED="1751186514785" MODIFIED="1751186524670">
<font SIZE="18"/>
</node>
</node>
<node TEXT="假设飞船处于位置S，初始朝向为x轴，需要让其旋转，面向任意点P" ID="ID_290167621" CREATED="1751186534749" MODIFIED="1751186600115">
<node TEXT="1， 计 算 从 飞 船 到 任 意 点 “ P ” 的 向 量 ， 并&#xa;标 准 化 该 向 量" ID="ID_1710876824" CREATED="1751186601340" MODIFIED="1751186612719">
<node TEXT="\latex \[&#xa;\text{NewFacing} = \frac{P - S}{\| P - S \|}&#xa;\]" ID="ID_1761376809" CREATED="1751186640079" MODIFIED="1751186683182">
<font SIZE="18"/>
</node>
</node>
<node TEXT="2， 使 ⽤ 叉 积 运 算 来 计 算 飞 船 原 始 朝 向 和 新 朝 向 之 间 的 旋 转 轴 ， 并 标 准 化 该 向" ID="ID_1298205723" CREATED="1751186615284" MODIFIED="1751186622572">
<node TEXT="\latex \[&#xa;\hat{a} = \frac{\langle 1, 0, 0 \rangle \times \text{NewFacing}}{\| \langle 1, 0, 0 \rangle \times \text{NewFacing} \|}&#xa;\]" ID="ID_51997809" CREATED="1751186665717" MODIFIED="1751186683181">
<font SIZE="18"/>
</node>
</node>
<node TEXT="3，使 ⽤ 点 积 运 算 和 反 余 弦 来 计 算 旋 转 ⾓ 度" ID="ID_1794815828" CREATED="1751186627384" MODIFIED="1751186628671">
<node TEXT="\latex \[&#xa;\theta = \arccos\left( \langle 1, 0, 0 \rangle \cdot \text{NewFacing} \right)&#xa;\]" ID="ID_1248729460" CREATED="1751186676138" MODIFIED="1751186683179">
<font SIZE="18"/>
</node>
</node>
<node TEXT="4，将得到的旋转轴和旋转角带入四元数公式，得到四元数" ID="ID_760153980" CREATED="1751186696205" MODIFIED="1751186723930"/>
<node TEXT="需要注意计算前需要验证新朝向和原始朝向是不平行的，如果平行，点乘结果是0" ID="ID_1828800389" CREATED="1751186739679" MODIFIED="1751186787494"/>
</node>
<node TEXT="对四元数应用其他旋转" ID="ID_163367691" CREATED="1751186817698" MODIFIED="1751186824730"/>
<node TEXT="通过四元数旋转向量" ID="ID_1463050180" CREATED="1751186875613" MODIFIED="1751186882229"/>
<node TEXT="球面线形插值" ID="ID_1750769200" CREATED="1751186898108" MODIFIED="1751186902349"/>
<node TEXT="将四元数转换为矩阵" ID="ID_500185545" CREATED="1751186939820" MODIFIED="1751186945924"/>
</node>
</node>
</node>
</map>
