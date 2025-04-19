<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="game engine" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1743943120331" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="2" RULE="ON_BRANCH_CREATION"/>
<node TEXT="什么是game engine" POSITION="bottom_or_right" ID="ID_725805374" CREATED="1743943120859" MODIFIED="1743943129503">
<edge COLOR="#ff0000"/>
<node TEXT="将一种数据转换为另一种数据，并提供一种交互方式与之交互" ID="ID_1747433679" CREATED="1743943129901" MODIFIED="1743943160171"/>
<node TEXT="既可以通过引擎生成数据，也可以通过其他软件生成数据，最终都要转换为引擎内部的数据" ID="ID_1300259194" CREATED="1743943362451" MODIFIED="1743943406675"/>
</node>
<node TEXT="game engine layer" POSITION="bottom_or_right" ID="ID_1383974442" CREATED="1743946097998" MODIFIED="1743946104055">
<edge COLOR="#0000ff"/>
<node TEXT="entry point" ID="ID_451672843" CREATED="1743946104498" MODIFIED="1743946115526"/>
<node TEXT="application layer" ID="ID_1866815873" CREATED="1743946116156" MODIFIED="1743946145315"/>
<node TEXT="window layer" ID="ID_1244735046" CREATED="1743946149195" MODIFIED="1743946153865">
<node TEXT="input" ID="ID_1101673357" CREATED="1743946154170" MODIFIED="1743946156477"/>
<node TEXT="event" ID="ID_416397601" CREATED="1743946158058" MODIFIED="1743946160116"/>
</node>
<node TEXT="render" ID="ID_1286080441" CREATED="1743946162659" MODIFIED="1743946165240"/>
<node TEXT="render api abstraction" ID="ID_1503297625" CREATED="1743946177080" MODIFIED="1743946183252"/>
<node TEXT="debug support" ID="ID_854373356" CREATED="1743946183780" MODIFIED="1743946188634"/>
<node TEXT="scripting" ID="ID_53517503" CREATED="1743946189154" MODIFIED="1743946190922"/>
<node TEXT="memory system" ID="ID_1109841456" CREATED="1743946197564" MODIFIED="1743946202150"/>
<node TEXT="ecs" ID="ID_1138514780" CREATED="1743946202666" MODIFIED="1743946206425"/>
<node TEXT="physics" ID="ID_1387858779" CREATED="1743946215540" MODIFIED="1743946217897"/>
<node TEXT="file" ID="ID_754990077" CREATED="1743946218263" MODIFIED="1743946222142"/>
<node TEXT="build system" ID="ID_1616817037" CREATED="1743946266438" MODIFIED="1743946269930">
<node TEXT="transform data" ID="ID_1286015694" CREATED="1743946270115" MODIFIED="1743946274576"/>
</node>
</node>
</node>
</map>
