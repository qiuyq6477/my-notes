<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="c/c++内存泄露检测（MLD）" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1743915698221" STYLE="oval">
<font SIZE="16"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="阶段1，创建struct database" POSITION="bottom_or_right" ID="ID_1827838164" CREATED="1743915392403" MODIFIED="1743917707065">
<edge COLOR="#ff0000"/>
<node TEXT="将应用程序中所有会用到的struct注册到MLD中" ID="ID_46575719" CREATED="1743917710578" MODIFIED="1743917734747"/>
<node TEXT="应用程序有责任初始化所有要用的struct" ID="ID_1242666956" CREATED="1743918303487" MODIFIED="1743918358730"/>
<node TEXT="MLD会管理所有注册的struct的信息，以链表的形式存储" ID="ID_1003432883" CREATED="1743918359849" MODIFIED="1743918384047"/>
<node TEXT="通过struct的类型名字来查询" ID="ID_1489711804" CREATED="1743918408403" MODIFIED="1743918425945"/>
<node TEXT="关键的数据结构" ID="ID_1674748195" CREATED="1743918537603" MODIFIED="1743918548957">
<node TEXT="structure database" ID="ID_162363176" CREATED="1743917788988" MODIFIED="1743917807518">
<node TEXT="typedef struct _struct_db_{&#xa;    struct_db_rec_t *head;&#xa;    unsigned int count;&#xa;} struct_db_t;" ID="ID_473130451" CREATED="1743917808483" MODIFIED="1743917810412"/>
</node>
<node TEXT="single structure information" ID="ID_872465316" CREATED="1743917814313" MODIFIED="1743918193461">
<node TEXT="struct _struct_db_rec_{&#xa;    struct_db_rec_t *next;&#xa;    char struct_name [MAX_STRUCTURE_NAME_SIZE];&#xa;    unsigned int ds_size;&#xa;    unsigned int n_fields;&#xa;    field_info_t *fields;&#xa;};" ID="ID_1539148680" CREATED="1743917849285" MODIFIED="1743917889651"/>
</node>
<node TEXT="structure field information" ID="ID_231184389" CREATED="1743917900001" MODIFIED="1743918195157">
<node TEXT="typedef struct _field_info_{&#xa;    char fname [MAX_FIELD_NAME_SIZE];&#xa;    data_type_t dtype;&#xa;    unsigned int size;    &#xa;    unsigned int offset;   &#xa;    char nested_str_name[MAX_STRUCTURE_NAME_SIZE];&#xa;} field_info_t;" ID="ID_1837773895" CREATED="1743917924146" MODIFIED="1743917944234"/>
</node>
</node>
</node>
<node TEXT="阶段2，创建object database" POSITION="bottom_or_right" ID="ID_1536555459" CREATED="1743915397251" MODIFIED="1743918602106">
<edge COLOR="#0000ff"/>
<node TEXT="关键的数据结构" ID="ID_1378535329" CREATED="1743918602840" MODIFIED="1743918618767">
<node TEXT="object database" ID="ID_1139949843" CREATED="1743918619218" MODIFIED="1743923572186">
<node TEXT="typedef struct _object_db_{&#xa;    struct_db_t *struct_db;&#xa;    object_db_rec_t *head;&#xa;    unsigned int count;&#xa;} object_db_t;" ID="ID_778459485" CREATED="1743923572190" MODIFIED="1743923574812"/>
</node>
<node TEXT="single object record" ID="ID_101500928" CREATED="1743923563753" MODIFIED="1743923602693">
<node TEXT="struct _object_db_rec_{&#xa;    object_db_rec_t *next;&#xa;    void *ptr;&#xa;    unsigned int units;&#xa;    struct_db_rec_t *struct_rec;&#xa;    mld_boolean_t is_visited;&#xa;    mld_boolean_t is_root;&#xa;};" ID="ID_1766608128" CREATED="1743923603098" MODIFIED="1743923621984"/>
</node>
</node>
<node TEXT="使用定制的内存分配函数进行内存分配" ID="ID_804509708" CREATED="1743923626279" MODIFIED="1743923673978">
<node TEXT="使用alloc分配内存" ID="ID_1975470807" CREATED="1743923674436" MODIFIED="1743923703271"/>
<node TEXT="生成一个object record，记录分配的内存信息以及对应的structure infomation，并将这个record记录到object database" ID="ID_1912604351" CREATED="1743923703888" MODIFIED="1743924053118"/>
<node TEXT="返回通过alloc分配的内存指针" ID="ID_644866236" CREATED="1743923740231" MODIFIED="1743923767146"/>
</node>
</node>
<node TEXT="阶段3，内存泄漏检测" POSITION="bottom_or_right" ID="ID_1038238549" CREATED="1743915406443" MODIFIED="1743924128209">
<edge COLOR="#00ff00"/>
<node TEXT="设置根对象，需要手动调用api设置" ID="ID_812883206" CREATED="1743925937772" MODIFIED="1743925990467">
<node TEXT="通过把全局变量和静态变量作为根对象" ID="ID_258398099" CREATED="1743925949895" MODIFIED="1743926720822"/>
<node TEXT="将全局对象设置为根对象" ID="ID_716943" CREATED="1743926667329" MODIFIED="1743926676409">
<node TEXT="void mld_register_global_object_as_root (object_db_t *object_db, void *objptr, char *struct_name, unsigned int units);" POSITION="bottom_or_right" ID="ID_1451710794" CREATED="1743926639212" MODIFIED="1743926881539"/>
</node>
<node TEXT="动态设置根对象（比如说将xalloc分配的对象设置为根对象）" ID="ID_1154506587" CREATED="1743926682968" MODIFIED="1743926976066">
<node TEXT="void mld_set_dynamic_object_as_root(object_db_t *object_db, void *obj_ptr);" POSITION="bottom_or_right" ID="ID_1489155407" CREATED="1743926656917" MODIFIED="1743926929531"/>
</node>
</node>
<node TEXT="内存检测算法从根对象开始，根对象始终是可达的，所以根对象不会被认为泄漏了" ID="ID_1629424675" CREATED="1743926280342" MODIFIED="1743926428623"/>
<node TEXT="算法步骤" ID="ID_1535362866" CREATED="1743935793732" MODIFIED="1743935801372">
<node TEXT="依次遍历根对象" ID="ID_1127634055" CREATED="1743935804128" MODIFIED="1743935822216"/>
<node TEXT="使用DFS遍历根对象可以到达的对象，标记为已访问" ID="ID_1935798935" CREATED="1743935823930" MODIFIED="1743935876171"/>
<node TEXT="当所有的根对象遍历完成，所有未被标记为已访问的对象就是泄漏的对象" ID="ID_1070919507" CREATED="1743935878539" MODIFIED="1743935918091"/>
</node>
</node>
<node TEXT="为什么没法在c/c++中实现垃圾回收算法" POSITION="bottom_or_right" ID="ID_1514430337" CREATED="1743940492507" MODIFIED="1743940497637">
<edge COLOR="#00ffff"/>
<node TEXT="把指针存储在一个非指针类型的变量中" POSITION="bottom_or_right" ID="ID_1472102585" CREATED="1743939567055" MODIFIED="1743939586234">
<node TEXT="由于在c语言中，指针的值是一个整数值，可以被存储在整型变量中，因此无法区分这个变量里面的值是一个地址还是真的是一个数字，在带有垃圾回收的编程语言中，比如java，就不可以把一个对象的引用赋值给不同类型的变量" POSITION="bottom_or_right" ID="ID_479130668" CREATED="1743936512422" MODIFIED="1743939553307"/>
</node>
<node TEXT="非直接引用对象" POSITION="bottom_or_right" ID="ID_1498488440" CREATED="1743939644800" MODIFIED="1743940014866">
<node TEXT="指针指向了一个不是通过malloc分配的内存地址" ID="ID_1414384170" CREATED="1743940014869" MODIFIED="1743940050944"/>
</node>
<node TEXT="unions，MLD无法处理union类型变量" POSITION="bottom_or_right" ID="ID_1389853944" CREATED="1743940427791" MODIFIED="1743940450138"/>
</node>
</node>
</map>
