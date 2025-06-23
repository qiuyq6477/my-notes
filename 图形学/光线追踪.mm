<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="计算机图形学" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1750495316493" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="1.1">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_icons="BESIDE_NODES" associatedTemplateLocation="template:/standard-1.6.mm" show_tags="UNDER_NODES" show_icon_for_attributes="true" showTagCategories="false" show_note_icons="true"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
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
</node>
</node>
</map>
