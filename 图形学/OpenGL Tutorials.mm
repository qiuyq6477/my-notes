<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="OpenGL Tutorials" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1759409403271" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_icons="BESIDE_NODES" associatedTemplateLocation="template:/standard-1.6.mm" show_tags="UNDER_NODES"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<node TEXT="07. 射线检测" FOLDED="true" POSITION="bottom_or_right" ID="ID_757676758" CREATED="1759409804077" MODIFIED="1759409814698">
<edge COLOR="#ff0000"/>
<node TEXT="从鼠标在屏幕上的 2D 位置计算出一条 3D 射线" ID="ID_154937146" CREATED="1759416268322" MODIFIED="1759416350202">
<node TEXT="Step 0: 2d Viewport Coordinates" POSITION="bottom_or_right" ID="ID_558700643" CREATED="1759415914327" MODIFIED="1759415932402">
<node TEXT="屏幕坐标的原点 (0,0) 通常在左上角" ID="ID_11838792" CREATED="1759416371875" MODIFIED="1759416373080"/>
</node>
<node TEXT="Step 1: 3d Normalised Device Coordinates" POSITION="bottom_or_right" ID="ID_1398691627" CREATED="1759415951222" MODIFIED="1759415951515">
<node TEXT="float x = (2.0f * mouse_x) / width - 1.0f;&#xa;float y = 1.0f - (2.Of * mouse_y) / height;&#xa;float z = 1.0f;&#xa;vec3 ray_nds = vec3(x, y, z) ;" ID="ID_625650824" CREATED="1759416012345" MODIFIED="1759416023220"/>
<node TEXT="将 2D 屏幕坐标转换为 3D 标准化设备坐标（NDC），目的是消除屏幕尺寸的影响，统一到一个标准空间" ID="ID_1369657499" CREATED="1759416388733" MODIFIED="1759416389672"/>
</node>
<node TEXT="Step 2: 4d Homogeneous Clip Coordinates" POSITION="bottom_or_right" ID="ID_998805868" CREATED="1759416040818" MODIFIED="1759416041109">
<node TEXT="vec4 ray_clip = vec4( ray_nds.xy, -1.0, 1.0 );" ID="ID_112989325" CREATED="1759416092594" MODIFIED="1759416104969"/>
<node TEXT="将 NDC 转换为齐次裁剪坐标（Clip Space），这是投影变换后的空间" ID="ID_1625936883" CREATED="1759416417444" MODIFIED="1759416418281"/>
</node>
<node TEXT="Step 3: 4d Eye (Camera) Coordinates" POSITION="bottom_or_right" ID="ID_733192459" CREATED="1759416145589" MODIFIED="1759416145896">
<node TEXT="vec4 ray_eye = inverse(projection_matrix) * ray_clip;" ID="ID_144781869" CREATED="1759416187967" MODIFIED="1759416191935"/>
<node TEXT="ray_eye = vec4 (ray_eye.xy, -1.0, 0.0);" ID="ID_1715569247" CREATED="1759416215809" MODIFIED="1759416216342">
<node TEXT="z = -1.0：在相机空间中，相机通常朝向 -z 方向（右手坐标系），因此射线方向的 z 分量设为 - 1，表示 “向前”。" ID="ID_1169955750" CREATED="1759416980849" MODIFIED="1759416982884"/>
<node TEXT="w = 0.0：齐次坐标中，w=0 表示这是一个 “方向向量”（而非点），这样后续的视图变换不会对其应用平移（只保留旋转和缩放）。" ID="ID_477831174" CREATED="1759416986453" MODIFIED="1759416987008"/>
</node>
<node TEXT="将裁剪坐标转换到相机空间（以相机为原点的坐标系统）" ID="ID_987384873" CREATED="1759416455004" MODIFIED="1759416456565"/>
<node TEXT="projection_matrix（投影矩阵）的作用是将相机空间的坐标转换到裁剪空间，因此乘以它的逆矩阵 inverse(projection_matrix) 可以反向转换，得到相机空间的坐标" ID="ID_623461124" CREATED="1759416484636" MODIFIED="1759416485134"/>
</node>
<node TEXT="Step 4: 4d World Coordinates" POSITION="bottom_or_right" ID="ID_1084842531" CREATED="1759416221956" MODIFIED="1759416222268">
<node TEXT="vec3 ray wor = (inverse (view_matrix) * ray_eye) .xyz;&#xa;I/ don&apos;t forget to normalise the vector at some point&#xa;ray_wor = normalise (ray_wor);" ID="ID_602098311" CREATED="1759416242392" MODIFIED="1759416243569"/>
<node TEXT="将相机空间的射线方向转换到世界空间" ID="ID_1093215897" CREATED="1759416524683" MODIFIED="1759416526030"/>
<node TEXT="view_matrix（视图矩阵）的作用是将世界空间的坐标转换到相机空间，因此乘以它的逆矩阵 inverse(view_matrix) 可以反向转换，得到世界空间的射线方向" ID="ID_1458421557" CREATED="1759416533899" MODIFIED="1759416534238"/>
</node>
</node>
<node TEXT="射线和平面相交" ID="ID_1729131682" CREATED="1759417288340" MODIFIED="1759417298895">
<node TEXT="平面" ID="ID_1907632952" CREATED="1759417299124" MODIFIED="1759417428703">
<node TEXT="\latex \( P \cdot \hat{n} + \delta = 0 \)" ID="ID_1489272967" CREATED="1759417429362" MODIFIED="1759417667767">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( P \)：平面上的任意一点（三维坐标）。&#xa;" ID="ID_93871634" CREATED="1759417460950" MODIFIED="1759417667769">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( \hat{n} \)：平面的单位法向量（垂直于平面，长度为 1）。&#xa;" ID="ID_1976274135" CREATED="1759417499751" MODIFIED="1759417667769">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( \delta \)：平面的常数项（决定平面到原点的距离，与 \( \hat{n} \) 共同定义平面位置）。" ID="ID_1642319012" CREATED="1759417507386" MODIFIED="1759417667769">
<font SIZE="12"/>
</node>
</node>
<node TEXT="射线" ID="ID_1686071289" CREATED="1759417522067" MODIFIED="1759417522391">
<node TEXT="\latex \( O + t\hat{d} \)" ID="ID_1798822579" CREATED="1759417523436" MODIFIED="1759417667770">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( O \)：射线的原点（起点）。&#xa;       " ID="ID_406484029" CREATED="1759417537310" MODIFIED="1759417667770">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( \hat{d} \)：射线的单位方向向量（射线延伸的方向，长度为 1）。&#xa;       " ID="ID_1655603514" CREATED="1759417546670" MODIFIED="1759417667770">
<font SIZE="12"/>
</node>
<node TEXT="\latex \( t \)：参数（表示从原点 \( O \) 出发，沿 \( \hat{d} \) 方向走的“距离”，\( t \geq 0 \) 时为射线的有效部分）。" ID="ID_1307941516" CREATED="1759417553881" MODIFIED="1759417667770">
<font SIZE="12"/>
</node>
</node>
<node TEXT="联立求解" ID="ID_219073373" CREATED="1759417579316" MODIFIED="1759417583358">
<node TEXT="\latex 把 \( P = O + t\hat{d} \) 代入 \( P \cdot \hat{n} + \delta = 0 \)，得到：&#xa;\[&#xa;(O + t\hat{d}) \cdot \hat{n} + \delta = 0&#xa;\]" ID="ID_1323939801" CREATED="1759417583735" MODIFIED="1759417667771">
<font SIZE="12"/>
</node>
<node TEXT="\latex 将点积展开并整理：&#xa;\[&#xa;O \cdot \hat{n} + t(\hat{d} \cdot \hat{n}) + \delta = 0&#xa;\]" ID="ID_1648069201" CREATED="1759417595633" MODIFIED="1759417667771">
<font SIZE="12"/>
</node>
<node TEXT="\latex 解关于 \( t \) 的方程：&#xa;\[&#xa;t = -\frac{O \cdot \hat{n} + \delta}{\hat{d} \cdot \hat{n}}&#xa;\]" ID="ID_1872357512" CREATED="1759417607079" MODIFIED="1759417667771">
<font SIZE="12"/>
</node>
<node TEXT="\latex 1：若 \( \hat{d} \cdot \hat{n} = 0 \)，说明射线方向 \( \hat{d} \) 与平面法向量 \( \hat{n} \) 垂直，即射线与平面平行 → 无交点（或射线在平面上，一般视为“不相交”）。" ID="ID_1360541024" CREATED="1759417618704" MODIFIED="1759417667772">
<font SIZE="12"/>
</node>
<node TEXT="\latex 2：若 \( t &lt; 0 \)，说明交点在射线原点 \( O \) 的反方向 → 射线“还没出发就相交”，也视为“不相交”。" ID="ID_339503642" CREATED="1759417632142" MODIFIED="1759417667772">
<font SIZE="12"/>
</node>
<node TEXT="\latex 3.若 \( \hat{d} \cdot \hat{n} \neq 0 \) 且 \( t \geq 0 \)，则存在有效交点。将 \( t \) 代入射线的参数式，得到交点坐标：&#xa;\[&#xa;P = O + t\hat{d}&#xa;\]" POSITION="bottom_or_right" ID="ID_831449542" CREATED="1759417642353" MODIFIED="1759417728976">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="射线与球体相交" ID="ID_1878914455" CREATED="1759417817534" MODIFIED="1759417824079">
<node TEXT="优化" ID="ID_1095236682" CREATED="1759418048581" MODIFIED="1759418051294">
<node TEXT="可以通过在计算平方根之前添加一些检查来降低算法的开销。比较射线起点与球心之间的平方距离。你可以将其投影为沿射线方向的二维距离（点积），并将终点的平方距离（使用毕达哥拉斯定理）与平方半径进行比较。" POSITION="bottom_or_right" ID="ID_1390095837" CREATED="1759417950770" MODIFIED="1759417957030"/>
</node>
<node TEXT="用途" ID="ID_1285120897" CREATED="1759418051731" MODIFIED="1759418055077">
<node TEXT="通常，如果你想在形状上绘制（例如绘制点击拖拽选择框），射线投射是一个不错的选择。如果你想要不精确的选择，即允许用户点击一个复杂小网格的大致区域来选择它，那么射线投射是一个好选择。如果你想要精确度，那么你几乎肯定更适合使用基于颜色的拾取方法，尽管它需要额外的一次渲染通道，但比场景中每个可选对象进行1-5次射线投射的开销要小。" ID="ID_768270182" CREATED="1759418072666" MODIFIED="1759418073972"/>
</node>
</node>
</node>
<node TEXT="10. 屏幕捕捉" POSITION="bottom_or_right" ID="ID_318129798" CREATED="1759465571575" MODIFIED="1759465581470">
<edge COLOR="#0000ff"/>
<node TEXT="bool screencapture() {&#xa;  unsigned char* buffer = (unsigned char*)malloc( g_gl_width * g_gl_height * 3 );&#xa;  glReadPixels( 0, 0, g_gl_width, g_gl_height, GL_RGB, GL_UNSIGNED_BYTE, buffer );&#xa;  char name[1024];&#xa;  long int t = time( NULL );&#xa;  printf( &quot; writing screenshot_%ld.png\n&quot;, t );&#xa;  sprintf( name, &quot;screenshot_%ld.png&quot;, t );&#xa;  unsigned char* last_row = buffer + ( g_gl_width * 3 * ( g_gl_height - 1 ) );&#xa;  if ( !stbi_write_png( name, g_gl_width, g_gl_height, 3, last_row, -3 * g_gl_width ) ) {&#xa;    fprintf( stderr, &quot;ERROR: could not write screenshot file %s\n&quot;, name );&#xa;  }&#xa;  free( buffer );&#xa;  return true;&#xa;}" ID="ID_1683672374" CREATED="1759465865464" MODIFIED="1759465898616" MAX_WIDTH="30 cm"/>
</node>
<node TEXT="17. alpha混合" FOLDED="true" POSITION="bottom_or_right" ID="ID_663793267" CREATED="1759484526913" MODIFIED="1759484537428">
<edge COLOR="#007c00"/>
<node TEXT="glEnable" ID="ID_779842782" CREATED="1759484539887" MODIFIED="1759484555083">
<node TEXT="开启 OpenGL 的混合模式" ID="ID_688487384" CREATED="1759484561404" MODIFIED="1759484562190"/>
<node TEXT="混合是指：当新渲染的像素（源像素）输出到帧缓冲区时，不直接覆盖已存在的像素（目标像素），而是通过特定算法将两者的颜色混合，最终生成一个新的像素颜色写入帧缓冲区。" ID="ID_1365428629" CREATED="1759484571788" MODIFIED="1759484572049"/>
<node TEXT="混合功能是实现半透明效果的基础（如玻璃、烟雾、透明纹理等）。当关闭混合（默认状态）时，新像素会直接覆盖帧缓冲区中对应位置的旧像素，无法表现半透明" ID="ID_999008870" CREATED="1759484605177" MODIFIED="1759484605545"/>
<node TEXT="合仅影响颜色缓冲区（Color Buffer）的写入，不直接影响深度缓冲区" ID="ID_287633876" CREATED="1759484634488" MODIFIED="1759484634746"/>
</node>
<node TEXT="glBlendFunc" ID="ID_810931247" CREATED="1759484641400" MODIFIED="1759484641672">
<node TEXT="设置混合时源像素和目标像素的颜色权重（因子），定义两者如何混合" ID="ID_1373911217" CREATED="1759484651158" MODIFIED="1759484652085"/>
<node TEXT="sfactor（源因子）：控制新渲染的像素（源像素）颜色在混合中的权重" ID="ID_527474551" CREATED="1759484669692" MODIFIED="1759484669922"/>
<node TEXT="dfactor（目标因子）：控制帧缓冲区中已存在的像素（目标像素）颜色在混合中的权重" ID="ID_1362421035" CREATED="1759484674797" MODIFIED="1759484675003"/>
<node TEXT="最终颜色 = (源像素颜色 × 源因子) + (目标像素颜色 × 目标因子)" ID="ID_397214802" CREATED="1759484683322" MODIFIED="1759484683584"/>
</node>
<node TEXT="glDepthMask" ID="ID_899038419" CREATED="1759484703057" MODIFIED="1759484705664">
<node TEXT="设置深度缓冲区（Depth Buffer）是否允许写入" ID="ID_547450064" CREATED="1759484718414" MODIFIED="1759484719377">
<node TEXT="深度缓冲区用于记录每个像素的深度值（Z 值）， OpenGL 通过比较新像素与已有像素的深度值，决定是否绘制新像素（深度测试）" POSITION="bottom_or_right" ID="ID_1952605809" CREATED="1759484727404" MODIFIED="1759484727601"/>
</node>
<node TEXT="主要用于半透明物体的渲染" ID="ID_53705529" CREATED="1759484878939" MODIFIED="1759484879864">
<node TEXT="不透明物体：通常开启深度写入（GL_TRUE），确保后面的物体被前面的物体遮挡" ID="ID_977982706" CREATED="1759484891107" MODIFIED="1759484909004">
<font BOLD="false"/>
</node>
<node TEXT="半透明物体：需关闭深度写入（GL_FALSE）。原因是：半透明物体需要 “混合” 后面的物体颜色，若开启深度写入，半透明物体的深度值会覆盖后面物体的深度值，导致后面的物体即使应该被看到（透过半透明），也会因深度测试失败而无法渲染" ID="ID_1816066613" CREATED="1759484905633" MODIFIED="1759484906352"/>
</node>
<node TEXT="lDepthMask 仅控制深度缓冲区的写入，不影响深度测试的执行（深度测试是否启用由 glEnable(GL_DEPTH_TEST) 控制）" ID="ID_1912302869" CREATED="1759484932314" MODIFIED="1759484932776"/>
</node>
<node TEXT="半透明渲染流程" ID="ID_1313188396" CREATED="1759484949977" MODIFIED="1759484951013">
<node TEXT="先渲染所有不透明物体（默认 glDepthMask(GL_TRUE)，深度写入开启）" ID="ID_1016831841" CREATED="1759484956846" MODIFIED="1759485277154" MAX_WIDTH="20 cm"/>
<node TEXT="渲染半透明物体前：" ID="ID_827746293" CREATED="1759484962652" MODIFIED="1759484962899">
<node TEXT="glEnable(GL_BLEND);     // 启用混合 &#xa;glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);  // 配置 alpha 混合规则 &#xa;glDepthMask(GL_FALSE);   // 关闭深度写入（避免遮挡后面物体） " ID="ID_1477451871" CREATED="1759484978762" MODIFIED="1759485268975" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="按 “从后往前” 的顺序渲染半透明物体（确保远处的半透明物体先混合，近处的后混合，符合视觉逻辑）" ID="ID_34855977" CREATED="1759484968787" MODIFIED="1759484969014"/>
<node TEXT="渲染完成后恢复状态：" ID="ID_1838461542" CREATED="1759484973113" MODIFIED="1759484973389">
<node TEXT="glDisable(GL_BLEND);                    // 关闭混合 &#xa;glDepthMask(GL_TRUE);                   // 恢复深度写入 " ID="ID_1596737305" CREATED="1759484984785" MODIFIED="1759484985781"/>
</node>
</node>
</node>
<node TEXT="18. 聚光灯" POSITION="bottom_or_right" ID="ID_66196037" CREATED="1759486196638" MODIFIED="1759486202391">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="19. 雾" POSITION="bottom_or_right" ID="ID_1022402505" CREATED="1759486203397" MODIFIED="1759486214030">
<edge COLOR="#007c7c"/>
<node TEXT="雾的颜色" ID="ID_1598745126" CREATED="1759497592448" MODIFIED="1759497601084"/>
<node TEXT="与摄像机的最短距离，小于这个距离看不到雾的颜色" ID="ID_987576682" CREATED="1759497601363" MODIFIED="1759497629905"/>
<node TEXT="与摄像机的最大距离，大于这个颜色只能看到雾的颜色" ID="ID_153663631" CREATED="1759497630257" MODIFIED="1759497644142"/>
<node TEXT="线性雾" ID="ID_667520899" CREATED="1759497947374" MODIFIED="1759497956460">
<node TEXT="// 1. 初始颜色：用法向量的分量作为 RGB 颜色（alpha 为 1.0 不透明）&#xa;frag_colour = vec4(normal, 1.0);&#xa;// 2. 计算片段到相机的距离&#xa;float dist = length(-pos_eye);  // pos_eye 是眼坐标系中的位置，-pos_eye 是从片段到相机的向量，length 求长度即距离&#xa;// 3. 计算雾因子（雾的影响程度，0~1 之间）&#xa;float fog_fac = (dist - min_fog_radius) / (max_fog_radius - min_fog_radius);&#xa;// 4. 限制雾因子在 0~1 范围（避免距离超出 min/max 时雾效异常）&#xa;fog_fac = clamp(fog_fac, 0.0, 1.0);&#xa;// 5. 混合原始颜色和雾色（基于雾因子）&#xa;frag_colour.rgb = mix(frag_colour.rgb, fog_colour, fog_fac);" POSITION="bottom_or_right" ID="ID_1138565363" CREATED="1759497737758" MODIFIED="1759497869320" MAX_WIDTH="20 cm"/>
</node>
<node TEXT="指数雾" ID="ID_627052219" CREATED="1759497956727" MODIFIED="1759497962523">
<node TEXT="fog_fac = 1.0 / exp(dist * density)" ID="ID_61257901" CREATED="1759497975900" MODIFIED="1759497977018"/>
</node>
<node TEXT="指数平方雾" ID="ID_1588402194" CREATED="1759497962710" MODIFIED="1759497967496">
<node TEXT="fog_fac = 1.0 / exp(pow(dist * density, 2.0))" ID="ID_138466478" CREATED="1759497983458" MODIFIED="1759497992171"/>
</node>
</node>
<node TEXT="20. 法线贴图" POSITION="bottom_or_right" ID="ID_705957692" CREATED="1759498123488" MODIFIED="1759498128430">
<edge COLOR="#7c7c00"/>
<node TEXT="法线贴图（Normal Mapping）是一种高效提升模型表面细节表现力的技术，通过修改物体表面的法线向量来模拟微小凹凸（如划痕、皱纹、纹理），使低多边形模型呈现出高细节的视觉效果，而无需增加几何面数" ID="ID_1201444182" CREATED="1759498551819" MODIFIED="1759498552808"/>
<node TEXT="核心原理" ID="ID_792320204" CREATED="1759498560422" MODIFIED="1759498560780">
<node TEXT="物体表面的光照效果（如高光、阴影）主要由法线向量（垂直于表面的向量）决定：法线方向不同，反射光的方向也不同，最终呈现的明暗细节就不同。" ID="ID_1890615413" CREATED="1759498590221" MODIFIED="1759498591802"/>
<node TEXT="法线贴图的本质是一张存储法线向量信息的纹理" ID="ID_186085405" CREATED="1759498597180" MODIFIED="1759498597501"/>
<node TEXT="贴图的每个像素（texel）对应模型表面的一个点，像素的 RGB 值分别编码了该点的法线向量的 x、y、z 分量" ID="ID_277456982" CREATED="1759498617331" MODIFIED="1759498617597"/>
<node TEXT="由于 RGB 颜色分量的取值范围是 [0, 1]，而法线向量的分量范围是 [-1, 1]，因此需要通过映射公式转换：" ID="ID_1007354643" CREATED="1759498638927" MODIFIED="1759498639177">
<node TEXT="texel.rgb = (normal.xyz + 1.0) / 2.0（解码时则相反：normal.xyz = texel.rgb * 2.0 - 1.0）" ID="ID_228417829" CREATED="1759498643925" MODIFIED="1759498644985"/>
</node>
</node>
<node TEXT="生成方式" ID="ID_1273424902" CREATED="1759498563432" MODIFIED="1759498574589"/>
<node TEXT="在 OpenGL 中使用法线贴图的流程" FOLDED="true" ID="ID_1644347384" CREATED="1759498574792" MODIFIED="1759498668436">
<node TEXT="加载法线贴图并配置纹理" ID="ID_669480724" CREATED="1759498678475" MODIFIED="1759498679458">
<node TEXT="将法线贴图作为 2D 纹理加载（格式通常为 PNG 或 DDS），注意设置纹理参数（如放大 / 缩小过滤、环绕方式）" ID="ID_269161862" CREATED="1759498700637" MODIFIED="1759498701520"/>
</node>
<node TEXT="顶点数据：传递切线向量（Tangent）" ID="ID_1281561534" CREATED="1759498709022" MODIFIED="1759498797773">
<node TEXT="法线贴图中的法线是定义在切线空间（Tangent Space）中的（以模型表面的局部坐标系为基准），因此需要在顶点数据中添加切线向量（与法线垂直的向量），用于构建切线空间到世界空间的转换矩阵（TBN 矩阵）" ID="ID_211038989" CREATED="1759498727434" MODIFIED="1759498728629"/>
<node TEXT="顶点属性需包含：位置、法线、UV、切线（vec3 tangent）" ID="ID_753325340" CREATED="1759498736345" MODIFIED="1759498736577"/>
<node TEXT="切线向量可通过建模软件（如 Blender）自动计算并导出，或在加载模型时由库（如 Assimp）生成" ID="ID_389975645" CREATED="1759498743345" MODIFIED="1759498744627"/>
</node>
<node TEXT="顶点着色器：构建 TBN 矩阵" ID="ID_356306647" CREATED="1759498749770" MODIFIED="1759498798899">
<node TEXT="TBN 矩阵（Tangent-Bitangent-Normal Matrix）是一个 3x3 正交矩阵，用于将切线空间中的向量（如法线贴图的法线）转换到世界空间（与光照计算的空间一致）。" ID="ID_1314824223" CREATED="1759498762249" MODIFIED="1759498763290"/>
</node>
<node TEXT="片段着色器：采样法线贴图并计算光照" ID="ID_1980012980" CREATED="1759498804433" MODIFIED="1759498806341">
<node TEXT="在片段着色器中，从法线贴图采样法线向量，解码后用于光照计算" ID="ID_1501121215" CREATED="1759498816187" MODIFIED="1759498818873"/>
</node>
<node TEXT="代码实现" ID="ID_4810783" CREATED="1759499648517" MODIFIED="1759499654002">
<node TEXT="vs" ID="ID_1980029514" CREATED="1759499654247" MODIFIED="1759499658980">
<node TEXT="// 输入顶点属性（从CPU传递的顶点数据）&#xa;layout(location = 0) in vec3 vertex_position;  // 顶点位置（本地空间）&#xa;layout(location = 1) in vec3 vertex_normal;    // 顶点法线（本地空间）&#xa;layout(location = 2) in vec2 texture_coord;    // 纹理坐标（UV）&#xa;layout(location = 3) in vec4 vtangent;         // 切线向量（w分量用于修正坐标系方向）" ID="ID_1830970340" CREATED="1759499675109" MODIFIED="1759499910075" MAX_WIDTH="20 cm"/>
<node TEXT="// 全局 uniforms（由CPU设置，所有顶点共享）&#xa;uniform mat4 model;  // 模型矩阵（本地空间 → 世界空间）&#xa;uniform mat4 view;   // 视图矩阵（世界空间 → 相机空间）&#xa;uniform mat4 proj;   // 投影矩阵（相机空间 → 裁剪空间）" ID="ID_1453421749" CREATED="1759499707733" MODIFIED="1759499910076" MAX_WIDTH="20 cm"/>
<node TEXT="// 输出变量（传递给片段着色器，会经过光栅化插值）&#xa;out vec4 test_tan;          // 调试用：传递切线向量（可选）&#xa;out vec2 st;                // 纹理坐标（传递给片段着色器采样）&#xa;out vec3 view_dir_tan;      // 切线空间中的视图方向（相机到片段的方向）&#xa;out vec3 light_dir_tan;     // 切线空间中的光源方向" ID="ID_1973619920" CREATED="1759499712282" MODIFIED="1759499910076" MAX_WIDTH="20 cm"/>
<node TEXT="void main() {" ID="ID_462119217" CREATED="1759499926732" MODIFIED="1759499927094"/>
<node TEXT="    gl_Position = proj * view * vec4 (vertex_position, 1.0);  // 计算顶点在裁剪空间的位置&#xa;    // 公式：裁剪空间位置 = 投影矩阵 × 视图矩阵 × 顶点本地空间位置" ID="ID_1148020145" CREATED="1759499723552" MODIFIED="1759499910077" MAX_WIDTH="20 cm"/>
<node TEXT="    st = texture_coord;  // 将纹理坐标传递给片段着色器（用于采样法线贴图）" ID="ID_1989762400" CREATED="1759499730143" MODIFIED="1759499910077" MAX_WIDTH="20 cm"/>
<node TEXT="    test_tan = vtangent;  // 传递切线向量（通常用于调试，实际渲染可省略）" ID="ID_622536926" CREATED="1759499735072" MODIFIED="1759499910077" MAX_WIDTH="20 cm"/>
<node TEXT="    /* 从视图矩阵中提取相机的世界空间位置（替代单独传相机位置uniform的方式） */&#xa;    vec3 cam_pos_wor = (inverse (view) * vec4 (0.0, 0.0, 0.0, 1.0)).xyz;&#xa;    // 原理：视图矩阵将世界空间转换为相机空间，其逆矩阵可将相机空间点转换为世界空间。&#xa;    // 相机在相机空间中的位置是(0,0,0)，乘以视图矩阵的逆即得到世界空间中的相机位置。" ID="ID_812863838" CREATED="1759499775289" MODIFIED="1759499910077" MAX_WIDTH="20 cm"/>
<node TEXT="    vec3 light_dir_wor = vec3 (0.0, 0.0, -1.0);  // 光源方向（世界空间，假设是沿-Z轴的方向光）" ID="ID_688801448" CREATED="1759499785710" MODIFIED="1759499910078" MAX_WIDTH="20 cm"/>
<node TEXT="    /* 计算副切线（Bitangent）：法线与切线的叉乘，并用vtangent.w修正坐标系方向 */&#xa;    vec3 bitangent = cross (vertex_normal, vtangent.xyz) * vtangent.w;&#xa;    // 副切线是切线空间的第三个轴（与切线、法线构成正交坐标系）。&#xa;    // vtangent.w（手性因子）通常为±1，用于修正叉乘结果的方向，确保坐标系一致性。" ID="ID_480273172" CREATED="1759499791081" MODIFIED="1759499910078" MAX_WIDTH="20 cm">
<node TEXT="" ID="ID_1120288792" CREATED="1759499815700" MODIFIED="1759499815700"/>
</node>
<node TEXT="    /* 将相机位置和光源方向从世界空间转换到模型本地空间 */&#xa;    vec3 cam_pos_loc = vec3 (inverse (model) * vec4 (cam_pos_wor, 1.0));  // 相机位置（本地空间）&#xa;    vec3 light_dir_loc = vec3 (inverse (model) * vec4 (light_dir_wor, 0.0));  // 光源方向（本地空间）&#xa;    // 原理：模型矩阵将本地空间转换为世界空间，其逆矩阵可反向转换。&#xa;    // 方向向量用vec4(..., 0.0)（齐次坐标），避免平移影响。" ID="ID_1791481933" CREATED="1759499818751" MODIFIED="1759499910078" MAX_WIDTH="20 cm"/>
<node TEXT="    // 计算本地空间中的视图方向（从顶点指向相机）&#xa;    vec3 view_dir_loc = normalize (cam_pos_loc - vertex_position);&#xa;    // 视图方向 = 相机位置（本地） - 顶点位置（本地），归一化后得到单位向量。" ID="ID_1387663290" CREATED="1759499859766" MODIFIED="1759499910082" MAX_WIDTH="20 cm"/>
<node TEXT="    /* 将本地空间的视图方向转换到切线空间 */&#xa;    view_dir_tan = vec3 (&#xa;        dot (vtangent.xyz, view_dir_loc),  // 与切线的点积（切线空间X轴分量）&#xa;        dot (bitangent, view_dir_loc),     // 与副切线的点积（切线空间Y轴分量）&#xa;        dot (vertex_normal, view_dir_loc)  // 与法线的点积（切线空间Z轴分量）&#xa;    );&#xa;    // 原理：切线空间的三个轴是（切线, 副切线, 法线），构成正交矩阵（TBN矩阵）。&#xa;    // 向量与这三个轴的点积，等价于用TBN矩阵的逆（因正交，逆=转置）乘以向量，得到切线空间坐标。" ID="ID_250508416" CREATED="1759499896443" MODIFIED="1759499910083" MAX_WIDTH="20 cm">
<node TEXT="" ID="ID_800773571" CREATED="1759499898079" MODIFIED="1759499898079"/>
</node>
<node TEXT="    /* 将本地空间的光源方向转换到切线空间（逻辑同上） */&#xa;    light_dir_tan = vec3 (&#xa;        dot (vtangent.xyz, light_dir_loc),&#xa;        dot (bitangent, light_dir_loc),&#xa;        dot (vertex_normal, light_dir_loc)&#xa;    );" ID="ID_1706624160" CREATED="1759499902577" MODIFIED="1759499938377" MAX_WIDTH="20 cm"/>
<node TEXT="}" ID="ID_1559814817" CREATED="1759499931410" MODIFIED="1759499934557"/>
</node>
<node TEXT="fs" ID="ID_1355455043" CREATED="1759499659250" MODIFIED="1759499661121">
<node TEXT="// 输入变量（从顶点着色器插值而来）&#xa;in vec2 st;                // 纹理坐标（用于采样法线贴图）&#xa;in vec3 view_dir_tan;      // 切线空间中的视图方向&#xa;in vec3 light_dir_tan;     // 切线空间中的光源方向" ID="ID_1858703643" CREATED="1759499986088" MODIFIED="1759500043184" MAX_WIDTH="20 cm"/>
<node TEXT="// 全局uniform（法线贴图纹理）&#xa;uniform sampler2D normal_map;  // 法线贴图（存储切线空间的法线信息）" ID="ID_1544194229" CREATED="1759499990972" MODIFIED="1759500043185" MAX_WIDTH="20 cm"/>
<node TEXT="// 输出变量（最终片段颜色）&#xa;out vec4 frag_colour;" ID="ID_1372552385" CREATED="1759499995005" MODIFIED="1759500043185" MAX_WIDTH="20 cm"/>
<node TEXT="in vec4 test_tan;  // 从顶点着色器传递的切线（调试用，未实际使用）" ID="ID_653435538" CREATED="1759500000751" MODIFIED="1759500043185" MAX_WIDTH="20 cm"/>
<node TEXT="void main() {" ID="ID_138779944" CREATED="1759500006738" MODIFIED="1759500043185" MAX_WIDTH="20 cm"/>
<node TEXT="    vec3 Ia = vec3 (0.2, 0.2, 0.2);  // 环境光（基础光照，无方向）" ID="ID_300458643" CREATED="1759500013906" MODIFIED="1759500043185" MAX_WIDTH="20 cm"/>
<node TEXT="    // 采样法线贴图，并将颜色范围从[0,1]转换为法线向量的[-1,1]&#xa;    vec3 normal_tan = texture (normal_map, st).rgb;  // 采样法线贴图（得到[0,1]的RGB值）&#xa;    normal_tan = normalize (normal_tan * 2.0 - 1.0);  // 转换为[-1,1]并归一化（切线空间法线）&#xa;    // 原理：法线贴图的RGB值编码了法线向量的XYZ分量，需解码才能使用。" ID="ID_1407529192" CREATED="1759500017898" MODIFIED="1759500043185" MAX_WIDTH="20 cm">
<node TEXT="当你熟悉了从文件加载纹理后，你可以考虑对法线贴图做一个小改进。与其在glTexture2D中直接复制无符号字节到纹理，不如先将每个RGBA像素转换为float格式。你可以更改glTexture2D的参数以支持float格式。这样做的好处是，我们可以在开始绘制之前将数据归一化并缩放到-1.0到1.0的范围内。然后你可以修改片段着色器，去掉这行代码：normal_tan = normalize （normal_tan * 2.0- 1.0）：" ID="ID_1095858163" CREATED="1759500618297" MODIFIED="1759500760688"/>
</node>
<node TEXT="    // 计算漫反射（在切线空间中）&#xa;    vec3 direction_to_light_tan = normalize (-light_dir_tan);  // 光源指向片段的方向（取反）&#xa;    float dot_prod = dot (direction_to_light_tan, normal_tan);  // 法线与光线方向的夹角余弦&#xa;    dot_prod = max (dot_prod, 0.0);  // 确保值非负（避免背面光照）&#xa;    vec3 Id = vec3 (0.7, 0.7, 0.7) * vec3 (1.0, 0.5, 0.0) * dot_prod;&#xa;    // 漫反射公式：光源颜色（0.7,0.7,0.7）× 物体颜色（1.0,0.5,0.0，橙色调）× 夹角余弦" ID="ID_127230467" CREATED="1759500024057" MODIFIED="1759500043186" MAX_WIDTH="20 cm"/>
<node TEXT="    // 计算镜面反射（在切线空间中）&#xa;    vec3 reflection_tan = reflect (normalize (light_dir_tan), normal_tan);  // 光线的反射方向&#xa;    // reflect函数：计算入射光（light_dir_tan是从片段到光源，需归一化）在法线上的反射方向&#xa;    float dot_prod_specular = dot (reflection_tan, normalize (view_dir_tan));  // 反射方向与视图方向的夹角&#xa;    dot_prod_specular = max (dot_prod_specular, 0.0);  // 确保非负&#xa;    float specular_factor = pow (dot_prod_specular, 100.0);  // 高光因子（幂次越高，高光越集中）&#xa;    vec3 Is = vec3 (1.0, 1.0, 1.0) * vec3 (0.5, 0.5, 0.5) * specular_factor;&#xa;    // 镜面反射公式：光源高光颜色（1.0,1.0,1.0）× 物体高光颜色（0.5,0.5,0.5）× 高光因子" ID="ID_1766285043" CREATED="1759500027687" MODIFIED="1759500043186" MAX_WIDTH="20 cm"/>
<node TEXT="    // 最终颜色 = 镜面光 + 漫反射光 + 环境光&#xa;    frag_colour.rgb = Is + Id + Ia;&#xa;    frag_colour.a = 1.0;  // 不透明（alpha=1）" ID="ID_1299578417" CREATED="1759500031806" MODIFIED="1759500043183" MAX_WIDTH="20 cm"/>
<node TEXT="}" ID="ID_1622128686" CREATED="1759500033410" MODIFIED="1759500036004"/>
</node>
</node>
</node>
</node>
<node FOLDED="true" POSITION="bottom_or_right" ID="ID_1816384337" CREATED="1759468155457" MODIFIED="1759468155457"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <h3 class="header-vfC6AV auto-hide-last-sibling-br" style="border-top-style: solid; border-top-width: 0px; border-right-style: solid; border-right-width: 0px; border-bottom-style: solid; border-bottom-width: 0px; border-left-style: solid; border-left-width: 0px; margin-top: 0; margin-right: 0; margin-bottom: 0; margin-left: 0; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; font-size: var(--md-box-samantha-h3-font-size); font-weight: 700; line-height: var(--md-box-samantha-h3-line-height); color: rgb(0, 0, 0); font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-decoration: none">
      Uniform Buffer Objects (UBO)
    </h3>
  </body>
</html>
</richcontent>
<edge COLOR="#7c0000"/>
<node TEXT="Uniform Buffer Objects（统一缓冲区对象）是一种专门用于存储uniform 数据的缓冲区对象。Uniform 数据是着色器中需要的 “常量”（如变换矩阵、光照参数、材质属性等），传统上通过glUniform*系列函数逐个设置" ID="ID_1546794647" CREATED="1759468176340" MODIFIED="1759468177360"/>
<node TEXT="UBO 的核心作用是：将多个 uniform 数据打包到一个缓冲区中，实现多个着色器共享同一份数据，减少 API 调用次数，提升渲染效率" ID="ID_557726239" CREATED="1759468185242" MODIFIED="1759468185501"/>
<node TEXT="使用流程" ID="ID_1270741236" CREATED="1759468192665" MODIFIED="1759468193468">
<node TEXT="创建与配置 UBO" ID="ID_362230994" CREATED="1759468198020" MODIFIED="1759468200370">
<node TEXT="生成缓冲区对象：用glGenBuffers创建 UBO 的缓冲区 ID" ID="ID_1816807117" CREATED="1759468206782" MODIFIED="1759468207579"/>
<node TEXT="绑定目标：用glBindBuffer(GL_UNIFORM_BUFFER, uboID)将缓冲区绑定到GL_UNIFORM_BUFFER目标（OpenGL 中专门用于 UBO 的目标）" ID="ID_1050105116" CREATED="1759468214420" MODIFIED="1759468214609"/>
<node TEXT="分配内存并填充数据：用glBufferData(GL_UNIFORM_BUFFER, size, data, usage)为 UBO 分配内存（size是数据总大小，data是 CPU 端的数据指针，usage如GL_STATIC_DRAW表示数据少变）" ID="ID_1418774798" CREATED="1759468222515" MODIFIED="1759468222746"/>
</node>
<node TEXT="绑定到 “绑定点”（Binding Point）" ID="ID_350342637" CREATED="1759468227483" MODIFIED="1759468227704">
<node TEXT="OpenGL 通过 “绑定点”（一个整数索引）连接 UBO 和着色器" ID="ID_215603726" CREATED="1759468292531" MODIFIED="1759468293355"/>
<node TEXT="将UBO绑定到绑定点" ID="ID_1654791416" CREATED="1759469404967" MODIFIED="1759469414250">
<node TEXT="glBindBufferBase" POSITION="bottom_or_right" ID="ID_1927947324" CREATED="1759468254533" MODIFIED="1759469713190">
<node TEXT="一个完整的缓冲区对象绑定到指定目标的某个绑定点上" ID="ID_676595387" CREATED="1759469727186" MODIFIED="1759469802219">
<node TEXT="target：缓冲区目标（绑定的类型）" ID="ID_1559845853" CREATED="1759469748741" MODIFIED="1759469754410"/>
<node TEXT="index：绑定点索引（非负整数）" ID="ID_224093142" CREATED="1759469811614" MODIFIED="1759469811873"/>
<node TEXT="buffer：要绑定的缓冲区对象 ID（通过 glGenBuffers 生成），若为 0 则解除该绑定点的绑定" ID="ID_794599913" CREATED="1759469838540" MODIFIED="1759469838861"/>
</node>
</node>
</node>
<node TEXT="将shader绑定到绑定点" ID="ID_1556796370" CREATED="1759469418462" MODIFIED="1759469428954">
<node TEXT="glGetUniformBlockIndex" POSITION="bottom_or_right" ID="ID_29148666" CREATED="1759469132976" MODIFIED="1759469133258">
<node TEXT="获取每个 uniform 块在链接后的程序对象中的唯一的索引（index）" ID="ID_992799805" CREATED="1759469151065" MODIFIED="1759469165635"/>
</node>
<node TEXT="glUniformBlockBinding" POSITION="bottom_or_right" ID="ID_1569639505" CREATED="1759469187012" MODIFIED="1759469187281">
<node TEXT="“程序 program 中的 blockIndex 号 uniform 块，使用 bindingPoint 号绑定点”" ID="ID_346124238" CREATED="1759469211298" MODIFIED="1759469213997"/>
</node>
</node>
<node TEXT="绑定点是 “中间桥梁”：UBO 可绑定到不同绑定点，着色器通过指定绑定点访问对应的 UBO" ID="ID_522395168" CREATED="1759468272331" MODIFIED="1759469349821"/>
<node TEXT="OpenGL 实现对GL_UNIFORM_BUFFER的绑定点数量有上限（可通过GL_MAX_UNIFORM_BUFFER_BINDINGS查询，通常至少为 84）" ID="ID_721551042" CREATED="1759468432487" MODIFIED="1759468432991"/>
</node>
<node TEXT="着色器中访问 UBO" ID="ID_1085127843" CREATED="1759468310979" MODIFIED="1759468311309">
<node TEXT="在着色器（顶点 / 片段着色器等）中，需要声明一个 “uniform 块”（uniform block），并指定它关联的绑定点" ID="ID_1299438450" CREATED="1759468333500" MODIFIED="1759468334473"/>
<node TEXT="// 顶点着色器中&#xa;layout(std140, binding = 0) uniform TransformBlock {  // 绑定点=0&#xa;    mat4 projection;  // 投影矩阵&#xa;    mat4 view;        // 视图矩阵&#xa;    mat4 model;       // 模型矩阵&#xa;} transform;  // 块实例名" ID="ID_1819578632" CREATED="1759468344846" MODIFIED="1759468351125" MAX_WIDTH="20 cm">
<node TEXT="std140：块布局限定符，规定 CPU 与 GPU 对块内数据的对齐方式（必须严格遵循，否则数据错乱）" ID="ID_1977589570" CREATED="1759468365984" MODIFIED="1759468366923"/>
<node TEXT="着色器通过transform.projection访问 UBO 中的数据" ID="ID_128561491" CREATED="1759468372475" MODIFIED="1759468372777"/>
</node>
</node>
</node>
<node TEXT="减少 API 调用：传统glUniform*需要逐个设置变量，UBO 一次可上传多个 uniform，减少函数调用开销。" ID="ID_647329157" CREATED="1759468382820" MODIFIED="1759468383083"/>
<node TEXT="数据共享：多个着色器可通过同一个绑定点共享 UBO 数据，无需重复设置。" ID="ID_136481073" CREATED="1759468392133" MODIFIED="1759468392382"/>
<node TEXT="性能优化：驱动可对 UBO 进行特殊优化（如放入 GPU 高速缓存），提升访问速度" ID="ID_1280076757" CREATED="1759468400819" MODIFIED="1759468401124"/>
</node>
<node TEXT="Buffer Mapping Functions（缓冲区映射函数）" FOLDED="true" POSITION="bottom_or_right" ID="ID_1349424364" CREATED="1759468440075" MODIFIED="1759468440427">
<edge COLOR="#00007c"/>
<node TEXT="缓冲区映射函数允许 CPU 直接访问 GPU 缓冲区的内存地址（通过将缓冲区 “映射” 到 CPU 的地址空间），从而直接读写缓冲区数据，无需通过glBufferSubData等函数间接传输" ID="ID_1571776072" CREATED="1759468457519" MODIFIED="1759468458428"/>
<node TEXT="提供更灵活、高效的数据传输方式，尤其适合频繁更新大量数据的场景（如动态顶点数据、帧动画数据）" ID="ID_326913089" CREATED="1759468464877" MODIFIED="1759468465189"/>
<node TEXT="工作流程" ID="ID_1502832698" CREATED="1759468473094" MODIFIED="1759468473915">
<node TEXT="绑定缓冲区" ID="ID_138982138" CREATED="1759470435670" MODIFIED="1759470451692"/>
<node TEXT="映射缓冲区到 CPU 地址空间" ID="ID_547585723" CREATED="1759470455457" MODIFIED="1759470455756">
<node TEXT="glMapBufferRange" ID="ID_748055953" CREATED="1759470644148" MODIFIED="1759470662604"/>
</node>
<node TEXT="CPU 直接读写数据" ID="ID_1056005980" CREATED="1759470698150" MODIFIED="1759470698559"/>
<node TEXT="解除映射" ID="ID_1661457875" CREATED="1759470704478" MODIFIED="1759470704837">
<node TEXT="glUnmapBuffer" ID="ID_909078580" CREATED="1759470709837" MODIFIED="1759470710960"/>
</node>
</node>
</node>
</node>
</map>
