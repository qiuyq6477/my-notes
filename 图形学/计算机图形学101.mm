<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="GAMES101" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1752074046887" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
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
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="变换" FOLDED="true" POSITION="bottom_or_right" ID="ID_1694800668" CREATED="1752072215941" MODIFIED="1752072221657">
<edge COLOR="#ff0000"/>
<node TEXT="为什么学习变换" ID="ID_296765819" CREATED="1752072221784" MODIFIED="1752072394524">
<node TEXT="动画" ID="ID_669024902" CREATED="1752072394720" MODIFIED="1752072399342"/>
<node TEXT="3d到2d的投影变换" ID="ID_234803439" CREATED="1752072399629" MODIFIED="1752072405322"/>
</node>
<node TEXT="线性变换" ID="ID_1520241035" CREATED="1752074609725" MODIFIED="1752074614461">
<node TEXT="缩放（scale）" POSITION="bottom_or_right" ID="ID_362629564" CREATED="1752072508939" MODIFIED="1752072708025">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;x&apos; \\&#xa;y&apos;&#xa;\end{bmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;s_x &amp; 0 \\&#xa;0 &amp; s_y&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;x \\&#xa;y&#xa;\end{bmatrix}&#xa;\]" ID="ID_218997489" CREATED="1752075108050" MODIFIED="1752243983713">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{S}(s_x, s_y) =&#xa;\begin{pmatrix}&#xa;s_x &amp; 0 &amp; 0 \\&#xa;0 &amp; s_y &amp; 0 \\&#xa;0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_720347325" CREATED="1752075606409" MODIFIED="1752243983717">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{S}(s_x, s_y, s_z) =&#xa;\begin{pmatrix}&#xa;s_x &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; s_y &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; s_z &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_897756595" CREATED="1752246591674" MODIFIED="1752247174701">
<font SIZE="14"/>
</node>
</node>
<node TEXT="反射（reflection）" POSITION="bottom_or_right" ID="ID_967249103" CREATED="1752072621262" MODIFIED="1752072702880">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;x&apos; \\&#xa;y&apos;&#xa;\end{bmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;-1 &amp; 0 \\&#xa;0 &amp; 1&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;x \\&#xa;y&#xa;\end{bmatrix}&#xa;\]" ID="ID_1492103189" CREATED="1752075118644" MODIFIED="1752243983718">
<font SIZE="14"/>
</node>
</node>
<node TEXT="切变（shear）" POSITION="bottom_or_right" ID="ID_1378206894" CREATED="1752072683174" MODIFIED="1752072692669">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;x&apos; \\&#xa;y&apos;&#xa;\end{bmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;1 &amp; a \\&#xa;0 &amp; 1&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;x \\&#xa;y&#xa;\end{bmatrix}&#xa;\]" ID="ID_1719138963" CREATED="1752075129905" MODIFIED="1752243983718">
<font SIZE="14"/>
</node>
</node>
<node TEXT="旋转（rotate）" POSITION="bottom_or_right" ID="ID_90049004" CREATED="1752072963998" MODIFIED="1752072971478">
<node TEXT="默认绕原点逆时针旋转" ID="ID_936299754" CREATED="1752072973791" MODIFIED="1752072983365"/>
<node TEXT="\latex \[&#xa;\mathbf{R}_\theta = &#xa;\begin{bmatrix}&#xa;{$\cos \theta$} &amp; {$-\sin \theta$} \\&#xa;{$\sin \theta$} &amp; {$\cos \theta$}&#xa;\end{bmatrix}&#xa;\]" ID="ID_1871684096" CREATED="1752075142550" MODIFIED="1752243983719">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{R}(-\theta) = &#xa;\mathbf{R}_\theta^T = &#xa;\mathbf{R}_\theta^{-1} = &#xa;\begin{bmatrix}&#xa;{$\cos \theta$} &amp; {$\sin \theta$} \\&#xa;{$-\sin \theta$} &amp; {$\cos \theta$}&#xa;\end{bmatrix}&#xa;\]" ID="ID_1501460807" CREATED="1752243673393" MODIFIED="1752244055606">
<arrowlink DESTINATION="ID_1783088254"/>
<font SIZE="14"/>
<node TEXT="矩阵的转置等于矩阵的逆，这个矩阵叫正交矩阵" ID="ID_242106049" CREATED="1752243913345" MODIFIED="1752243938888"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{R}(\alpha) =&#xa;\begin{pmatrix}&#xa;\cos \alpha &amp; -\sin \alpha &amp; 0 \\&#xa;\sin \alpha &amp; \cos \alpha &amp; 0 \\&#xa;0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_1451797586" CREATED="1752075612826" MODIFIED="1752243983720">
<font SIZE="14"/>
</node>
</node>
<node TEXT="三维旋转" POSITION="bottom_or_right" ID="ID_1608460827" CREATED="1752244913002" MODIFIED="1752244919966">
<node TEXT="欧拉角" ID="ID_208692670" CREATED="1752244927287" MODIFIED="1752244934712">
<node TEXT="Roll" POSITION="bottom_or_right" ID="ID_857508561" CREATED="1752245029465" MODIFIED="1752245032748"/>
<node TEXT="Pitch" POSITION="bottom_or_right" ID="ID_1005073687" CREATED="1752245033446" MODIFIED="1752245037681"/>
<node TEXT="Yaw" POSITION="bottom_or_right" ID="ID_1657861657" CREATED="1752245038359" MODIFIED="1752245040117"/>
</node>
<node TEXT="绕x轴" ID="ID_709899786" CREATED="1752245078712" MODIFIED="1752245081890">
<node TEXT="\latex \[&#xa;\mathbf{R}_x(\alpha) =&#xa;\begin{pmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; \cos \alpha &amp; -\sin \alpha &amp; 0 \\&#xa;0 &amp; \sin \alpha &amp; \cos \alpha &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_523752938" CREATED="1752246639226" MODIFIED="1752247174703">
<font SIZE="14"/>
</node>
</node>
<node TEXT="绕y轴" ID="ID_115776227" CREATED="1752245082334" MODIFIED="1752245085530">
<node TEXT="\latex \[&#xa;\mathbf{R}_y(\alpha) =&#xa;\begin{pmatrix}&#xa;\cos \alpha &amp; 0 &amp; \sin \alpha &amp; 0 \\&#xa;0 &amp; 1 &amp; 0 &amp; 0 \\&#xa;-\sin \alpha &amp; 0 &amp; \cos \alpha &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_1890565489" CREATED="1752246650273" MODIFIED="1752247174703">
<font SIZE="14"/>
</node>
</node>
<node TEXT="绕z轴" ID="ID_607320505" CREATED="1752245085710" MODIFIED="1752245089508">
<node TEXT="\latex \[&#xa;\mathbf{R}_z(\alpha) =&#xa;\begin{pmatrix}&#xa;\cos \alpha &amp; -\sin \alpha &amp; 0 &amp; 0 \\&#xa;\sin \alpha &amp; \cos \alpha &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; 1 &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_734417946" CREATED="1752246657968" MODIFIED="1752247174704">
<font SIZE="14"/>
</node>
</node>
<node TEXT="绕任意轴" ID="ID_261471649" CREATED="1752245089876" MODIFIED="1752245097272">
<node TEXT="Rodrigues&apos; Rotation Formula" ID="ID_1240174446" CREATED="1752245126420" MODIFIED="1752245131854"/>
<node TEXT="默认这个轴起点在原点，如果不在，先平移到原点，旋转完之后平移回去" ID="ID_1700598774" CREATED="1752245220674" MODIFIED="1752245244211"/>
<node TEXT="\latex \[&#xa;\mathbf{R}_{xyz}(\alpha, \beta, \gamma) = \mathbf{R}_x(\alpha) \mathbf{R}_y(\beta) \mathbf{R}_z(\gamma)&#xa;\]" ID="ID_514292203" CREATED="1752246681134" MODIFIED="1752247174704">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{R}(\mathbf{n}, \alpha) = \cos(\alpha) \mathbf{I} + (1 - \cos(\alpha)) \mathbf{n}\mathbf{n}^T + \sin(\alpha) \underbrace{&#xa;\begin{pmatrix}&#xa;0 &amp; -n_z &amp; n_y \\&#xa;n_z &amp; 0 &amp; -n_x \\&#xa;-n_y &amp; n_x &amp; 0&#xa;\end{pmatrix}&#xa;}_{\mathbf{N}}&#xa;\]" ID="ID_1336970147" CREATED="1752246702373" MODIFIED="1752247174704" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
<node TEXT="TODO：如何推导" ID="ID_86564146" CREATED="1752247200168" MODIFIED="1752247213037"/>
</node>
<node TEXT="xyzxyzxyz" ID="ID_1710695445" CREATED="1752244979601" MODIFIED="1752244982485"/>
</node>
</node>
<node TEXT="平移（translate）" ID="ID_567178516" CREATED="1752073765703" MODIFIED="1752073777600">
<node TEXT="无法用一个2x2的矩阵表示，因为不是线性变换" ID="ID_1285161597" CREATED="1752075472932" MODIFIED="1752075484486">
<node TEXT="\latex \[&#xa;\begin{bmatrix}&#xa;x&apos; \\&#xa;y&apos;&#xa;\end{bmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;a &amp; b \\&#xa;c &amp; d&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;x \\&#xa;y&#xa;\end{bmatrix}&#xa;+&#xa;\begin{bmatrix}&#xa;t_x \\&#xa;t_y&#xa;\end{bmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_22682373" CREATED="1752075224449" MODIFIED="1752243983720">
<font SIZE="14"/>
</node>
</node>
<node TEXT="齐次坐标下的表示" POSITION="bottom_or_right" ID="ID_147563712" CREATED="1752075460789" MODIFIED="1752075466691">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;x&apos; \\&#xa;y&apos; \\&#xa;w&apos;&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;1 &amp; 0 &amp; t_x \\&#xa;0 &amp; 1 &amp; t_y \\&#xa;0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\cdot&#xa;\begin{pmatrix}&#xa;x \\&#xa;y \\&#xa;1&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;x + t_x \\&#xa;y + t_y \\&#xa;1&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_689473641" CREATED="1752075304743" MODIFIED="1752243983721">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{T}(t_x, t_y) =&#xa;\begin{pmatrix}&#xa;1 &amp; 0 &amp; t_x \\&#xa;0 &amp; 1 &amp; t_y \\&#xa;0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_1469346856" CREATED="1752075633991" MODIFIED="1752243983722">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;\mathbf{T}(t_x, t_y, t_z) =&#xa;\begin{pmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; t_x \\&#xa;0 &amp; 1 &amp; 0 &amp; t_y \\&#xa;0 &amp; 0 &amp; 1 &amp; t_z \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_1099238719" CREATED="1752246617052" MODIFIED="1752246618964"/>
</node>
</node>
<node TEXT="仿射变换（affine map）" ID="ID_1967715920" CREATED="1752074614890" MODIFIED="1752074677315">
<node TEXT="线性变换 + 平移" ID="ID_277334897" CREATED="1752074641039" MODIFIED="1752074683798"/>
<node TEXT="原始形式" ID="ID_1693497494" CREATED="1752075584280" MODIFIED="1752075590613">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;x&apos; \\&#xa;y&apos;&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;a &amp; b \\&#xa;c &amp; d&#xa;\end{pmatrix}&#xa;\cdot&#xa;\begin{pmatrix}&#xa;x \\&#xa;y&#xa;\end{pmatrix}&#xa;+&#xa;\begin{pmatrix}&#xa;t_x \\&#xa;t_y&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_317489839" CREATED="1752075574975" MODIFIED="1752243983722">
<font SIZE="14"/>
</node>
</node>
<node TEXT="齐次坐标形式" ID="ID_505187866" CREATED="1752075590993" MODIFIED="1752075595298">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;x&apos; \\&#xa;y&apos; \\&#xa;1&#xa;\end{pmatrix}&#xa;=&#xa;\begin{pmatrix}&#xa;a &amp; b &amp; t_x \\&#xa;c &amp; d &amp; t_y \\&#xa;0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\cdot&#xa;\begin{pmatrix}&#xa;x \\&#xa;y \\&#xa;1&#xa;\end{pmatrix}&#xa;\]" POSITION="bottom_or_right" ID="ID_226336785" CREATED="1752075556319" MODIFIED="1752243983722">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="逆变换" ID="ID_1783088254" CREATED="1752074936120" MODIFIED="1752074949528">
<node TEXT="还原某个变换的效果" ID="ID_1977561736" CREATED="1752074949791" MODIFIED="1752074958709"/>
<node TEXT="等于矩阵的逆矩阵" ID="ID_1363552501" CREATED="1752074961791" MODIFIED="1752074966520"/>
</node>
<node TEXT="组合变换" ID="ID_1380156569" CREATED="1752074984875" MODIFIED="1752075684066">
<node TEXT="组合的顺序很重要" ID="ID_786258153" CREATED="1752074988940" MODIFIED="1752075692782"/>
<node TEXT="复杂的变换是由简单的变换组合来的" ID="ID_1380825295" CREATED="1752075761102" MODIFIED="1752075774821"/>
<node TEXT="通过矩阵乘法组合变换" ID="ID_1687300212" CREATED="1752075775400" MODIFIED="1752075787311"/>
<node TEXT="对于列向量来说，矩阵是左乘的" ID="ID_761755711" CREATED="1752075870945" MODIFIED="1752075960776"/>
</node>
<node TEXT="变换的分解" ID="ID_876568422" CREATED="1752076252207" MODIFIED="1752076255803">
<node TEXT="把一个坐标不在原点的矩阵绕它的左下角旋转" ID="ID_1104271211" CREATED="1752076256247" MODIFIED="1752076434884">
<node TEXT="先平移回原点" ID="ID_717865812" CREATED="1752076435201" MODIFIED="1752076446862"/>
<node TEXT="旋转" ID="ID_451134912" CREATED="1752076447052" MODIFIED="1752076450347"/>
<node TEXT="再平移回去" ID="ID_96564966" CREATED="1752076450536" MODIFIED="1752076457475"/>
</node>
</node>
<node TEXT="先应用线性变换再应用平移" ID="ID_158858885" CREATED="1752076370227" MODIFIED="1752243636472">
<arrowlink DESTINATION="ID_22682373"/>
</node>
</node>
<node TEXT="齐次坐标" FOLDED="true" POSITION="bottom_or_right" ID="ID_1245747091" CREATED="1752073754227" MODIFIED="1752073763381">
<edge COLOR="#0000ff"/>
<node TEXT="二维向量下平移，无法用一个2x2的矩阵去平移" ID="ID_78227032" CREATED="1752073880939" MODIFIED="1752073906976"/>
<node TEXT="可以统一所有的变换，但是也有缺点" ID="ID_1965847665" CREATED="1752074126434" MODIFIED="1752074135871">
<node TEXT="占用了额外的数据" ID="ID_1728874507" CREATED="1752074829081" MODIFIED="1752074875444"/>
<node TEXT="但是最后一行都是001，可以省略掉，对于仿射变换来说" ID="ID_477577996" CREATED="1752074876590" MODIFIED="1752074906691"/>
</node>
<node TEXT="二维下的齐次坐标表示" ID="ID_1546880908" CREATED="1752075318889" MODIFIED="1752075339662">
<node TEXT="\latex 2D point $\quad = (x, y,1)^T$&#xa; &#xa;" POSITION="bottom_or_right" ID="ID_157645008" CREATED="1752075245843" MODIFIED="1752243983723">
<font SIZE="14"/>
</node>
<node TEXT="\latex 2D vector $= (x, y, 0)^T$" POSITION="bottom_or_right" ID="ID_1244394368" CREATED="1752075278040" MODIFIED="1752243983724">
<font SIZE="14"/>
</node>
</node>
<node TEXT="三维下的齐次坐标表示" ID="ID_16409639" CREATED="1752076138968" MODIFIED="1752076144854"/>
<node TEXT="为什么point的w是1，vector的w是0" ID="ID_967377039" CREATED="1752075344460" MODIFIED="1752075359221">
<node TEXT="向量具有平移不变性" POSITION="bottom_or_right" ID="ID_1607505936" CREATED="1752074414522" MODIFIED="1752074428280"/>
<node TEXT="平移一个向量的时候，乘以平移矩阵之后，x和y不变" POSITION="bottom_or_right" ID="ID_679638737" CREATED="1752075366794" MODIFIED="1752075422246"/>
</node>
<node TEXT="运算规则" ID="ID_1530901656" CREATED="1752075444015" MODIFIED="1752075449544">
<node TEXT="vector+vector=vector" POSITION="bottom_or_right" ID="ID_691926263" CREATED="1752074438073" MODIFIED="1752074445443"/>
<node TEXT="point-point = vector" POSITION="bottom_or_right" ID="ID_1546504137" CREATED="1752074445934" MODIFIED="1752074450563"/>
<node TEXT="point+vector=point" POSITION="bottom_or_right" ID="ID_190232569" CREATED="1752074450862" MODIFIED="1752074455274"/>
<node TEXT="point+point = middle point" POSITION="bottom_or_right" ID="ID_286497536" CREATED="1752074455842" MODIFIED="1752074548289"/>
</node>
<node TEXT="齐次坐标和point的转换规则" ID="ID_1596475566" CREATED="1752075526665" MODIFIED="1752075539246">
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;x \\&#xa;y \\&#xa;w&#xa;\end{pmatrix}&#xa;\text{ is the 2D point }&#xa;\begin{pmatrix}&#xa;x/w \\&#xa;y/w \\&#xa;1&#xa;\end{pmatrix},\ w \neq 0&#xa;\]" POSITION="bottom_or_right" ID="ID_587145828" CREATED="1752075511146" MODIFIED="1752243983724">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="流程" POSITION="bottom_or_right" ID="ID_853749428" CREATED="1752412444058" MODIFIED="1752412699481">
<edge COLOR="#00ffff"/>
<node TEXT="模型变换（放置物体）" ID="ID_1859377584" CREATED="1752412449928" MODIFIED="1752412450897"/>
<node TEXT="View（视图）/ Camera Transformation（放置摄像机）" FOLDED="true" ID="ID_797647303" CREATED="1752412455725" MODIFIED="1752414096975">
<node TEXT="定义相机" POSITION="bottom_or_right" ID="ID_1335487946" CREATED="1752245719383" MODIFIED="1752245725151">
<node TEXT="Position，表示为e" ID="ID_1380906110" CREATED="1752245725483" MODIFIED="1752247110841"/>
<node TEXT="Look-at，表示为g" ID="ID_1940156212" CREATED="1752245730393" MODIFIED="1752247123117"/>
<node TEXT="Up direction，表示为t" ID="ID_782224355" CREATED="1752245734579" MODIFIED="1752247127696">
<node TEXT="不定义这个的话，可以左右旋转相机" ID="ID_1107178971" CREATED="1752245776529" MODIFIED="1752245788784"/>
</node>
</node>
<node TEXT="将相机和其他的所有物体同时移动，拍出来的东西是一样的，所以，可以默认将相机放到原点，看向-z轴，up direction是y轴" POSITION="bottom_or_right" ID="ID_506585333" CREATED="1752245814717" MODIFIED="1752245929384">
<node TEXT="将相机平移到原点" ID="ID_1005074812" CREATED="1752246013026" MODIFIED="1752246023942"/>
<node TEXT="将g旋转到-z轴" ID="ID_297177614" CREATED="1752246024186" MODIFIED="1752247134297"/>
<node TEXT="将t旋转到y轴" ID="ID_1724833392" CREATED="1752246036835" MODIFIED="1752247138337"/>
</node>
<node TEXT="将相机的x轴旋转到世界坐标的x轴，这个矩阵构建比较困难，但是从世界坐标的x轴旋转到相机的x轴，这个矩阵构建很简单，又因为旋转矩阵是正交矩阵，所有只需要转置就可以得到相机矩阵，然后将平移和旋转矩阵应用给其他的物体。" POSITION="bottom_or_right" ID="ID_1997527699" CREATED="1752246870452" MODIFIED="1752247049862"/>
<node TEXT="\latex \[&#xa;M_{view} = R_{view} T_{view}&#xa;\]" POSITION="bottom_or_right" ID="ID_1413820680" CREATED="1752246333106" MODIFIED="1752247085699">
<font SIZE="14"/>
<node TEXT="\latex \[&#xa;T_{view} =&#xa;\begin{bmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; -x_e \\&#xa;0 &amp; 1 &amp; 0 &amp; -y_e \\&#xa;0 &amp; 0 &amp; 1 &amp; -z_e \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_613841578" CREATED="1752246817470" MODIFIED="1752247085696">
<font SIZE="14"/>
<node TEXT="将相机平移到原点" ID="ID_1168698240" CREATED="1752413976411" MODIFIED="1752413983167"/>
</node>
<node TEXT="\latex \[&#xa;R_{view}^{-1} =&#xa;\begin{bmatrix}&#xa;x_{\hat{g} \times \hat{t}} &amp; x_t &amp; x_{-g} &amp; 0 \\&#xa;y_{\hat{g} \times \hat{t}} &amp; y_t &amp; y_{-g} &amp; 0 \\&#xa;z_{\hat{g} \times \hat{t}} &amp; z_t &amp; z_{-g} &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_330546802" CREATED="1752246828392" MODIFIED="1752247085698">
<font SIZE="14"/>
</node>
<node TEXT="\latex \[&#xa;R_{view} =&#xa;\begin{bmatrix}&#xa;x_{\hat{g} \times \hat{t}} &amp; y_{\hat{g} \times \hat{t}} &amp; z_{\hat{g} \times \hat{t}} &amp; 0 \\&#xa;x_t &amp; y_t &amp; z_t &amp; 0 \\&#xa;x_{-g} &amp; y_{-g} &amp; z_{-g} &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_313140291" CREATED="1752246856004" MODIFIED="1752247085699">
<font SIZE="14"/>
<node TEXT="将相机的坐标与世界坐标对其，看向-z轴" POSITION="bottom_or_right" ID="ID_1085389593" CREATED="1752413984587" MODIFIED="1752414008654"/>
</node>
</node>
</node>
<node TEXT="Projection（投影）Transformation" FOLDED="true" ID="ID_1885194828" CREATED="1752412461365" MODIFIED="1752414082005">
<node TEXT="正交投影，把立方体变换到NDC空间" FOLDED="true" ID="ID_328012446" CREATED="1752412482282" MODIFIED="1752412483167">
<node TEXT="Orthographic（正交）Projection" POSITION="bottom_or_right" ID="ID_1440204909" CREATED="1752244175923" MODIFIED="1752244204692"/>
<node TEXT="相机离得无限远，导致远近平面看到的效果一样，相当于把z轴扔掉了，无论z大于0还是小于0" POSITION="bottom_or_right" ID="ID_1607800453" CREATED="1752330768065" MODIFIED="1752331719553"/>
<node TEXT="正交立方体定义，可以在任意位置" POSITION="bottom_or_right" ID="ID_617353032" CREATED="1752331734964" MODIFIED="1752331759280">
<node TEXT="左右平面，l和r" POSITION="bottom_or_right" ID="ID_804540946" CREATED="1752331461136" MODIFIED="1752331569318"/>
<node TEXT="下上平面，b和t" POSITION="bottom_or_right" ID="ID_1951468107" CREATED="1752331538490" MODIFIED="1752331584051"/>
<node TEXT="远近平面，f和n" POSITION="bottom_or_right" ID="ID_1496105620" CREATED="1752331584358" MODIFIED="1752331594827">
<node TEXT="因为是右手系，所以f比n小" ID="ID_966241195" CREATED="1752331599084" MODIFIED="1752331613812"/>
</node>
</node>
<node TEXT="正交矩阵" POSITION="bottom_or_right" ID="ID_577776465" CREATED="1752331456090" MODIFIED="1752331654329">
<node TEXT="右手坐标系" POSITION="bottom_or_right" ID="ID_96186659" CREATED="1752331341253" MODIFIED="1752331349477">
<node TEXT="\latex \[&#xa;M_{ortho} =&#xa;\begin{bmatrix}&#xa;\dfrac{2}{r - l} &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; \dfrac{2}{t - b} &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; \dfrac{2}{n - f} &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; -\dfrac{r + l}{2} \\&#xa;0 &amp; 1 &amp; 0 &amp; -\dfrac{t + b}{2} \\&#xa;0 &amp; 0 &amp; 1 &amp; -\dfrac{n + f}{2} \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;=&#xa;\begin{bmatrix}&#xa;\dfrac{2}{r - l} &amp; 0 &amp; 0 &amp; -\dfrac{r+l}{r - l} \\&#xa;0 &amp; \dfrac{2}{t - b} &amp; 0 &amp; -\dfrac{t+b}{t - b} \\&#xa;0 &amp; 0 &amp; \dfrac{2}{n - f} &amp; -\dfrac{n+f}{n - f} \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_1122306865" CREATED="1752331822310" MODIFIED="1752392411770" MAX_WIDTH="30 cm">
<font SIZE="14"/>
</node>
</node>
<node TEXT="左手坐标系" POSITION="bottom_or_right" ID="ID_381296170" CREATED="1752331336747" MODIFIED="1752331340935">
<node TEXT="\latex \[&#xa;M_{ortho} =&#xa;\begin{bmatrix}&#xa;\dfrac{2}{r - l} &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; \dfrac{2}{t - b} &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; \dfrac{2}{f - n} &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\begin{bmatrix}&#xa;1 &amp; 0 &amp; 0 &amp; -\dfrac{r + l}{2} \\&#xa;0 &amp; 1 &amp; 0 &amp; -\dfrac{t + b}{2} \\&#xa;0 &amp; 0 &amp; 1 &amp; -\dfrac{n + f}{2} \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;\]" ID="ID_1769463920" CREATED="1752331828672" MODIFIED="1752376878910" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
</node>
<node TEXT="注意z轴缩放的区别" POSITION="bottom_or_right" ID="ID_1629501362" CREATED="1752332524133" MODIFIED="1752332531747"/>
<node TEXT="\latex 通过缩放和平移操作，将三维空间中位于 $[l, r] \times [b, t] \times [n, f]$ 区域内的点映射到规范立方体 $[-1, 1]^3$ 中。" POSITION="bottom_or_right" ID="ID_960884020" CREATED="1752332685495" MODIFIED="1752333575586"/>
</node>
<node TEXT="正交变换就是通过正交矩阵将所有的物体变换到ndc空间，此时，物体会被拉伸，但是视口变换会修正" POSITION="bottom_or_right" ID="ID_213208731" CREATED="1752331624304" MODIFIED="1752331666884"/>
</node>
<node TEXT="透视投影，把视锥体变换到NDC空间" ID="ID_1358988016" CREATED="1752412487635" MODIFIED="1752412488001">
<node TEXT="Perspective（透视）Projection" POSITION="bottom_or_right" ID="ID_711154663" CREATED="1752244189613" MODIFIED="1752244201244"/>
<node TEXT="frustum参数定义" POSITION="bottom_or_right" ID="ID_1534887158" CREATED="1752410473079" MODIFIED="1752410485801">
<node TEXT="已知fovY，aspect（宽高比），n，f，求l，r，t，b" ID="ID_1671405237" CREATED="1752410485921" MODIFIED="1752411016875"/>
<node TEXT="\latex \tan \frac{fovY}{2} = \frac{t}{|n|} " POSITION="bottom_or_right" ID="ID_497590769" CREATED="1752410846828" MODIFIED="1752410903507">
<font SIZE="16"/>
</node>
<node TEXT="\latex \text{aspect} = \frac{r}{t}" POSITION="bottom_or_right" ID="ID_1839825987" CREATED="1752410898407" MODIFIED="1752410903503">
<font SIZE="16"/>
</node>
<node TEXT="\latex t = \tan \frac{fovY}{2} |n| " POSITION="bottom_or_right" ID="ID_330680797" CREATED="1752411025051" MODIFIED="1752411065288">
<font SIZE="16"/>
</node>
<node TEXT="\latex b = -t" POSITION="bottom_or_right" ID="ID_1157188070" CREATED="1752411086349" MODIFIED="1752411104309">
<font SIZE="16"/>
</node>
<node TEXT="\latex r = aspect t" POSITION="bottom_or_right" ID="ID_874332968" CREATED="1752411070566" MODIFIED="1752411083505">
<font SIZE="16"/>
</node>
<node TEXT="\latex l = -r" POSITION="bottom_or_right" ID="ID_674854654" CREATED="1752411092935" MODIFIED="1752411104304">
<font SIZE="16"/>
</node>
</node>
<node TEXT="第一种推导方式" POSITION="bottom_or_right" ID="ID_610607206" CREATED="1752411669862" MODIFIED="1752411674989">
<node TEXT="将frustum挤压成cuboid，然后使用正交投影" POSITION="bottom_or_right" ID="ID_1978822353" CREATED="1752373208759" MODIFIED="1752374414698">
<node TEXT="f平面中心坐标不变，所有点的z坐标不变" ID="ID_212960791" CREATED="1752373281244" MODIFIED="1752377189471">
<arrowlink DESTINATION="ID_1977316882" STARTINCLINATION="20.66667 pt;11.33333 pt;" ENDINCLINATION="462 pt;-56.66667 pt;"/>
</node>
<node TEXT="因为n平面所有坐标在挤压后不会改变" ID="ID_1907645723" CREATED="1752373312470" MODIFIED="1752377196136">
<arrowlink DESTINATION="ID_78110571" STARTINCLINATION="224 pt;0 pt;" ENDINCLINATION="83.33333 pt;-32 pt;"/>
</node>
<node TEXT="四维齐次坐标同时乘一个数，3d坐标不变" ID="ID_818778094" CREATED="1752374676327" MODIFIED="1752374715209"/>
</node>
<node TEXT="计算挤压后的坐标" POSITION="bottom_or_right" ID="ID_1816598803" CREATED="1752374520658" MODIFIED="1752375478537">
<node TEXT="\latex $x&apos; = \frac{n}{z} x$" POSITION="bottom_or_right" ID="ID_274200282" CREATED="1752374504043" MODIFIED="1752374653329" HGAP_QUANTITY="12 pt">
<font SIZE="16"/>
</node>
<node TEXT="\latex $y&apos; = \frac{n}{z} y $" POSITION="bottom_or_right" ID="ID_1169901994" CREATED="1752374482752" MODIFIED="1752374653328">
<font SIZE="16"/>
</node>
<node TEXT="\latex $ z&apos; = unknow $" POSITION="bottom_or_right" ID="ID_1994000628" CREATED="1752374578096" MODIFIED="1752374653323">
<font SIZE="16"/>
</node>
<node TEXT="基于相似三角形来计算" ID="ID_906328062" CREATED="1752374542590" MODIFIED="1752374563728"/>
</node>
<node TEXT="推导挤压矩阵" POSITION="bottom_or_right" ID="ID_912453970" CREATED="1752374929492" MODIFIED="1752375495115">
<node TEXT="\latex \[&#xa;M_{\textit{persp} \to \textit{ortho}}^{(4 \times 4)}&#xa;\begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} x&apos; \\ y&apos; \\ z&apos; \\ 1 \end{pmatrix} &#xa;=&#xa;\begin{pmatrix} nx/z \\ ny/z \\ \text{unknown} \\ 1 \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} nx/z \\ ny/z \\ \text{unknown} \\ 1 \end{pmatrix}&#xa;\textcolor{blue}{\text{ mult by } z}&#xa;=&#xa;\begin{pmatrix} nx \\ ny \\ \text{still unknown} \\ z \end{pmatrix}&#xa;\]" ID="ID_1849133008" CREATED="1752374965387" MODIFIED="1752375532947" MAX_WIDTH="30 cm">
<font SIZE="16"/>
</node>
<node TEXT="\latex \[&#xa;M_{\textit{persp} \to \textit{ortho}}^{(4 \times 4)}&#xa;\begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} nx \\ ny \\ \text{unknown} \\ z \end{pmatrix}&#xa;\]" ID="ID_1016353198" CREATED="1752375611401" MODIFIED="1752375617477">
<font SIZE="16"/>
</node>
<node TEXT="\latex \[&#xa;M_{\textit{persp} \to \textit{ortho}} =&#xa;\begin{pmatrix}&#xa;n &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; n &amp; 0 &amp; 0 \\&#xa;? &amp; ? &amp; ? &amp; ? \\&#xa;0 &amp; 0 &amp; 1 &amp; 0&#xa;\end{pmatrix}&#xa;\]" ID="ID_1161731448" CREATED="1752375467569" MODIFIED="1752375512485">
<font SIZE="16"/>
</node>
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;n &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; n &amp; 0 &amp; 0 \\&#xa;A &amp; B &amp; C &amp; D \\&#xa;0 &amp; 0 &amp; 1 &amp; 0&#xa;\end{pmatrix}&#xa;\begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} x \\ y \\ n \\ 1 \end{pmatrix}&#xa;==&#xa;\begin{pmatrix} nx \\ ny \\ n^2 \\ n \end{pmatrix}&#xa;\]" ID="ID_78110571" CREATED="1752375718107" MODIFIED="1752376089697" MAX_WIDTH="20 cm">
<font SIZE="16"/>
<node TEXT="\latex \[ &#xa;\begin{pmatrix} A &amp; B &amp; C &amp; D \end{pmatrix}&#xa;\begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}&#xa;=&#xa;n^2&#xa;\]" ID="ID_701449586" CREATED="1752375872318" MODIFIED="1752376411176">
<font SIZE="16"/>
<node TEXT="\latex \[ &#xa;A = 0 &#xa;\]" POSITION="bottom_or_right" ID="ID_738443188" CREATED="1752376039981" MODIFIED="1752376147886">
<font SIZE="16"/>
</node>
<node TEXT="\latex \[&#xa;B = 0&#xa;\]" POSITION="bottom_or_right" ID="ID_1592797899" CREATED="1752376149421" MODIFIED="1752376163486">
<font SIZE="16"/>
</node>
<node TEXT="\latex \[&#xa;Cn + D = n^2 &#xa;\]" POSITION="bottom_or_right" ID="ID_590444039" CREATED="1752376366566" MODIFIED="1752376456746">
<font SIZE="16"/>
</node>
</node>
</node>
<node TEXT="\latex \[&#xa;\begin{pmatrix}&#xa;n &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; n &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; C &amp; D \\&#xa;0 &amp; 0 &amp; 1 &amp; 0&#xa;\end{pmatrix}&#xa;\begin{pmatrix} x \\ y \\ z \\ 1 \end{pmatrix}&#xa;=&#xa;\begin{pmatrix} 0 \\ 0 \\ f \\ 1 \end{pmatrix}&#xa;==&#xa;\begin{pmatrix} 0 \\ 0 \\ f^2 \\ f \end{pmatrix}&#xa;\]" ID="ID_1977316882" CREATED="1752376200010" MODIFIED="1752376281302" MAX_WIDTH="20 cm">
<font SIZE="16"/>
<node TEXT="\latex $Cf + D = f^2$" ID="ID_377334013" CREATED="1752376705729" MODIFIED="1752376725225">
<font SIZE="16"/>
</node>
</node>
<node TEXT="\latex \[&#xa;\begin{cases}&#xa;Cn + D = n^2 \\&#xa;Cf + D = f^2&#xa;\end{cases}&#xa;\]" ID="ID_824362116" CREATED="1752376736951" MODIFIED="1752376825116">
<font SIZE="16"/>
<node TEXT="\latex \begin{cases}&#xa;C = n + f \\&#xa;D = -nf&#xa;\end{cases}" ID="ID_1047181224" CREATED="1752376793347" MODIFIED="1752376831990">
<font SIZE="16"/>
</node>
</node>
</node>
<node TEXT="得出最终的投影矩阵" POSITION="bottom_or_right" ID="ID_689077165" CREATED="1752376842199" MODIFIED="1752377121869">
<node TEXT="\latex \[&#xa;M_{\textit{persp}} = M_{\textit{ortho}} \, M_{\textit{persp} \to \textit{ortho}}&#xa;\]" ID="ID_648946546" CREATED="1752376850935" MODIFIED="1752376855547">
<font SIZE="16"/>
</node>
<node TEXT="\latex &#xa;\begin{bmatrix}&#xa;\dfrac{2}{r - l} &amp; 0 &amp; 0 &amp; -\dfrac{r+l}{r - l} \\&#xa;0 &amp; \dfrac{2}{t - b} &amp; 0 &amp; -\dfrac{t+b}{t - b} \\&#xa;0 &amp; 0 &amp; \dfrac{2}{n - f} &amp; -\dfrac{n+f}{n - f} \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{bmatrix}&#xa;&#xa;\begin{pmatrix}&#xa;n &amp; 0 &amp; 0 &amp; 0 \\&#xa;0 &amp; n &amp; 0 &amp; 0 \\&#xa;0 &amp; 0 &amp; n+f &amp; -nf \\&#xa;0 &amp; 0 &amp; 1 &amp; 0&#xa;\end{pmatrix}" ID="ID_256428510" CREATED="1752376937362" MODIFIED="1752392448922" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
<node TEXT="\latex \begin{bmatrix}&#xa;\dfrac{2n}{r - l} &amp; 0 &amp; -\dfrac{(r + l)}{r - l} &amp; 0 \\&#xa;0 &amp; \dfrac{2n}{t - b} &amp; -\dfrac{(t + b)}{t - b} &amp; 0 \\&#xa;0 &amp; 0 &amp; \dfrac{n + f}{n - f} &amp; -\dfrac{2nf}{n - f} \\&#xa;0 &amp; 0 &amp; 1 &amp; 0&#xa;\end{bmatrix}" ID="ID_615576170" CREATED="1752377074754" MODIFIED="1752392794760">
<font SIZE="16"/>
</node>
</node>
</node>
<node TEXT="第二种推导方式" POSITION="bottom_or_right" ID="ID_451973999" CREATED="1752411697591" MODIFIED="1752411702364"/>
</node>
<node TEXT="场景中的物体通过这个变换矩阵也都会变换到NDC空间" ID="ID_1064642015" CREATED="1752412543135" MODIFIED="1752412564174"/>
</node>
<node TEXT="视口变换（从NDC空间变换到屏幕空间）" FOLDED="true" ID="ID_597965370" CREATED="1752412465968" MODIFIED="1752412466346">
<node TEXT="\latex \[&#xa;M_{viewport} =&#xa;\begin{pmatrix}&#xa;\dfrac{width}{2} &amp; 0 &amp; 0 &amp; \dfrac{width}{2} \\&#xa;0 &amp; \dfrac{height}{2} &amp; 0 &amp; \dfrac{height}{2} \\&#xa;0 &amp; 0 &amp; 1 &amp; 0 \\&#xa;0 &amp; 0 &amp; 0 &amp; 1&#xa;\end{pmatrix}&#xa;\]" ID="ID_1064525487" CREATED="1752413839506" MODIFIED="1752413850654" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
</node>
<node TEXT="光栅化" FOLDED="true" ID="ID_921302436" CREATED="1752412467920" MODIFIED="1752412471924">
<node TEXT="理论基础" POSITION="bottom_or_right" ID="ID_958645878" CREATED="1752416904805" MODIFIED="1752416907479">
<node TEXT="光栅化要解决的核心问题就是如何用离散的像素集合，近似表示连续的三角形？答案是通过采样" POSITION="bottom_or_right" ID="ID_501008857" CREATED="1752416318248" MODIFIED="1752416925096">
<node TEXT="判断每个像素是否属于三角形" ID="ID_1803107427" CREATED="1752416346548" MODIFIED="1752416348496"/>
</node>
<node TEXT="什么是采样" POSITION="bottom_or_right" ID="ID_331248245" CREATED="1752416465176" MODIFIED="1752416472347">
<node TEXT="在一个点上计算函数值，就是采样" ID="ID_1974384762" CREATED="1752416487256" MODIFIED="1752416489707"/>
<node TEXT="函数（如 f(x)）本质是连续的，“采样” 就是在特定位置（离散点）计算函数值，将连续信息 “提取” 为离散值。" ID="ID_1662543850" CREATED="1752416503126" MODIFIED="1752416503491"/>
<node TEXT="哪些可以采样" ID="ID_487261830" CREATED="1752416674652" MODIFIED="1752416762219" MAX_WIDTH="20 cm">
<node TEXT="时间（1D）" ID="ID_515372996" CREATED="1752416763036" MODIFIED="1752416767230">
<node TEXT="动画、视频是连续时间的离散采样（每秒 24/30/60 帧）。" POSITION="bottom_or_right" ID="ID_1240944262" CREATED="1752416707138" MODIFIED="1752416712119"/>
</node>
<node TEXT="面积（2D）" ID="ID_597682839" CREATED="1752416767495" MODIFIED="1752416780499">
<node TEXT="判断像素是否被三角形覆盖（2D 屏幕的面积采样）。" POSITION="bottom_or_right" ID="ID_688027305" CREATED="1752416715588" MODIFIED="1752416715995"/>
</node>
<node TEXT="方向（2D）" ID="ID_1526765103" CREATED="1752416773157" MODIFIED="1752416781442">
<node TEXT="光线追踪中随机采样光线方向，模拟全局光照。" POSITION="bottom_or_right" ID="ID_466642438" CREATED="1752416719679" MODIFIED="1752416720014"/>
</node>
<node TEXT="体积（3D）" ID="ID_1452606164" CREATED="1752416777434" MODIFIED="1752416782245">
<node TEXT="体渲染中对三维数据场（如烟雾、流体）的离散采样。" POSITION="bottom_or_right" ID="ID_1967995880" CREATED="1752416723524" MODIFIED="1752416723835"/>
</node>
</node>
</node>
<node TEXT="通过采样将函数离散化" POSITION="bottom_or_right" ID="ID_1302577315" CREATED="1752416614289" MODIFIED="1752416615410">
<node TEXT="离散化是把连续信号（如函数、图像）转化为计算机可处理的离散数据。采样是离散化的关键步骤 —— 通过在一系列离散点上取值，用离散值近似表示连续函数。" ID="ID_1123383405" CREATED="1752416636587" MODIFIED="1752416638989"/>
</node>
</node>
<node TEXT="为什么是三角形" POSITION="bottom_or_right" ID="ID_1125116624" CREATED="1752413574369" MODIFIED="1752413579035">
<node TEXT="最基础的多边形" ID="ID_240544448" CREATED="1752413579408" MODIFIED="1752414214767">
<node TEXT="因为它是边数最少的封闭多边形（3 条边）。少于 3 条边无法构成封闭平面图形，这决定了它在几何分解中的基础地位。" ID="ID_967071545" CREATED="1752414252019" MODIFIED="1752414253019"/>
</node>
<node TEXT="可分解其他多边形" ID="ID_474835677" CREATED="1752413621162" MODIFIED="1752414218677">
<node TEXT="任何复杂多边形（如四边形、五边形等）都能拆分成多个三角形。" ID="ID_898686647" CREATED="1752414258415" MODIFIED="1752414259285"/>
</node>
<node TEXT="确保是平面的" ID="ID_1970904041" CREATED="1752413590500" MODIFIED="1752414226091">
<node TEXT="空间中任意三点必共面，因此三角形天然是平面图形。" ID="ID_1431863739" CREATED="1752414267553" MODIFIED="1752414268404"/>
<node TEXT="这对图形渲染至关重要 —— 在计算光照、纹理映射时，平面性保证了数学计算的确定性（如法向量一致、插值规则简单）。" ID="ID_186914694" CREATED="1752414282282" MODIFIED="1752414282801"/>
</node>
<node TEXT="内部定义明确" ID="ID_1426188462" CREATED="1752413605811" MODIFIED="1752414229788">
<node TEXT="三角形的边是直线段，结合 “右手定则” 等规则，能清晰判定点是否在三角形内部。相比复杂多边形（如凹多边形可能出现内部判定歧义），三角形的内外判定简单、唯一，是光栅化（将几何图形转化为像素）的基础。" ID="ID_1286752985" CREATED="1752414296051" MODIFIED="1752414297357"/>
</node>
<node TEXT="存在成熟的顶点值插值方法（重心插值）" ID="ID_861400098" CREATED="1752413642850" MODIFIED="1752414233415">
<node TEXT="当三角形顶点有不同属性（如颜色、深度、纹理坐标）时，可通过重心坐标公式，计算三角形内部任意点的属性值。" ID="ID_438493103" CREATED="1752414306622" MODIFIED="1752414307452"/>
</node>
</node>
<node TEXT="几个概念定义" POSITION="bottom_or_right" ID="ID_817466496" CREATED="1752411848713" MODIFIED="1752411853672">
<node TEXT="屏幕：二维数组，里面的元素类型是像素，数组的大小代表分辨率" ID="ID_1210316682" CREATED="1752411853949" MODIFIED="1752411997636" MAX_WIDTH="12 cm">
<node TEXT="像素的索引形式为 (x, y)，其中 x 和 y 均为整数" ID="ID_831770431" CREATED="1752414150587" MODIFIED="1752414152805"/>
<node TEXT="像素索引的范围是从 (0, 0) 到 (width - 1, height - 1)" ID="ID_901269394" CREATED="1752414156673" MODIFIED="1752414157043"/>
<node TEXT="像素 (x, y) 的中心位于 (x + 0.5, y + 0.5)" ID="ID_1039070002" CREATED="1752414161275" MODIFIED="1752414161632"/>
<node TEXT="屏幕覆盖的范围是从 (0, 0) 到 (width, height)" ID="ID_907823082" CREATED="1752414165363" MODIFIED="1752414165651"/>
</node>
<node TEXT="raster：光栅；rasterize：光栅化，把东西画到屏幕上" ID="ID_794916730" CREATED="1752411919764" MODIFIED="1752411954098"/>
<node TEXT="像素：简单理解就是有三个颜色组成，RGB" ID="ID_1539687138" CREATED="1752411958211" MODIFIED="1752411976499"/>
<node TEXT="屏幕空间：左下角是0，0；x轴向右，y轴向上" ID="ID_1946764448" CREATED="1752412052706" MODIFIED="1752412086203"/>
</node>
<node TEXT="判断像素的中心点在不在三角形内部" POSITION="bottom_or_right" ID="ID_1839054932" CREATED="1752413774083" MODIFIED="1752415969979">
<node TEXT="通过叉乘来判断，顺时针或者逆时针遍历三角形三条边，与像素中心做叉乘，如果全都同向，则在三角形内部，否则不在" ID="ID_232005723" CREATED="1752415970319" MODIFIED="1752416027233"/>
<node TEXT="当点在三角形边界，需要订一个规则，opengl和directx是将左边和上边判断为三角形内部" ID="ID_1421691686" CREATED="1752416052108" MODIFIED="1752416120238"/>
<node TEXT="先找出三角形的包围框，然后逐像素遍历" ID="ID_1240012613" CREATED="1752416131748" MODIFIED="1752416170673"/>
</node>
<node TEXT="扫描线算法" POSITION="bottom_or_right" ID="ID_759958429" CREATED="1752416179358" MODIFIED="1752416862785"/>
<node TEXT="重心坐标法" POSITION="bottom_or_right" ID="ID_1387007194" CREATED="1752416867893" MODIFIED="1752416868202"/>
</node>
<node TEXT="遮挡剔除" FOLDED="true" ID="ID_258740504" CREATED="1752587520872" MODIFIED="1752587550199">
<node TEXT="画家算法" ID="ID_717686702" CREATED="1752587596075" MODIFIED="1752587600278">
<node TEXT="类似于画画，先画远的，再画近的" ID="ID_1070804651" CREATED="1752587609905" MODIFIED="1752587633424"/>
<node TEXT="将所有的三角形按照z坐标排序" ID="ID_1126391737" CREATED="1752587849102" MODIFIED="1752587864379"/>
<node TEXT="三个三角形互相缠绕，会使画家算法失效" ID="ID_404033647" CREATED="1752587867119" MODIFIED="1752587928023"/>
<node TEXT="时间复杂度是nlogn" ID="ID_610281756" CREATED="1752588963148" MODIFIED="1752588971935"/>
</node>
<node TEXT="深度缓冲" POSITION="bottom_or_right" ID="ID_1034638450" CREATED="1752587550398" MODIFIED="1752587554891">
<node TEXT="用一个额外的缓冲区存储像素的z坐标" ID="ID_1612277652" CREATED="1752588056716" MODIFIED="1752588083846"/>
<node TEXT="无论是左手系还是右手系，对深度值取绝对值，所以距离越远深度值越大" POSITION="bottom_or_right" ID="ID_1447934303" CREATED="1752588041471" MODIFIED="1752588383500"/>
<node TEXT="对于每一个像素，如果它的深度值比深度缓冲中记录的深度值要小，则将它的颜色写入颜色缓冲，同时也将深度值写入深度缓冲。如果比深度缓冲中的值大，则不做处理。" POSITION="bottom_or_right" ID="ID_724981913" CREATED="1752588393632" MODIFIED="1752588473244"/>
<node TEXT="时间复杂度是n" POSITION="bottom_or_right" ID="ID_748581233" CREATED="1752588974044" MODIFIED="1752588979545"/>
<node TEXT="深度值是一个浮点型数字，几乎不存在深度值一样的像素" POSITION="bottom_or_right" ID="ID_812543420" CREATED="1752589161301" MODIFIED="1752589178745">
<node TEXT="TODO：如果深度值相等如何处理" ID="ID_583367698" CREATED="1752589205436" MODIFIED="1752589225916"/>
</node>
</node>
</node>
<node TEXT="着色" FOLDED="true" ID="ID_1848016374" CREATED="1752587555893" MODIFIED="1752587561052">
<node TEXT="定义：对一个物体应用一个材质的过程" ID="ID_301315514" CREATED="1752589735721" MODIFIED="1752589755286"/>
<node TEXT="着色是局部的，只考虑和光源的关系，不考虑其他物体的影响" ID="ID_1216074963" CREATED="1752590581350" MODIFIED="1752590712827"/>
<node TEXT="几个参数定义" ID="ID_68614935" CREATED="1752590626960" MODIFIED="1752590645595">
<node TEXT="shading point" ID="ID_472416100" CREATED="1752590645773" MODIFIED="1752590653994"/>
<node TEXT="View" ID="ID_1160498607" CREATED="1752590649362" MODIFIED="1752590661429">
<node TEXT="shading point 指向摄像机" ID="ID_975271607" CREATED="1752590662253" MODIFIED="1752590831558"/>
</node>
<node TEXT="Lighting dir" ID="ID_568871621" CREATED="1752590678599" MODIFIED="1752590683269">
<node TEXT="shading point 指向光源" ID="ID_1894016572" CREATED="1752590683525" MODIFIED="1752590696931"/>
</node>
<node TEXT="Normal" ID="ID_1122994534" CREATED="1752590698026" MODIFIED="1752590700663">
<node TEXT="shading point 的法线" ID="ID_21554030" CREATED="1752590700884" MODIFIED="1752590833058"/>
</node>
</node>
<node TEXT="Blinn-Phong Reflectance Model" ID="ID_1536937016" CREATED="1752589766750" MODIFIED="1752589779489">
<node TEXT="Diffuse reflection（漫反射）" POSITION="bottom_or_right" ID="ID_1370006277" CREATED="1752589824552" MODIFIED="1752590788148">
<node TEXT="将光视为能量，shading point越亮接受到的能量越多" ID="ID_1510962072" CREATED="1752591086504" MODIFIED="1752591126680"/>
<node TEXT="根据能量守恒定律，光的能量在扩散的过程中是不变的，但是扩散的范围越来越大，单位面积上的能量是逐渐衰减的，距离光源单位距离的能量强度是I，距离光源r的光源强度是I/r2，与距离的平方成反比。TODO：如何推导的" ID="ID_774992681" CREATED="1752591318843" MODIFIED="1752592407252"/>
<node TEXT="Lambert&apos;s cosine law" ID="ID_1128495903" CREATED="1752591160488" MODIFIED="1752591170585">
<node TEXT="接收到的能量与lighting dir和normal的夹角的余弦成正比" POSITION="bottom_or_right" ID="ID_1323455534" CREATED="1752591172190" MODIFIED="1752591241731"/>
<node TEXT="当光垂直于shading point，接收到的能量最多，90度就接受不到了" POSITION="bottom_or_right" ID="ID_244325857" CREATED="1752591129207" MODIFIED="1752591266536"/>
</node>
<node TEXT="kd：能量吸收率还是反射率？漫反射系数，可以是一个向量，代表rgb的吸收率，眼睛看到的光是这个shading point反射的光，不是他吸收的光，如果是1，代表这个点完全不吸收能量，0代表全部被吸收了，看起来就是黑色" ID="ID_1391861972" CREATED="1752591879075" MODIFIED="1752592350837"/>
<node TEXT="光照射到物体上，朝四遍八方反射出去，与view dir无关，不管在哪看，shading point的颜色都是一样的" ID="ID_409089249" CREATED="1752592092753" MODIFIED="1752763290056"/>
<node TEXT="\latex \[&#xa;L_d = k_d \bigl( I / r^2 \bigr) \max(0, \mathbf{n} \cdot \mathbf{l})&#xa;\]" ID="ID_530309438" CREATED="1752762942813" MODIFIED="1752762955829">
<font SIZE="16"/>
<node TEXT="\latex $L_d = {\text{diffusely reflected light}} $" ID="ID_1597260700" CREATED="1752762964057" MODIFIED="1752763019697">
<font SIZE="16"/>
</node>
<node TEXT="\latex $ {k_d} = {\text{diffuse coefficient (color)}} $" ID="ID_654562013" CREATED="1752763027260" MODIFIED="1752763084314" MAX_WIDTH="20 cm">
<font SIZE="16"/>
<node TEXT="可以直接是纹理颜色" ID="ID_767234318" CREATED="1752896458195" MODIFIED="1752896462620"/>
<node TEXT="漫反射贴图" ID="ID_1188243120" CREATED="1759477995291" MODIFIED="1759477999927"/>
</node>
<node TEXT="\latex ${I/r^2} = {\text{energy arrived at the shading point}}$" ID="ID_211156188" CREATED="1752763048972" MODIFIED="1752763084314" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
<node TEXT="\latex {\max(0, \mathbf{n} \cdot \mathbf{l})} = {\text{energy received by the shading point}}" ID="ID_561941852" CREATED="1752763065562" MODIFIED="1752763084311" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
</node>
</node>
<node TEXT="Specular highlights（镜面高光）" POSITION="bottom_or_right" ID="ID_610712654" CREATED="1752589803590" MODIFIED="1752590777365">
<node TEXT="view dir 和 light dir 的反射方向越接近，就越能看到高光，但是反射向量计算复杂，计算半程向量更为简单" ID="ID_663261844" CREATED="1752763571972" MODIFIED="1752765215787"/>
<node TEXT="半程向量" ID="ID_890172151" CREATED="1752763604562" MODIFIED="1752764563529">
<node TEXT="\latex \mathbf{h} = \text{bisection}(\mathbf{v}, \mathbf{l}) \\&#xa;    = \frac{\mathbf{v} + \mathbf{l}}{\|\mathbf{v} + \mathbf{l}\|}" ID="ID_915163028" CREATED="1752764563655" MODIFIED="1752764747451">
<font SIZE="16"/>
</node>
</node>
<node TEXT="\latex $ L_s = k_s \left( \frac{I}{r^2} \right) \max(0, \cos \alpha)^p \\&#xa;             = k_s \left( \frac{I}{r^2} \right) \max(0, \mathbf{n} \cdot \mathbf{h})^p $" POSITION="bottom_or_right" ID="ID_569224700" CREATED="1752764663451" MODIFIED="1752764747453">
<font SIZE="16"/>
<node TEXT="\latex ${L_s} ={\text{specularly reflected light}}$" ID="ID_688442355" CREATED="1752764826870" MODIFIED="1752764864005">
<font SIZE="16"/>
</node>
<node TEXT="\latex ${k_s} = {\text{specular coefficient}}$" ID="ID_67287164" CREATED="1752764838100" MODIFIED="1752764880565">
<font SIZE="16"/>
<node TEXT="高光贴图" ID="ID_875053797" CREATED="1759477988077" MODIFIED="1759477993051"/>
</node>
<node TEXT="\latex $ {\mathbf{n} \cdot \mathbf{h}} = {\text{dot product for specular term}} $" ID="ID_451794264" CREATED="1752764845259" MODIFIED="1752764876716">
<font SIZE="16"/>
</node>
<node TEXT="p，一般取值在100到200" ID="ID_1948906956" CREATED="1752765283289" MODIFIED="1752765322859"/>
</node>
</node>
<node TEXT="Ambient lighting（环境光）" POSITION="bottom_or_right" ID="ID_1369947398" CREATED="1752589829540" MODIFIED="1752590793214">
<node TEXT="环境光的最大特点是与具体光照方向、物体位置 / 角度无关。不管光线从哪来、物体表面朝向如何，环境光都 “无脑” 给物体表面加一个基础颜色。这是为了模拟现实中 “间接光”（比如光线经多次反射后，无明确方向的漫射光），但做了极大简化" ID="ID_673503893" CREATED="1752764079583" MODIFIED="1752765253251"/>
<node TEXT="\latex $ L_a = k_a \, I_a$" ID="ID_127366477" CREATED="1752764967425" MODIFIED="1752764976555">
<font SIZE="16"/>
<node TEXT="\latex ${L_a} = {\text{reflected ambient light}}$" ID="ID_265740133" CREATED="1752764982045" MODIFIED="1752765024865">
<font SIZE="16"/>
</node>
<node TEXT="\latex ${k_a} = {\text{ambient coefficient}}$" ID="ID_1240502" CREATED="1752764994058" MODIFIED="1752765024875">
<font SIZE="16"/>
</node>
<node TEXT="\latex ${I_a} = {\text{ambient light intensity}}$" ID="ID_1120683231" CREATED="1752764999927" MODIFIED="1752765024876">
<font SIZE="16"/>
</node>
</node>
<node TEXT="TODO：全局光照" ID="ID_40306882" CREATED="1752764249742" MODIFIED="1752764256775"/>
</node>
<node TEXT="\latex $L&#xa;= L_a + L_d + L_s \\&#xa;= k_a \, I_a + k_d \left( \frac{I}{r^2} \right) \max(0, \mathbf{n} \cdot \mathbf{l}) + k_s \left( \frac{I}{r^2} \right) \max(0, \mathbf{n} \cdot \mathbf{h})^p $" ID="ID_201535555" CREATED="1752764939738" MODIFIED="1752765104839" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
<node TEXT="举例说明" ID="ID_867630368" CREATED="1759450827238" MODIFIED="1759450831641">
<node TEXT="// 表面反射率&#xa;vec3 Ks = vec3 （1.0, 1.0, 1.0）；// 完全反射镜面光vec3 Kd = vec3 （1.0, 0.5, 0.0）； / 橙色漫反射表面反射率vec3 Ka = vec3 （1.0, 1.0, 1.0）；1/ 完全反射环境光float specular_exponent = 100.0； /| 镜面反射”强度”" ID="ID_1831669006" CREATED="1759450831826" MODIFIED="1759450832882"/>
</node>
<node TEXT="片元着色代码实现" FOLDED="true" ID="ID_397453478" CREATED="1759451713222" MODIFIED="1759451740342">
<node TEXT="顶点着色器需要将顶点位置和法线输出（插值）到片段着色器。" ID="ID_1978237799" CREATED="1759451719962" MODIFIED="1759451790770">
<node TEXT="in layout (location = 0) vec3 vertex_position;&#xa;in layout (location = 1) vec3 vertex_normal;&#xa;uniform mat4 projection_mat, view_mat, model_mat;&#xa;out vec3 position_eye, normal_eye;&#xa;void main 0 {&#xa;    position_eye = vec3 (view_mat * model_mat * vec4 (vertex _position, 1.0));&#xa;    normal_eye = vec3 (view_mat * model_mat * vec4 (vertex_normal, 0.0));&#xa;    g|_Position = projection_mat * vec4 (position_eye, 1.0);&#xa;}" ID="ID_167669147" CREATED="1759451813554" MODIFIED="1759451851637" MAX_WIDTH="20 cm"/>
<node TEXT="在视图空间中进行计算，使用哪个空间无关紧要，视图空间更加方便，计算镜面高光时，不用传递摄像机位置，省去了一个unniform变量" ID="ID_1237989264" CREATED="1759451864858" MODIFIED="1759452786201"/>
<node TEXT="法线的w分量为0" ID="ID_479780864" CREATED="1759451931476" MODIFIED="1759451941583"/>
<node TEXT="重要说明：如果在模型矩阵中对不同轴进行任何缩放（例如水平拉伸），那么模型矩阵将错误地缩放法线。在这种情况下，需要使用一个新的“法线矩阵”，它是“视图矩阵*模型矩阵&quot;的逆转置，以纠正这个问题。" ID="ID_975976127" CREATED="1759451928955" MODIFIED="1759451964700"/>
</node>
<node TEXT="环境光" ID="ID_766357283" CREATED="1759452403797" MODIFIED="1759452407585">
<node TEXT="vec3 La = vec3 (0.2, 0.2, 0.2); // grey ambient colour" ID="ID_1028007491" CREATED="1759452407813" MODIFIED="1759452976523" MAX_WIDTH="20 cm">
<node TEXT="光源属性" ID="ID_293872032" CREATED="1759454135796" MODIFIED="1759454138229"/>
<node TEXT="光源的 “环境光颜色”（Ambient Light Color）" ID="ID_1932507199" CREATED="1759454171978" MODIFIED="1759454176938"/>
<node TEXT="模拟场景中 “间接光照”（如光线经过多次反射后形成的柔和背景光），避免物体背光面完全变黑" ID="ID_828442228" CREATED="1759454177774" MODIFIED="1759454178336"/>
</node>
<node TEXT="vec3 Ka = vec3 (1.0, 1.0, 1.0); // fully reflect ambient light" ID="ID_352979191" CREATED="1759452414424" MODIFIED="1759452976524" MAX_WIDTH="20 cm">
<node TEXT="表面反射属性" ID="ID_1918489785" CREATED="1759454192880" MODIFIED="1759454200885"/>
<node TEXT="表面的 “环境光反射率”（Ambient Reflectivity）。" ID="ID_240723356" CREATED="1759454252146" MODIFIED="1759454257387"/>
<node TEXT="定义表面反射环境光的能力" ID="ID_98792350" CREATED="1759454257542" MODIFIED="1759454257847"/>
<node TEXT="(1.0, 1.0, 1.0) 表示表面能 “完全反射” 环境光（三个通道均 100% 反射），因此环境光照射到表面时，会完全保留环境光的颜色和强度" ID="ID_1640215967" CREATED="1759454267360" MODIFIED="1759454267575"/>
</node>
<node TEXT="// ambient intensity&#xa;vec3 Ia = La * Ka;" ID="ID_1951993415" CREATED="1759452419057" MODIFIED="1759452976524" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="漫反射" ID="ID_631238205" CREATED="1759452442899" MODIFIED="1759452445903">
<node TEXT="// raise light position to eye space&#xa;vec3 light_position_eye = vec3 (view_mat * vec4 (light_position_world, 1.0));&#xa;vec3 distance_to_light_eye = light_position_eye - position_eye;&#xa;vec3 direction_to_light_eye = normalize (distance_to_light_eye);&#xa;float dot_prod = dot (direction_to_light_eye, n_eye);&#xa;dot_prod = max (dot_prod, 0.0);" ID="ID_1792994996" CREATED="1759453424979" MODIFIED="1759453443496" MAX_WIDTH="20 cm"/>
<node TEXT="vec3 Ld = vec3 (0.7, 0.7, 0.7); // dull white diffuse light colour" ID="ID_1885398639" CREATED="1759452453837" MODIFIED="1759452976525" MAX_WIDTH="20 cm">
<node TEXT="光源属性" ID="ID_1636185180" CREATED="1759454135796" MODIFIED="1759454138229"/>
<node TEXT="光源的 “漫反射颜色”（Diffuse Light Color）" ID="ID_8472209" CREATED="1759454148407" MODIFIED="1759454149532"/>
<node TEXT="定义光源发出的 “漫反射成分” 的颜色和强度（漫反射是光线照射到粗糙表面后向各个方向均匀散射的光）。" ID="ID_1406303202" CREATED="1759454154158" MODIFIED="1759454154378"/>
</node>
<node TEXT="vec3 Kd = vec3 (1.0, 0.5, 0.0); // orange diffuse surface reflectance" ID="ID_1811944443" CREATED="1759452461386" MODIFIED="1759452976525" MAX_WIDTH="20 cm">
<node TEXT="表面反射属性" ID="ID_491298253" CREATED="1759454192880" MODIFIED="1759454200885"/>
<node TEXT="表面的 “漫反射反射率”（Diffuse Reflectivity）" ID="ID_1239749398" CREATED="1759454221753" MODIFIED="1759454224515"/>
<node TEXT="定义表面反射光源漫反射成分的能力，同时决定物体的基础颜色（漫反射是物体表面的主要颜色来源）。" ID="ID_1556444107" CREATED="1759454229028" MODIFIED="1759454229261"/>
<node TEXT="(1.0, 0.5, 0.0) 中，红色通道（R）反射率 100%，绿色通道（G）50%，蓝色通道（B）0%，因此表面会呈现 “橙色”（红色 + 部分绿色，无蓝色）。" ID="ID_1054974748" CREATED="1759454239033" MODIFIED="1759454239285"/>
</node>
<node TEXT="&#x9;vec3 Id = Ld * Kd * dot_prod; // final diffuse intensity" ID="ID_587270065" CREATED="1759452468773" MODIFIED="1759452976525" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="镜面高光" ID="ID_653725588" CREATED="1759452659578" MODIFIED="1759452664057">
<node TEXT="float specular_exponent = 100.0; // specular &apos;power&apos;" ID="ID_1561837538" CREATED="1759452934642" MODIFIED="1759452934930">
<node TEXT="高光的 “shininess”（光泽度）或 “幂次”" ID="ID_1956877348" CREATED="1759454279417" MODIFIED="1759454283598"/>
<node TEXT="控制高光区域的 “集中程度”—— 值越大，高光区域越狭窄、越锐利（类似镜面反射的 “焦点”）；值越小，高光区域越分散、越柔和。" ID="ID_699528068" CREATED="1759454284729" MODIFIED="1759454284973"/>
</node>
<node TEXT="vec3 Ls = vec3 (1.0, 1.0, 1.0); // white specular colour" ID="ID_472790295" CREATED="1759452961094" MODIFIED="1759452961523">
<node TEXT="光源属性" ID="ID_1727580119" CREATED="1759454135796" MODIFIED="1759454138229"/>
<node TEXT="光源的 “高光颜色”（Specular Light Color）。" ID="ID_1749408578" CREATED="1759454087217" MODIFIED="1759454094088"/>
<node TEXT="定义光源发出的 “高光成分” 的颜色和强度" ID="ID_597145325" CREATED="1759454094504" MODIFIED="1759454094908"/>
<node TEXT="(1.0, 1.0, 1.0) 是纯白色，表示光源发出的高光成分是最亮的白色（RGB 三个通道均为最大强度）" ID="ID_1026215650" CREATED="1759454107546" MODIFIED="1759454107825"/>
</node>
<node TEXT="vec3 Ks = vec3 (1.0, 1.0, 1.0); // fully reflect specular light" ID="ID_1201077" CREATED="1759452965304" MODIFIED="1759452969883" MAX_WIDTH="20 cm">
<node TEXT="表面反射属性" ID="ID_941962024" CREATED="1759454192880" MODIFIED="1759454200885"/>
<node TEXT="表面的 “高光反射率”（Specular Reflectivity）" ID="ID_419933402" CREATED="1759454201109" MODIFIED="1759454201413"/>
<node TEXT="定义表面反射光源高光成分的能力（值越大，反射的高光越强）" ID="ID_415392221" CREATED="1759454207321" MODIFIED="1759454207520"/>
<node TEXT="(1.0, 1.0, 1.0) 表示表面能 “完全反射” 光源的高光成分（三个通道均 100% 反射），因此高光效果会非常明显。" ID="ID_302598294" CREATED="1759454214082" MODIFIED="1759454214284"/>
</node>
<node TEXT="// specular intensity&#xa;vec3 surface_to_viewer_eye = normalize (-position_eye);" ID="ID_1861966455" CREATED="1759452830539" MODIFIED="1759452874999" MAX_WIDTH="20 cm">
<node TEXT="视图空间，摄像机位置在(0, 0, 0)，不用通过额外的uniform变量传递了" ID="ID_329745872" CREATED="1759452881605" MODIFIED="1759452905212"/>
</node>
<node TEXT="第一种方式" ID="ID_1498840154" CREATED="1759453904678" MODIFIED="1759453909452">
<node TEXT="vec3 reflection_eye = reflect (-direction_to_light_eye, n_eye);&#xa;float dot_prod_specular = dot (reflection_eye, surface_to_viewer_eye);&#xa;dot_prod_specular = max (dot_prod_specular, 0.0);&#xa;float specular_factor = pow (dot_prod_specular, specular_exponent);" POSITION="bottom_or_right" ID="ID_1855290631" CREATED="1759452875437" MODIFIED="1759452921029" MAX_WIDTH="20 cm">
<node TEXT="vec3 reflect(vec3 incident, vec3 normal);" ID="ID_535437172" CREATED="1759453578348" MODIFIED="1759453579579"/>
<node TEXT="第一个参数incident：入射光线向量，必须是从外部指向表面的方向（即 “光源→表面” 的方向）。" ID="ID_1397160943" CREATED="1759453586003" MODIFIED="1759453586285"/>
<node TEXT="第二个参数normal：表面的法向量（已归一化）。" ID="ID_399184531" CREATED="1759453590517" MODIFIED="1759453590779"/>
</node>
</node>
<node TEXT="第二种方式" ID="ID_403893601" CREATED="1759453909675" MODIFIED="1759453913256">
<node TEXT="// blinn&#xa;vec3 half_way_eye = normalize (surface_to_viewer_eye + direction_to_light_eye);&#xa;float dot_prod_specular = max (dot (half_way_eye, n_eye), 0.0);&#xa;float specular_factor = pow (dot_prod_specular, specular_exponent);" POSITION="bottom_or_right" ID="ID_304365152" CREATED="1759453894107" MODIFIED="1759453899949" MAX_WIDTH="20 cm"/>
<node TEXT="效率更高" POSITION="bottom_or_right" ID="ID_1744319566" CREATED="1759453922378" MODIFIED="1759453926451"/>
</node>
<node TEXT="vec3 Is = Ls * Ks * specular_factor; // final specular intensity" POSITION="bottom_or_right" ID="ID_1954097652" CREATED="1759452948015" MODIFIED="1759452955109" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="最终颜色" ID="ID_390371101" CREATED="1759452997651" MODIFIED="1759453001033">
<node TEXT="// final colour&#xa;fragment_colour = vec4 (Is + Id + Ia, 1.0);" ID="ID_795747479" CREATED="1759453001313" MODIFIED="1759453002361"/>
</node>
<node TEXT="常见错误" ID="ID_755139621" CREATED="1759453663347" MODIFIED="1759453744703">
<node TEXT="向量计算时不在同一个空间中" ID="ID_1419818203" CREATED="1759453667811" MODIFIED="1759453757765"/>
<node TEXT="方向向量（xyzw）的 w 分量被设为 1（注：齐次坐标中，方向向量的 w 应设为 0，设为 1 会错误当作位置向量处理）" ID="ID_206536348" CREATED="1759453694092" MODIFIED="1759453715715"/>
<node TEXT="位置向量（xyzw）的 w 分量被设为 0（注：齐次坐标中，位置向量的 w 应设为 1，设为 0 会错误当作方向向量处理）" ID="ID_1491728038" CREATED="1759453716024" MODIFIED="1759453716429"/>
<node TEXT="点积运算中，一个向量是方向向量而另一个是距离向量（需对距离向量进行归一化，将其转换为方向向量后再计算）" ID="ID_461606659" CREATED="1759453730244" MODIFIED="1759453731089"/>
<node TEXT="未通过逆转置矩阵或均匀缩放的世界视图矩阵，将法线转换到正确空间（注：非均匀缩放时必须用逆转置矩阵，否则法线方向会失真）" ID="ID_1056200756" CREATED="1759453775514" MODIFIED="1759453775809"/>
<node TEXT="vec3 与 vec4（或 vec4 与 vec3）之间的转换不合法（注：如直接截断 vec4 的 w 分量而未处理齐次除法，或给 vec3 补 w 分量时赋值错误）" ID="ID_494581876" CREATED="1759453797015" MODIFIED="1759453797282"/>
</node>
</node>
</node>
<node TEXT="着色频率" ID="ID_107366112" CREATED="1752765442416" MODIFIED="1752765445641">
<node TEXT="面片着色（flat shading)" ID="ID_1056263502" CREATED="1752765445913" MODIFIED="1752765554643">
<node TEXT="计算三角形的法线" ID="ID_309447451" CREATED="1752765555103" MODIFIED="1752765564907"/>
</node>
<node TEXT="顶点着色（gouraud shading）" ID="ID_642387823" CREATED="1752765452294" MODIFIED="1752765661908">
<node TEXT="求顶点的法线，在顶点计算着色，然后在三角形内部插值" ID="ID_432491910" CREATED="1752765596355" MODIFIED="1752765647154"/>
</node>
<node TEXT="片元着色（phong shading）" ID="ID_1003556121" CREATED="1752765457816" MODIFIED="1752765671745">
<node TEXT="求顶点的法线，然后在三角形内部插值法线，在每一个像素上计算着色" ID="ID_130749029" CREATED="1752765672085" MODIFIED="1752765708406"/>
</node>
<node TEXT="最终的效果取决于物体的面数，面数越多，三者的区别越小。如果面数超过了像素数量，面片着色的效率反而比片元着色的效率低了" ID="ID_1043431874" CREATED="1752765970849" MODIFIED="1752766032590"/>
</node>
<node TEXT="如何计算法线" POSITION="bottom_or_right" ID="ID_786883190" CREATED="1752766148397" MODIFIED="1759451150835">
<node TEXT="计算面法线（Face Normal）（适用于复杂形状的单个面）" ID="ID_473108274" CREATED="1759451156948" MODIFIED="1759451157996">
<node TEXT="对于一个面（如三角形面），通过叉积计算其法线：" ID="ID_363327090" CREATED="1759451163641" MODIFIED="1759451165045"/>
<node TEXT="根据三角形的两个边计算叉积" ID="ID_116455745" CREATED="1759451184997" MODIFIED="1759451194998"/>
</node>
<node TEXT="平面着色（Flat Shaded）" ID="ID_1298039815" CREATED="1759451259873" MODIFIED="1759451260909">
<node TEXT="对于应呈现 “平坦感” 的面（如房屋的墙面）" POSITION="bottom_or_right" ID="ID_92515704" CREATED="1759451277580" MODIFIED="1759451279790"/>
<node TEXT="将计算出来的法线复制到该面的所有顶点上，使每个顶点的法线方向与面法线一致" POSITION="bottom_or_right" ID="ID_643136505" CREATED="1759451225031" MODIFIED="1759451253968"/>
</node>
<node TEXT="光滑着色（Smooth Shaded）" ID="ID_1978146289" CREATED="1759451270928" MODIFIED="1759451271226">
<node TEXT="对于应呈现 “弯曲感” 的面（如球体、圆柱体等曲面 / 有机形状）" ID="ID_1292374130" CREATED="1759451289307" MODIFIED="1759451290346"/>
<node TEXT="每个顶点的法线，取周围所有面的法线的平均值。这样光照时，顶点间的法线会平滑过渡，从而模拟出 “曲面弯曲” 的视觉效果。" ID="ID_410041738" CREATED="1759451297211" MODIFIED="1759451297515"/>
</node>
<node TEXT="3D工具导出" ID="ID_17191340" CREATED="1759451484778" MODIFIED="1759451490064"/>
</node>
<node TEXT="如何插值顶点间的法线" POSITION="bottom_or_right" ID="ID_859719726" CREATED="1752766249122" MODIFIED="1752766261033">
<node TEXT="重心坐标" ID="ID_1613725017" CREATED="1752766261182" MODIFIED="1752766266926"/>
</node>
<node TEXT="材质和着色的关系" POSITION="bottom_or_right" ID="ID_1698444349" CREATED="1752843754726" MODIFIED="1752843762524"/>
<node TEXT="多光源" POSITION="bottom_or_right" ID="ID_1790584893" CREATED="1759486149751" MODIFIED="1759486154095"/>
</node>
<node TEXT="纹理映射" FOLDED="true" ID="ID_1155156813" CREATED="1752843234856" MODIFIED="1757214852116">
<node TEXT="如何将三维空间的上的点映射到纹理上，将三维模型展开到平面上" ID="ID_1805144587" CREATED="1752843239660" MODIFIED="1752843350608"/>
<node TEXT="术语说明" ID="ID_183248146" CREATED="1759456480268" MODIFIED="1759456485701">
<node TEXT="纹理（Texture）" ID="ID_916574354" CREATED="1759456485891" MODIFIED="1759456501559">
<node TEXT="是一种通常从文件中加载的图像，可映射到（3D 物体的）表面上，并能根据表面的 3D 透视效果进行绘制，以匹配其透视关系" ID="ID_1446812228" CREATED="1759456524237" MODIFIED="1759456525128"/>
</node>
<node TEXT="纹理坐标" ID="ID_1398275560" CREATED="1759465181351" MODIFIED="1759465184144">
<node TEXT="纹理坐标是对纹理图像（通常是2D）中的像素的引用。纹理图像中的像素被称为纹素（Texel）" POSITION="bottom_or_right" ID="ID_829047486" CREATED="1751107471371" MODIFIED="1751107474740"/>
<node TEXT="纹理坐标用于将3D模型上的点映射到纹理中的位置" POSITION="bottom_or_right" ID="ID_1650509460" CREATED="1751107483269" MODIFIED="1751107484374"/>
<node TEXT="2D纹理图像被设定为矩形，左下角的位置坐标为(0,0)，右上角的位置坐标为(1,1)，纹理坐标应该在[0…1]范围内取值" POSITION="bottom_or_right" ID="ID_629946225" CREATED="1751107545975" MODIFIED="1751107580360"/>
</node>
<node TEXT="像素（Pixels）" ID="ID_651154921" CREATED="1759456505699" MODIFIED="1759456505922">
<node TEXT="全称为 “图像元素（picture elements）”，是最终渲染到视口中、显示在屏幕上的带色点。例如， OpenGL（GL）视口分辨率可能为 1024×768 像素（即横向 1024 个像素、纵向 768 个像素）" ID="ID_1193322276" CREATED="1759456539031" MODIFIED="1759456544256"/>
</node>
<node TEXT="片段（Fragments）" ID="ID_1138951751" CREATED="1759456510680" MODIFIED="1759456510938">
<node TEXT="指表面上与像素大小一致的区域（可见表面会被划分为像素大小的 2D 片段）。当一个 3D 三角形离相机越近时，其表面包含的片段数量会越来越多（因为三角形在屏幕上的投影面积变大，需要更多像素大小的片段来呈现）" ID="ID_1787161003" CREATED="1759456559688" MODIFIED="1759456561125"/>
<node TEXT="片段之间可能会重叠，我们可以通过混合（blend）它们来实现半透明（partial-transparency）等效果，但最终每个屏幕位置只会渲染出 1 个像素。" ID="ID_1896681824" CREATED="1759456575523" MODIFIED="1759456575737"/>
</node>
<node TEXT="纹素（Texels）" ID="ID_1110177539" CREATED="1759456515661" MODIFIED="1759456515893">
<node TEXT="全称为 “纹理元素（texture elements）”，指从图像中加载的像素（即纹理图像本身的像素）。例如，若将 512×512 分辨率的纹理映射到某个表面上，而该表面在视口中仅占据 30 个像素的面积，此时纹素数量会多于片段数量（纹理本身的像素数多于表面在屏幕上对应的片段数）。" ID="ID_1209470149" CREATED="1759456594352" MODIFIED="1759456596738"/>
</node>
</node>
<node TEXT="opengl处理纹理" ID="ID_282184012" CREATED="1751099103262" MODIFIED="1759477867318">
<node TEXT="需要的原材料" FOLDED="true" ID="ID_246732317" CREATED="1751107154034" MODIFIED="1751107201504">
<node TEXT="用于保存纹理图像的纹理对象，GLuint类型" ID="ID_724308578" CREATED="1751107160381" MODIFIED="1751107410608"/>
<node TEXT="一个特殊的统一采样器变量，以便顶点着色器可以访问纹理；" POSITION="bottom_or_right" ID="ID_1259005808" CREATED="1751107160381" MODIFIED="1751107160381"/>
<node TEXT="用于保存纹理坐标的缓冲区；" POSITION="bottom_or_right" ID="ID_657446708" CREATED="1751107160381" MODIFIED="1751107160381"/>
<node TEXT="用于将纹理坐标传递给管线的顶点属性；" POSITION="bottom_or_right" ID="ID_548228478" CREATED="1751107160381" MODIFIED="1751107160381">
<node TEXT="为模型中的每个顶点指定纹理坐标，光栅化时会自动给顶点属性线性插值" ID="ID_632798787" CREATED="1751107454826" MODIFIED="1751107660338"/>
</node>
<node TEXT="显卡上的纹理单元。" POSITION="bottom_or_right" ID="ID_985494309" CREATED="1751107160381" MODIFIED="1751107160381">
<node TEXT="要使用某个纹理时，需先激活一个纹理单元（如 GL_TEXTURE0），再将纹理 “绑定” 到该纹理单元。纹理会一直保留在纹理单元中，直到有新纹理绑定进来。" POSITION="bottom_or_right" ID="ID_635024587" CREATED="1759463172455" MODIFIED="1759463517121"/>
<node TEXT="若程序只有 1 个纹理，只需绑定一次到 ** 默认活动纹理单元（编号 0，即 GL_TEXTURE0）** 即可。" POSITION="bottom_or_right" ID="ID_1948340010" CREATED="1759463181349" MODIFIED="1759463524609"/>
<node TEXT="渲染不同物体需不同纹理时，需手动在活动纹理单元之间 “交换” 纹理（将需要的纹理放入纹理单元，不需要的暂时移出）" POSITION="bottom_or_right" ID="ID_240219319" CREATED="1759463198407" MODIFIED="1759463535224"/>
<node TEXT="可用纹理单元的数量取决于图形卡上提供的数量" POSITION="bottom_or_right" ID="ID_1882057969" CREATED="1751108024206" MODIFIED="1751108026137"/>
<node TEXT="OpenGL 4.5版要求每个着色器阶段至少有16个，所有阶段总共至少80个单元" POSITION="bottom_or_right" ID="ID_1921116957" CREATED="1751108041697" MODIFIED="1751108042936"/>
</node>
</node>
<node TEXT="使用方法" ID="ID_704468718" CREATED="1751108991820" MODIFIED="1751108995918">
<node TEXT="1. 纹理数据加载并生成纹理对象" ID="ID_1750775690" CREATED="1751109361781" MODIFIED="1751109764176">
<node TEXT="加载图像" POSITION="bottom_or_right" ID="ID_1548898369" CREATED="1759462523036" MODIFIED="1759462544903">
<node TEXT="不能对只有RGB三个通道的纹理采样，加载纹理时强制将RGB图片转换为RGBA图片" POSITION="bottom_or_right" ID="ID_1462382340" CREATED="1759456702373" MODIFIED="1759456745320"/>
<node TEXT="int x, y, n;&#xa;int force_channels = 4;&#xa;unsigned char* image_data = stbi_load( file_name, &amp;x, &amp;y, &amp;n, force_channels );&#xa;if ( !image_data ) {&#xa;  fprintf( stderr, &quot;ERROR: could not load %s\n&quot;, file_name );&#xa;  return false;&#xa;}" POSITION="bottom_or_right" ID="ID_1980675914" CREATED="1759457029965" MODIFIED="1759462572244" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="检查纹理尺寸" FOLDED="true" POSITION="bottom_or_right" ID="ID_288936214" CREATED="1759462638772" MODIFIED="1759462644323">
<node TEXT="较旧的显卡只能处理宽度和高度为2的幂次方的纹理。大多数较新的显卡可以处理不规则的纹理尺寸，将不规则的纹理尺寸打印出来，让美术人员去修改" POSITION="bottom_or_right" ID="ID_1865981595" CREATED="1759457102173" MODIFIED="1759457141841">
<node TEXT="// NPOT check&#xa;if ( ( x &amp; ( x - 1 ) ) != 0 || ( y &amp; ( y - 1 ) ) != 0 ) {&#xa;  fprintf( stderr, &quot;WARNING: texture %s is not power-of-2 dimensions\n&quot;, file_name );&#xa;}" ID="ID_1602057326" CREATED="1759457164326" MODIFIED="1759457184672" MAX_WIDTH="20 cm"/>
</node>
</node>
<node TEXT="图像上下翻转" FOLDED="true" POSITION="bottom_or_right" ID="ID_236080055" CREATED="1759457620028" MODIFIED="1759457721557">
<node TEXT="绝大多数图像格式（如 PNG、JPG、BMP）和图像加载库（如stb_image、FreeType）在存储像素数据时，默认以 “左上角为原点”" ID="ID_273534497" CREATED="1759457734666" MODIFIED="1759457785085"/>
<node TEXT="OpenGL 的 2D 纹理坐标系统（s,t）默认以左下角为原点（(0,0)在左下，(1,1)在右上）" ID="ID_86727035" CREATED="1759457741929" MODIFIED="1759457782296"/>
<node TEXT="方案 1：加载时反转图像数据（CPU 端处理）" ID="ID_1470720829" CREATED="1759457795403" MODIFIED="1759457795620">
<node TEXT="int width_in_bytes = x * 4;" ID="ID_1559020251" CREATED="1759457826336" MODIFIED="1759457827351">
<node TEXT="图像采用 RGBA 格式（每个像素由红、绿、蓝、Alpha 四个通道组成，每个通道占 1 字节），因此一行图像的总字节数为「宽度 x × 4」" ID="ID_1024203775" CREATED="1759457843269" MODIFIED="1759457845058"/>
</node>
<node TEXT="unsigned char *top = NULL;&#xa;unsigned char *bottom = NULL;&#xa;unsigned char temp = 0;&#xa;int half_height = y / 2;" ID="ID_1622030864" CREATED="1759457858074" MODIFIED="1759457866685"/>
<node TEXT="for (int row = 0; row &lt; half_height; row++) {&#xa;    top = image_data + row * width_in_bytes;&#xa;    bottom = image_data + (y - row - 1) * width_in_bytes;&#xa;    for (int col = 0; col &lt; width_in_bytes; col++) {&#xa;        temp = *top;&#xa;        *top = *bottom;&#xa;       *bottom = temp;&#xa;        top++;&#xa;        bottom++;&#xa;    }&#xa;}" ID="ID_689199162" CREATED="1759457872824" MODIFIED="1759457919746"/>
<node TEXT="加载前调用：stbi_set_flip_vertically_on_load( true );" ID="ID_827634748" CREATED="1759462578053" MODIFIED="1759462592225"/>
</node>
<node TEXT="方案 2：着色器中反转纹理坐标（GPU 端处理）" ID="ID_709474264" CREATED="1759457799942" MODIFIED="1759457800141"/>
</node>
<node TEXT="将图像数据复制到OpenGL纹理中" POSITION="bottom_or_right" ID="ID_1496439765" CREATED="1759462157185" MODIFIED="1759462157611">
<node TEXT="生成纹理对象" POSITION="bottom_or_right" ID="ID_1067712145" CREATED="1751108996652" MODIFIED="1751109797509">
<node TEXT="GLuint textureID;&#xa;glGenTextures(1, &amp;textureID);  // 生成1个纹理对象，返回ID" ID="ID_1807786213" CREATED="1751109223947" MODIFIED="1751109226413">
<node TEXT="glGenTextures 创建纹理对象并分配唯一 ID，类似 VBO、VAO 的创建方式" POSITION="bottom_or_right" ID="ID_739242364" CREATED="1751109256155" MODIFIED="1751109257110"/>
</node>
</node>
<node TEXT="激活纹理单元" POSITION="bottom_or_right" ID="ID_1404622703" CREATED="1759463403465" MODIFIED="1759463407825">
<node TEXT="glActiveTexture( GL_TEXTURE0 );" ID="ID_171899969" CREATED="1759463407954" MODIFIED="1759463408770">
<node TEXT="texture：纹理单元的编号，格式为 GL_TEXTUREi（如 GL_TEXTURE0、GL_TEXTURE1），i 为非负整数（从 0 开始）" POSITION="bottom_or_right" ID="ID_530586630" CREATED="1759463297254" MODIFIED="1759463298285"/>
</node>
</node>
<node TEXT="绑定纹理对象" POSITION="bottom_or_right" ID="ID_406482402" CREATED="1751109231002" MODIFIED="1759463384246">
<node TEXT="glBindTexture(GL_TEXTURE_2D, textureID);  // 绑定为2D纹理" ID="ID_253781115" CREATED="1751109236475" MODIFIED="1751109238674">
<node TEXT="将一个纹理对象（由glGenTextures生成）绑定到当前激活的纹理单元的目标纹理类型（如GL_TEXTURE_2D）" POSITION="bottom_or_right" ID="ID_973906566" CREATED="1759463324461" MODIFIED="1759463325593"/>
<node TEXT="纹理对象是存储纹理数据和参数的 OpenGL 对象。绑定操作将纹理对象与当前激活的纹理单元关联，后续对该target的操作（如设置过滤模式）将作用于该纹理对象。" POSITION="bottom_or_right" ID="ID_1969476640" CREATED="1751108728048" MODIFIED="1751108793343"/>
<node TEXT="target：纹理目标（如GL_TEXTURE_2D、GL_TEXTURE_CUBE_MAP）" POSITION="bottom_or_right" ID="ID_1861216973" CREATED="1759463339904" MODIFIED="1759463340152">
<node TEXT="GL_TEXTURE_2D：二维纹理（最常见）。" POSITION="bottom_or_right" ID="ID_384288206" CREATED="1751108745548" MODIFIED="1751108745548"/>
<node TEXT="GL_TEXTURE_CUBE_MAP：立方体贴图（如天空盒）。" POSITION="bottom_or_right" ID="ID_146606285" CREATED="1751108745548" MODIFIED="1751108745548"/>
<node TEXT="GL_TEXTURE_3D：三维纹理（如体数据）。" POSITION="bottom_or_right" ID="ID_1232822614" CREATED="1751108745548" MODIFIED="1751108745548"/>
</node>
<node TEXT="texture：要绑定的纹理对象 ID（由glGenTextures生成）" POSITION="bottom_or_right" ID="ID_1545038856" CREATED="1759463345811" MODIFIED="1759463346062"/>
</node>
<node TEXT="绑定后，后续对 GL_TEXTURE_2D 的操作将作用于该纹理对象" ID="ID_1749980812" CREATED="1751109264113" MODIFIED="1751109272107"/>
</node>
<node TEXT="上传数据到gpu" POSITION="bottom_or_right" ID="ID_1604019828" CREATED="1751109382445" MODIFIED="1751109391310">
<node TEXT="if (image_data) {&#xa;    // 上传图像数据到当前绑定的纹理对象，此时data也可以释放了&#xa;    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);&#xa;   &#xa;    // 生成多级渐远纹理（Mipmaps）&#xa;    glGenerateMipmap(GL_TEXTURE_2D);&#xa;}&#xa;stbi_image_free(data);  // 释放CPU端图像数据" ID="ID_1118443944" CREATED="1751109391877" MODIFIED="1759463425180" MAX_WIDTH="20 cm"/>
<node TEXT="glTexImage2D 参数说明：" POSITION="bottom_or_right" ID="ID_1622118056" CREATED="1751109412867" MODIFIED="1751109416790">
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
<node TEXT="纹理目标" ID="ID_1458251325" CREATED="1759463024500" MODIFIED="1759463028880"/>
<node TEXT="指定纹理类型为 2D 纹理（还有 3D、立方体贴图等其他类型）。" ID="ID_1620471414" CREATED="1759463038374" MODIFIED="1759463038620"/>
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
<node TEXT="使用SOIL2来加载图像" POSITION="bottom_or_right" ID="ID_1767255513" CREATED="1751109805567" MODIFIED="1751109819537">
<node TEXT="GLuint SOIL_load_OGL_texture(&#xa;    const char *filename,         // 图像文件路径&#xa;    int force_channels,           // 强制通道数 (0=自动检测)&#xa;    GLuint reuse_texture_ID,      // 重用纹理ID (0=创建新ID)&#xa;    unsigned int flags            // 配置标志位&#xa;);" ID="ID_1577838699" CREATED="1751109884834" MODIFIED="1751109887389"/>
</node>
</node>
<node TEXT="2. 纹理参数设置" ID="ID_138326954" CREATED="1751109273939" MODIFIED="1759463563795">
<node TEXT="设置过滤模式" ID="ID_1239585364" CREATED="1751109284910" MODIFIED="1751109288397">
<node TEXT="// 缩小过滤（纹理比屏幕像素小时）&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);&#xa;&#xa;// 放大过滤（纹理比屏幕像素大时）&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);" ID="ID_1874029005" CREATED="1751109294661" MODIFIED="1751109297199">
<node TEXT="GL_NEAREST：最近邻采样（像素化效果）。" ID="ID_163335579" CREATED="1751109339358" MODIFIED="1751109339358"/>
<node TEXT="GL_LINEAR：线性插值（平滑效果）。" ID="ID_882390165" CREATED="1751109339358" MODIFIED="1751109339358"/>
</node>
</node>
<node TEXT="设置环绕模式" ID="ID_1497773579" CREATED="1751109301915" MODIFIED="1751109303022">
<node TEXT="// S/T 方向均使用重复环绕&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);&#xa;glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);" ID="ID_1528133934" CREATED="1751109303504" MODIFIED="1759464081677" MAX_WIDTH="20 cm">
<node TEXT="GL_REPEAT：重复纹理。" ID="ID_1756350093" CREATED="1751109349488" MODIFIED="1751109349488"/>
<node TEXT="GL_CLAMP_TO_EDGE：边缘拉伸。" ID="ID_1388897560" CREATED="1751109349488" MODIFIED="1751109349488"/>
<node TEXT="GL_MIRRORED_REPEAT：镜像重复。" ID="ID_1715920367" CREATED="1751109349488" MODIFIED="1751109349488"/>
</node>
</node>
</node>
<node TEXT="3. 设置着色器中的采样器与纹理单元关联" ID="ID_1286087897" CREATED="1751109549012" MODIFIED="1759464065844">
<node TEXT="// 获取采样器的uniform位置&#xa;GLint texLocation = glGetUniformLocation(shaderProgram, &quot;texture1&quot;);&#xa;// 设置采样器使用纹理单元0&#xa;glUniform1i(texLocation, 0);  // 0对应GL_TEXTURE0" ID="ID_60944531" CREATED="1751109555593" MODIFIED="1759463669772" MAX_WIDTH="20 cm"/>
<node TEXT="layout (binding = 0) uniform sampler2D basic_texture;" ID="ID_1266786313" CREATED="1759463695992" MODIFIED="1759463711539">
<node TEXT="统一采样器变量" ID="ID_1337503176" CREATED="1751107859012" MODIFIED="1751107862537"/>
<node TEXT="OpenGL 4.2及以上版本可以用“binding”布局显式声明采样器变量应从激活纹理槽0读取" ID="ID_548372214" CREATED="1759463712595" MODIFIED="1759463747037"/>
<node TEXT="用于指示显卡上的纹理单元，从加载的纹理对象中提取或“采样”哪个纹素" POSITION="bottom_or_right" ID="ID_1785315376" CREATED="1751107873364" MODIFIED="1751107875929"/>
<node TEXT="layout (binding=0)”指定此采样器与纹理单元0相关联" POSITION="bottom_or_right" ID="ID_253782002" CREATED="1751107911178" MODIFIED="1751107915650"/>
</node>
</node>
<node TEXT="4. 着色器配置" ID="ID_1760266217" CREATED="1751109457529" MODIFIED="1759463632253">
<node TEXT="顶点着色器" ID="ID_997875862" CREATED="1751109470139" MODIFIED="1751109487794">
<node TEXT="#version 330 core&#xa;layout (location = 0) in vec3 aPos;&#xa;layout (location = 1) in vec2 aTexCoord;&#xa;&#xa;out vec2 TexCoord;&#xa;&#xa;uniform mat4 model;&#xa;uniform mat4 view;&#xa;uniform mat4 projection;&#xa;&#xa;void main() {&#xa;    gl_Position = projection * view * model * vec4(aPos, 1.0);&#xa;    TexCoord = aTexCoord;  // 传递纹理坐标&#xa;}" ID="ID_1991113336" CREATED="1751109488077" MODIFIED="1751109491114"/>
</node>
<node TEXT="片段着色器" ID="ID_448795724" CREATED="1751109498916" MODIFIED="1751109503502">
<node TEXT="#version 330 core&#xa;in vec2 TexCoord;&#xa;out vec4 FragColor;&#xa;&#xa;uniform sampler2D texture1;  // 纹理采样器&#xa;&#xa;void main() {&#xa;    FragColor = texture(texture1, TexCoord);  // 从纹理采样颜色&#xa;}" ID="ID_1359332115" CREATED="1751109504119" MODIFIED="1751109505505"/>
</node>
</node>
</node>
<node TEXT="TODO" ID="ID_799979864" CREATED="1751110948701" MODIFIED="1759477867318">
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
<node TEXT="纹理可以被一个模型重复使用，不同的顶点映射到了相同的纹理坐标，需要纹理在设立时上下和左右衔接，这种纹理称为tiled，（使用算法wang tiled生成）" ID="ID_1810154265" CREATED="1752843519570" MODIFIED="1752843602618"/>
<node TEXT="纹理坐标" ID="ID_822408061" CREATED="1752897872253" MODIFIED="1752897882142">
<node TEXT="纹理坐标是连续的浮点值，用于描述纹理空间中的任意位置。例如，u=0.3 表示纹理宽度的 30% 处，v=0.7 表示纹理高度的 70% 处。" ID="ID_445073535" CREATED="1752897889497" MODIFIED="1752897902820"/>
<node TEXT="UV 坐标与纹理分辨率无关，允许开发者在不修改顶点数据的情况下更换不同尺寸的纹理" ID="ID_1303536022" CREATED="1752897920892" MODIFIED="1752897921221"/>
</node>
<node TEXT="Texel坐标" ID="ID_1233636915" CREATED="1752897928254" MODIFIED="1752897947448">
<node TEXT="Texel 坐标是离散的整数索引，直接对应纹理图像中的像素位置。一张512x512的纹理，texel的坐标范围在0&lt;= x &lt;512, 0&lt;= y &lt;5123" ID="ID_733035339" CREATED="1752897945708" MODIFIED="1752897995576"/>
<node TEXT="连续的 UV 坐标需要映射到离散的 Texel 坐标，必然存在精度丢失问题" ID="ID_1867477832" CREATED="1752898013298" MODIFIED="1752898014180"/>
</node>
<node TEXT="纹理坐标到 Texel 坐标的转换公式" ID="ID_501218618" CREATED="1752898021683" MODIFIED="1752898048999">
<node TEXT="将 UV 坐标 (u,v) 转换为 Texel 坐标 (x,y) 的公式为" ID="ID_556521882" CREATED="1752898062832" MODIFIED="1752898073498"/>
<node TEXT="\latex x = u \times \text{纹理宽度} - 0.5" ID="ID_1987571058" CREATED="1752898084938" MODIFIED="1752898153600">
<font SIZE="14"/>
</node>
<node TEXT="\latex y = v \times \text{纹理高度} - 0.5" ID="ID_1319721866" CREATED="1752898148676" MODIFIED="1752898153597">
<font SIZE="14"/>
</node>
<node TEXT="减 0.5 是为了将坐标原点从纹理左上角调整到第一个 Texel 的中心" POSITION="bottom_or_right" ID="ID_735596167" CREATED="1752897382944" MODIFIED="1752899936641">
<node TEXT="\latex \textbf{未减 0.5 时}：  \\&#xa;UV 坐标 $(0, 0)$ 对应 Texel $(0, 0)$ 的左上角（而非中心），导致边缘采样偏差。" ID="ID_133313306" CREATED="1752900014510" MODIFIED="1752900186995"/>
<node TEXT="\latex \textbf{减 0.5 后}： \\ &#xa;UV 坐标 $(0, 0)$ 对应 Texel $(-0.5, -0.5)$，即第一个 Texel $(0, 0)$ 的中心，消除了边缘偏差。" ID="ID_301288281" CREATED="1752900194925" MODIFIED="1752900207458"/>
</node>
<node TEXT="举例" POSITION="bottom_or_right" ID="ID_842850593" CREATED="1752900378043" MODIFIED="1752900380814">
<node TEXT="假设纹理宽度为 4，UV 坐标 (0.25,0.25) 应对应第二个 Texel 的中心" ID="ID_1878881630" CREATED="1752900381040" MODIFIED="1752900398984" MAX_WIDTH="20 cm"/>
<node TEXT="\latex $\text{texel}_x = (0.25 \times 4) - 0.5 = 1 - 0.5 = 0.5$" POSITION="bottom_or_right" ID="ID_656364403" CREATED="1752900234895" MODIFIED="1752900351696" MAX_WIDTH="20 cm">
<font SIZE="14"/>
<node TEXT="\latex 结果 $0.5$ 恰好是 Texel $(0)$ 和 $(1)$ 之间的中心位置。 " ID="ID_1647333615" CREATED="1752900249313" MODIFIED="1752900251974"/>
</node>
<node TEXT="\latex $\text{texel}_x = \operatorname{floor}(0.25 \times 4) - 0.5 = 0 - 0.5 = -0.5$" POSITION="bottom_or_right" ID="ID_518392584" CREATED="1752900257046" MODIFIED="1752900351693" MAX_WIDTH="20 cm">
<font SIZE="14"/>
<node TEXT="\latex 结果 $-0.5$ 对应 Texel $(0)$ 的左侧，导致采样位置偏移。 " ID="ID_1615913395" CREATED="1752900269256" MODIFIED="1752900272699"/>
</node>
</node>
</node>
<node TEXT="纹理映射过程" ID="ID_344646063" CREATED="1752897305187" MODIFIED="1757214852115">
<node TEXT="从屏幕空间到模型表面的映射" ID="ID_932124090" CREATED="1752897308155" MODIFIED="1752897312921">
<node TEXT="通过光栅化确定屏幕像素对应的模型表面位置（即重心坐标插值）" ID="ID_1783294607" CREATED="1752897324672" MODIFIED="1752897325538"/>
<node TEXT="使用模型的纹理坐标（UV 坐标）将表面位置转换到纹理空间。" ID="ID_1507968479" CREATED="1752897328854" MODIFIED="1752897689606"/>
<node TEXT="屏幕像素坐标-&gt;模型表面位置-&gt;纹理坐标" ID="ID_240677997" CREATED="1752897692960" MODIFIED="1752897723761"/>
</node>
<node TEXT="纹理坐标到 Texel 坐标的转换" ID="ID_913199474" CREATED="1752897316219" MODIFIED="1752897316512"/>
<node TEXT="根据 Texel 坐标计算颜色值" ID="ID_1119842256" CREATED="1752897320236" MODIFIED="1752897320597"/>
</node>
<node TEXT="纹理走样" ID="ID_760570700" CREATED="1759464844072" MODIFIED="1759464846934">
<node TEXT="纹理放大走样（Texture Magnification Aliasing）" POSITION="bottom_or_right" ID="ID_813644292" CREATED="1752898403464" MODIFIED="1759464760401">
<node TEXT="当 3D 表面离相机很近时，纹理被过度 “放大”—— 屏幕上的像素数量多于纹理的纹素（Texel）数量（一个纹素被拉伸覆盖多个像素）" ID="ID_1289213164" CREATED="1752896894920" MODIFIED="1759464662526"/>
<node TEXT="画面出现 “大块方块感”（同一个纹素被重复用于一整块像素）" ID="ID_630634240" CREATED="1759464682489" MODIFIED="1759464682936"/>
<node TEXT="纹理太小导致" ID="ID_976031040" CREATED="1752904609568" MODIFIED="1752904615158"/>
</node>
<node TEXT="纹理缩小走样（Texture Minification Aliasing）" POSITION="bottom_or_right" ID="ID_45107336" CREATED="1752904589218" MODIFIED="1759464761568">
<node TEXT="像素在纹理上的覆盖范围" ID="ID_1413457895" CREATED="1752904616674" MODIFIED="1752905308769">
<node TEXT="在一个texel的范围内，直接查询即可，（point query）" ID="ID_342945627" CREATED="1752905309088" MODIFIED="1752905330768"/>
<node TEXT="像素覆盖了很多的texel（range query），需要去范围内所有的texel的平均值" ID="ID_977542996" CREATED="1752905331241" MODIFIED="1752905354645">
<node TEXT="range query分了很多种，有求平均值的，也有求最大最小值的" ID="ID_1686733551" CREATED="1752905355811" MODIFIED="1752905379050"/>
</node>
</node>
<node TEXT="当 3D 表面离相机很远时，纹理被过度 “缩小”—— 纹理的纹素数量多于屏幕的像素数量（多个纹素需要压缩到一个像素）" ID="ID_1135416886" CREATED="1759464706714" MODIFIED="1759464715302"/>
<node TEXT="若用 “最近邻采样（Nearest Neighbour）”，采样器会随机选择 “最近的纹素”，导致画面闪烁（如远处的树在 “透明背景” 和 “绿叶” 间随机切换颜色），呈现 “像素化、破碎感”。" ID="ID_1549992992" CREATED="1759464724463" MODIFIED="1759464724834"/>
</node>
</node>
<node TEXT="抗锯齿与纹理过滤（Anti-Aliasing &amp; Filters）" ID="ID_1715298452" CREATED="1759464772710" MODIFIED="1759464773455">
<node TEXT="为解决 “走样”，OpenGL 通过纹理过滤来优化采样过程，核心思路是 “混合多个纹素的颜色，而非只取单个纹素”" ID="ID_987838364" CREATED="1759464786209" MODIFIED="1759464787486"/>
<node TEXT="纹理过滤方法" POSITION="bottom_or_right" ID="ID_1244553171" CREATED="1752906528221" MODIFIED="1752906532610">
<node TEXT="最近邻采样（Nearest Neighbor Sampling）" POSITION="bottom_or_right" ID="ID_1084994325" CREATED="1752896911553" MODIFIED="1752896913883">
<node TEXT="直接选择离目标点最近的整数 Texel" POSITION="bottom_or_right" ID="ID_335159476" CREATED="1752896918995" MODIFIED="1752898752478"/>
<node TEXT="当 Texel 坐标为非整数时，结果可能跳变，导致锯齿或像素块效应" POSITION="bottom_or_right" ID="ID_1274433922" CREATED="1752898758814" MODIFIED="1752898759093"/>
<node TEXT="\latex&#xa;\[&#xa;\text{采样位置} = \bigl( \operatorname{round}(u_{\text{texel}}),\ \operatorname{round}(v_{\text{texel}}) \bigr)&#xa;\]" POSITION="bottom_or_right" ID="ID_783208727" CREATED="1752899039263" MODIFIED="1752899045541">
<font SIZE="14"/>
</node>
</node>
<node TEXT="双线性插值（Bilinear Interpolation）" FOLDED="true" POSITION="bottom_or_right" ID="ID_453097771" CREATED="1752896933338" MODIFIED="1752896933641">
<node TEXT="对目标点周围的 4 个 Texel 进行加权平均，权重由距离决定" ID="ID_117746360" CREATED="1752896938109" MODIFIED="1752898765129"/>
<node TEXT="平滑过渡，减少锯齿，尤其适用于放大场景" ID="ID_771521492" CREATED="1752898768752" MODIFIED="1752898769010"/>
<node TEXT="通过两次线性插值（水平和垂直方向）计算最终颜色" ID="ID_403463526" CREATED="1752898787045" MODIFIED="1752898787299"/>
<node TEXT="步骤" ID="ID_513850065" CREATED="1752899076868" MODIFIED="1752899080954">
<node TEXT="\latex \textbf{确定 4 个相邻 Texel:} &#xa;例如，Texel 坐标 $(255.3, 255.7)$ 对应的 4 个点为： \\&#xa;(255, 255),\ (256, 255),\ (255, 256),\ (256, 256)&#xa;" ID="ID_1211078358" CREATED="1752899081165" MODIFIED="1752899185247" MAX_WIDTH="20 cm">
<font SIZE="14" BOLD="true"/>
</node>
<node TEXT="\latex $s = 255.3 - 255 = 0.3$（U 方向小数部分） " ID="ID_405102186" CREATED="1752899099539" MODIFIED="1752899138147" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
<node TEXT="\latex $t = 255.7 - 255 = 0.7$（V 方向小数部分） " ID="ID_1608062283" CREATED="1752899105543" MODIFIED="1752899138147" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
<node TEXT="\latex \textbf{水平方向:} 对上下两行分别插值 \\&#xa;&#xa;\text{Row1} = (1 - s) \cdot \text{Texel}(255, 255) + s \cdot \text{Texel}(256, 255)\\&#xa;&#xa;\text{Row2} = (1 - s) \cdot \text{Texel}(255, 256) + s \cdot \text{Texel}(256, 256)&#xa;" ID="ID_181725936" CREATED="1752899118100" MODIFIED="1752899172945" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
<node TEXT="\latex \textbf{垂直方向:} 对两次结果再插值 \\&#xa;\text{最终颜色} = (1 - t) \cdot \text{Row1} + t \cdot \text{Row2}&#xa;" ID="ID_142612575" CREATED="1752899121592" MODIFIED="1752899269255" MAX_WIDTH="20 cm">
<font SIZE="14"/>
</node>
</node>
<node TEXT="代码实现" ID="ID_1789492199" CREATED="1752898975575" MODIFIED="1752898988550">
<node TEXT="// 双线性插值纹理采样&#xa;Color bilinear_sample(Texture texture, float u, float v) {&#xa;    // 将归一化坐标转换为Texel坐标&#xa;    float texel_u = u * texture.width - 0.5f;&#xa;    float texel_v = v * texture.height - 0.5f;&#xa;   &#xa;    // 计算相邻4个Texel的坐标&#xa;    int u0 = (int)texel_u;&#xa;    int v0 = (int)texel_v;&#xa;    int u1 = u0 + 1;&#xa;    int v1 = v0 + 1;&#xa;   &#xa;    // 确保坐标在纹理范围内&#xa;    u0 = clamp(u0, 0, texture.width - 1);&#xa;    v0 = clamp(v0, 0, texture.height - 1);&#xa;    u1 = clamp(u1, 0, texture.width - 1);&#xa;    v1 = clamp(v1, 0, texture.height - 1);&#xa;   &#xa;    // 计算小数部分（权重）&#xa;    float s = texel_u - u0;&#xa;    float t = texel_v - v0;&#xa;   &#xa;    // 获取4个Texel的颜色&#xa;    Color c00 = texture.get_pixel(u0, v0);&#xa;    Color c10 = texture.get_pixel(u1, v0);&#xa;    Color c01 = texture.get_pixel(u0, v1);&#xa;    Color c11 = texture.get_pixel(u1, v1);&#xa;   &#xa;    // 水平方向插值&#xa;    Color row1 = lerp(c00, c10, s);  // row1 = (1-s)*c00 + s*c10&#xa;    Color row2 = lerp(c01, c11, s);  // row2 = (1-s)*c01 + s*c11&#xa;   &#xa;    // 垂直方向插值&#xa;    return lerp(row1, row2, t);      // result = (1-t)*row1 + t*row2&#xa;}" ID="ID_67124828" CREATED="1752898988723" MODIFIED="1752899307757" MAX_WIDTH="20 cm"/>
</node>
</node>
<node TEXT="Bicubic" POSITION="bottom_or_right" ID="ID_112849964" CREATED="1752904479617" MODIFIED="1752904481999"/>
<node TEXT="三线性插值（Trilinear Interpolation）" POSITION="bottom_or_right" ID="ID_828973657" CREATED="1752896953603" MODIFIED="1752896954569">
<node TEXT="在双线性插值基础上，增加对 ** 多级渐远纹理（Mipmaps）** 的插值。" POSITION="bottom_or_right" ID="ID_404363320" CREATED="1752896948441" MODIFIED="1752896948730"/>
</node>
<node TEXT="各向异性过滤（Anisotropic Filtering）" POSITION="bottom_or_right" ID="ID_1956683422" CREATED="1752896959865" MODIFIED="1752896967016">
<node TEXT="当纹理倾斜显示时，使用椭圆区域内的多个 Texel 样本进行加权平均" ID="ID_1685337549" CREATED="1752898804793" MODIFIED="1752898823764"/>
<node TEXT="放大且倾斜的纹理（如地面、墙面），需处理非整数 Texel 坐标在长轴方向的密集分布" ID="ID_1091571609" CREATED="1752898828973" MODIFIED="1752898829332"/>
<node TEXT="GLfloat max_aniso = 0.0f;&#xa;glGetFloatv( GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, &amp;max_aniso );&#xa;// set the maximum!&#xa;glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, max_aniso );" ID="ID_816007530" CREATED="1759464960730" MODIFIED="1759464973744" MAX_WIDTH="20 cm"/>
</node>
</node>
<node TEXT="Mipmap" POSITION="bottom_or_right" ID="ID_40839415" CREATED="1752905399386" MODIFIED="1752905401543">
<node TEXT="多级渐远纹理贴图" ID="ID_744484613" CREATED="1759465040240" MODIFIED="1759465040665"/>
<node TEXT="可以用来做范围查询" ID="ID_609502305" CREATED="1752905408563" MODIFIED="1752905455569"/>
<node TEXT="特点" ID="ID_442135854" CREATED="1752905457603" MODIFIED="1752905470276">
<node TEXT="查询速度非常快" POSITION="bottom_or_right" ID="ID_185402938" CREATED="1752905416198" MODIFIED="1752905479592"/>
<node TEXT="近似的" POSITION="bottom_or_right" ID="ID_552225366" CREATED="1752905423971" MODIFIED="1752905431381"/>
<node TEXT="只能做正方形的查询" POSITION="bottom_or_right" ID="ID_1365839212" CREATED="1752905431794" MODIFIED="1752905448974"/>
</node>
<node TEXT="比没有使用mipmap的纹理的大小之多了1/3" ID="ID_228390820" CREATED="1752905826599" MODIFIED="1752905848671"/>
<node TEXT="它需要用各种分辨率创建纹理图像的不同版本。然后，OpenGL使用最适合正在处理的这一点处的分辨率的纹理图像进行纹理贴图。更好的是，可以为被贴图的区域使用最适合的分辨率的纹理图像的平均颜色" POSITION="bottom_or_right" ID="ID_24966653" CREATED="1751110163946" MODIFIED="1751110166500"/>
<node TEXT="传统纹理渲染中，当物体远离摄像机时，若直接使用高分辨率纹理会导致两大问题" POSITION="bottom_or_right" ID="ID_1926252896" CREATED="1751110766339" MODIFIED="1751110767577">
<node TEXT="采样走样（Aliasing）：纹理被缩小时，像素采样频率不足，导致锯齿、摩尔纹等失真现象。" ID="ID_371456259" CREATED="1751110785383" MODIFIED="1751110785383"/>
<node TEXT="性能浪费：远距离物体在屏幕上占据的像素少，使用高分辨率纹理会增加不必要的计算量（如纹理采样次数）。" ID="ID_994152902" CREATED="1751110785383" MODIFIED="1751110785383"/>
</node>
</node>
</node>
<node TEXT="纹理混合" POSITION="bottom_or_right" ID="ID_702033235" CREATED="1757218821372" MODIFIED="1757218824496"/>
<node TEXT="alpha预乘" POSITION="bottom_or_right" ID="ID_1287819807" CREATED="1757218836058" MODIFIED="1757218846037"/>
</node>
<node TEXT="如何在三角形内部做任何属性的插值" FOLDED="true" ID="ID_1256182637" CREATED="1752848210064" MODIFIED="1752848221100">
<node TEXT="可以插值哪些属性" ID="ID_826402959" CREATED="1752848301281" MODIFIED="1752848308370">
<node TEXT="纹理坐标" ID="ID_238334426" CREATED="1752848309334" MODIFIED="1752848318625"/>
<node TEXT="颜色" ID="ID_358160855" CREATED="1752848318821" MODIFIED="1752848322390"/>
<node TEXT="法线" ID="ID_1547049940" CREATED="1752848323095" MODIFIED="1752848327469"/>
<node TEXT="位置" ID="ID_1532103822" CREATED="1752849446543" MODIFIED="1752849449595"/>
<node TEXT="深度" ID="ID_434980946" CREATED="1752849449750" MODIFIED="1752849452519"/>
<node TEXT="材质属性" ID="ID_470378860" CREATED="1752849452753" MODIFIED="1752849457568"/>
</node>
<node TEXT="如何插值" ID="ID_593224812" CREATED="1752848367952" MODIFIED="1752848370525">
<node TEXT="重心坐标" ID="ID_420319875" CREATED="1752848370724" MODIFIED="1752848374385">
<node TEXT="三角形平面上任意一个点都可以表示为三角形三个点的线性组合，线性组合的系数总和是1" ID="ID_1698034573" CREATED="1752848434892" MODIFIED="1752848481964"/>
<node TEXT="重心坐标（Barycentric Coordinates）是定义在三角形上的一种坐标系统，用于描述三角形所在平面内任意一点的位置。" ID="ID_1449081809" CREATED="1752850089167" MODIFIED="1752850089658"/>
<node TEXT="对于三角形ABC，平面内任意一点P(x,y)可以表示为：" ID="ID_1971514670" CREATED="1752850130804" MODIFIED="1752850164925">
<node TEXT="\latex (x, y) = \alpha A + \beta B + \gamma C" POSITION="bottom_or_right" ID="ID_1636413441" CREATED="1752848617365" MODIFIED="1752848631730">
<font SIZE="16"/>
</node>
<node TEXT="需要满足系数和约束：" POSITION="bottom_or_right" ID="ID_507063529" CREATED="1752850173245" MODIFIED="1752850179438">
<node TEXT="\latex \alpha + \beta + \gamma = 1" POSITION="bottom_or_right" ID="ID_1762652825" CREATED="1752848626564" MODIFIED="1752848631725">
<font SIZE="16"/>
<node TEXT="TODO：为了限制这个点在三角形的平面内" ID="ID_850459271" CREATED="1752848953103" MODIFIED="1752848972938"/>
</node>
</node>
<node TEXT="只有当三个系数都大于等于0时，p点才在三角形内部" POSITION="bottom_or_right" ID="ID_354889910" CREATED="1752850252459" MODIFIED="1752850268626"/>
</node>
<node TEXT="从几何上来看，是各个子三角形与总三角形的面积比" ID="ID_1446096203" CREATED="1752850193049" MODIFIED="1752850221224">
<node TEXT="\latex \alpha = \frac{A_A}{A_A + A_B + A_C}&#xa;" POSITION="bottom_or_right" ID="ID_704523233" CREATED="1752849894620" MODIFIED="1752849924332">
<font SIZE="16"/>
<node TEXT="\latex = \frac{ - (x - x_B)(y_C - y_B) + (y - y_B)(x_C - x_B) }{ - (x_A - x_B)(y_C - y_B) + (y_A - y_B)(x_C - x_B) } &#xa;" POSITION="bottom_or_right" ID="ID_1035774047" CREATED="1752849935599" MODIFIED="1752850281016" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
<node TEXT="A点对面的小三角形" POSITION="bottom_or_right" ID="ID_809319747" CREATED="1752850334204" MODIFIED="1752850346433"/>
</node>
<node TEXT="\latex \beta = \frac{A_B}{A_A + A_B + A_C} \\" POSITION="bottom_or_right" ID="ID_268541742" CREATED="1752849909520" MODIFIED="1752849924331">
<font SIZE="16"/>
<node TEXT="\latex  = \frac{ - (x - x_C)(y_A - y_C) + (y - y_C)(x_A - x_C) }{ - (x_B - x_C)(y_A - y_C) + (y_B - y_C)(x_A - x_C) }&#xa;" POSITION="bottom_or_right" ID="ID_1829474617" CREATED="1752849947872" MODIFIED="1752850302584" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
</node>
<node TEXT="\latex \gamma = \frac{A_C}{A_A + A_B + A_C}" POSITION="bottom_or_right" ID="ID_379398102" CREATED="1752849918477" MODIFIED="1752849924328">
<font SIZE="16"/>
<node TEXT="\latex = 1 - \alpha - \beta" POSITION="bottom_or_right" ID="ID_1717330119" CREATED="1752849954632" MODIFIED="1752850295726" MAX_WIDTH="20 cm">
<font SIZE="16"/>
</node>
</node>
</node>
<node TEXT="\latex 重心坐标 = (\alpha, \beta, \gamma)" ID="ID_207378830" CREATED="1752848638002" MODIFIED="1752848672755">
<font SIZE="16"/>
</node>
<node TEXT="需要注意的地方" ID="ID_1057984083" CREATED="1752850428013" MODIFIED="1752850432998">
<node TEXT="投影变换的影响" ID="ID_1337115834" CREATED="1752850500593" MODIFIED="1752850501871">
<node TEXT="3D 三角形投影到 2D 屏幕后，重心坐标会发生变化（因为投影会拉伸 / 压缩三角形）" POSITION="bottom_or_right" ID="ID_1264639408" CREATED="1752850441654" MODIFIED="1752850449339">
<node TEXT="若直接用 2D 投影后的坐标计算重心坐标，再插值 3D 属性（如深度、法线），会导致误差甚至错误（比如深度插值错误，引发 Z-fighting）" ID="ID_268184764" CREATED="1752850463681" MODIFIED="1752850477652"/>
<node TEXT="在 3D 空间中计算重心坐标，先插值再投影。即对 3D 顶点属性（如 3D 坐标、法线），用三维重心坐标插值，再将结果投影到屏幕" ID="ID_822917807" CREATED="1752850471844" MODIFIED="1752850473966"/>
</node>
<node TEXT="# 透视矫正插值示例（以深度值为例）&#xa;def perspective_correct_interpolation(u, v, w, d0, d1, d2, z0, z1, z2):&#xa;    &quot;&quot;&quot;&#xa;    透视矫正的深度插值&#xa;   &#xa;    参数:&#xa;    u, v, w - 重心坐标&#xa;    d0, d1, d2 - 待插值的属性值（如深度、纹理坐标）&#xa;    z0, z1, z2 - 顶点的实际深度值&#xa;    &quot;&quot;&quot;&#xa;    # 计算透视矫正权重&#xa;    inv_z = u/z0 + v/z1 + w/z2&#xa;    u_persp = u/(z0 * inv_z)&#xa;    v_persp = v/(z1 * inv_z)&#xa;    w_persp = w/(z2 * inv_z)&#xa;   &#xa;    # 使用矫正后的权重插值&#xa;    return u_persp * d0 + v_persp * d1 + w_persp * d2" POSITION="bottom_or_right" ID="ID_100438387" CREATED="1752851878725" MODIFIED="1752851890401" MAX_WIDTH="20 cm"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
