.class public final Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/xmp/XMPMeta;


# instance fields
.field public tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v0
.end method

.method public final setLocalizedText(Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    const-string v2, "rights"

    invoke-static {v2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    const-string v3, ""

    .line 1
    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "x-default"

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    new-instance v6, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v7, 0x1e00

    invoke-direct {v6, v7}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v7, 0x1

    invoke-static {v2, v1, v7, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    const/16 v2, 0x66

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText()Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Specified property is no alt-text array"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string/jumbo v9, "xml:lang"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    .line 2
    iget-object v12, v12, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    .line 4
    iget-object v12, v12, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v6, v7

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Language qualifier must be first"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    move v6, v10

    move-object v8, v11

    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    if-le v12, v7, :cond_5

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 6
    :cond_5
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    const/4 v13, 0x2

    if-nez v12, :cond_6

    new-array v2, v13, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    aput-object v11, v2, v7

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v16, v11

    move-object/from16 v17, v16

    move v11, v10

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v14, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    .line 7
    iget-object v15, v15, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v14, v7}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    .line 9
    iget-object v15, v15, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    new-array v2, v13, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    aput-object v14, v2, v7

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    if-nez v16, :cond_9

    move-object/from16 v16, v14

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v17, v14

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Alt-text array item has no language qualifier"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Alt-text array item is not simple"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    new-array v2, v13, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    if-ne v11, v7, :cond_e

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    aput-object v16, v2, v7

    goto :goto_3

    :cond_e
    if-le v11, v7, :cond_f

    const/4 v9, 0x3

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    aput-object v16, v2, v7

    goto :goto_3

    :cond_f
    if-eqz v17, :cond_10

    const/4 v9, 0x4

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    aput-object v17, v2, v7

    goto :goto_3

    :cond_10
    const/4 v9, 0x5

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v10

    invoke-virtual {v1, v7}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    aput-object v3, v2, v7

    .line 11
    :goto_3
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v7

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v3, :cond_1d

    if-eq v3, v7, :cond_16

    if-eq v3, v13, :cond_15

    const/4 v10, 0x3

    if-eq v3, v10, :cond_14

    const/4 v2, 0x4

    if-eq v3, v2, :cond_12

    const/4 v2, 0x5

    if-ne v3, v2, :cond_11

    invoke-static {v1, v5, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1f

    goto/16 :goto_7

    :cond_11
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0x9

    const-string v2, "Unexpected result from ChooseLocalizedText"

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-ne v2, v7, :cond_13

    .line 12
    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 13
    :cond_13
    invoke-static {v1, v5, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    invoke-static {v1, v5, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1f

    goto :goto_7

    :cond_15
    if-eqz v6, :cond_17

    if-eq v8, v2, :cond_17

    if-eqz v8, :cond_17

    .line 14
    iget-object v3, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 15
    iget-object v5, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_4

    :cond_16
    if-nez v9, :cond_18

    if-eqz v6, :cond_17

    if-eq v8, v2, :cond_17

    if-eqz v8, :cond_17

    .line 17
    iget-object v3, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 18
    iget-object v5, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 20
    :goto_4
    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 21
    :cond_17
    iput-object v0, v2, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_8

    .line 22
    :cond_18
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/xmp/impl/XMPNode;

    if-eq v3, v8, :cond_19

    .line 23
    iget-object v5, v3, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    if-eqz v8, :cond_1a

    .line 24
    iget-object v9, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_6

    :cond_1a
    const/4 v9, 0x0

    .line 25
    :goto_6
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_5

    .line 26
    :cond_1b
    iput-object v0, v3, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_5

    :cond_1c
    if-eqz v8, :cond_1f

    iput-object v0, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_8

    .line 27
    :cond_1d
    invoke-static {v1, v4, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_1e

    invoke-static {v1, v5, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_7
    move v6, v7

    :cond_1f
    :goto_8
    if-nez v6, :cond_20

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-ne v2, v7, :cond_20

    invoke-static {v1, v4, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    .line 28
    :cond_21
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Localized text array is not alt-text"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 29
    :cond_22
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Failed to find or create array node"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_f

    if-nez p2, :cond_0

    move-object p0, p3

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "True"

    goto/16 :goto_2

    :cond_1
    const-string p0, "False"

    goto/16 :goto_2

    :cond_2
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 4
    :cond_3
    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 6
    :cond_4
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_5

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 8
    :cond_5
    instance-of p0, p2, Lcom/adobe/xmp/XMPDateTime;

    if-eqz p0, :cond_6

    check-cast p2, Lcom/adobe/xmp/XMPDateTime;

    .line 9
    invoke-static {p2}, Landroidx/appcompat/R$drawable;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 10
    :cond_6
    instance-of p0, p2, Ljava/util/GregorianCalendar;

    if-eqz p0, :cond_7

    check-cast p2, Ljava/util/GregorianCalendar;

    sget p0, Lcom/adobe/xmp/XMPDateTimeFactory;->$r8$clinit:I

    .line 11
    new-instance p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {p0, p2}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 12
    invoke-static {p0}, Landroidx/appcompat/R$drawable;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 13
    :cond_7
    instance-of p0, p2, [B

    if-eqz p0, :cond_b

    check-cast p2, [B

    .line 14
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/adobe/xmp/impl/Base64;->base64:[B

    const/4 v0, 0x0

    .line 15
    array-length v1, p2

    const/4 v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    move v3, v0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v3, 0x3

    array-length v6, p2

    const v7, 0x3f000

    const/high16 v8, 0xfc0000

    if-gt v5, v6, :cond_8

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v0

    or-int/2addr v3, v6

    and-int v6, v3, v8

    shr-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v4, 0x1

    sget-object v9, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v6, v9, v6

    aput-byte v6, v1, v4

    and-int v4, v3, v7

    shr-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, v8, 0x1

    aget-byte v4, v9, v4

    aput-byte v4, v1, v8

    and-int/lit16 v4, v3, 0xfc0

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v9, v4

    aput-byte v4, v1, v6

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v4, v7, 0x1

    aget-byte v3, v9, v3

    aput-byte v3, v1, v7

    move v3, v5

    goto :goto_0

    :cond_8
    array-length v0, p2

    sub-int/2addr v0, v3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v0, v2, :cond_9

    aget-byte v0, p2, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v3, v6

    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    and-int v0, p2, v8

    shr-int/lit8 v0, v0, 0x12

    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v0, v3, v0

    aput-byte v0, v1, v4

    and-int v0, p2, v7

    shr-int/lit8 v0, v0, 0xc

    add-int/lit8 v4, v2, 0x1

    aget-byte v0, v3, v0

    aput-byte v0, v1, v2

    and-int/lit16 p2, p2, 0xfc0

    shr-int/lit8 p2, p2, 0x6

    add-int/lit8 v0, v4, 0x1

    aget-byte p2, v3, p2

    aput-byte p2, v1, v4

    aput-byte v5, v1, v0

    goto :goto_1

    :cond_9
    array-length v0, p2

    sub-int/2addr v0, v3

    if-ne v0, v6, :cond_a

    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    and-int v0, p2, v8

    shr-int/lit8 v0, v0, 0x12

    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v0, v3, v0

    aput-byte v0, v1, v4

    and-int/2addr p2, v7

    shr-int/lit8 p2, p2, 0xc

    add-int/lit8 v0, v2, 0x1

    aget-byte p2, v3, p2

    aput-byte p2, v1, v2

    add-int/lit8 p2, v0, 0x1

    aput-byte v5, v1, v0

    aput-byte v5, v1, p2

    .line 16
    :cond_a
    :goto_1
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 17
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 18
    :cond_c
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    const/16 p2, 0x20

    .line 19
    invoke-virtual {p0, p2}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 20
    iget-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string/jumbo p2, "xml:lang"

    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_3

    :cond_d
    invoke-static {p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 22
    :cond_e
    :goto_3
    iput-object p3, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_5

    :cond_f
    if-eqz p2, :cond_11

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_10

    goto :goto_4

    :cond_10
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x66

    const-string p2, "Composite nodes can\'t have values"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 24
    :cond_11
    :goto_4
    iput-object p3, p1, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    :goto_5
    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object p1

    iget-object p2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x66

    const-string p2, "Specified property does not exist"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    .line 1
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x66

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http://ns.google.com/photos/1.0/container/item/"

    .line 5
    invoke-static {v2, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v1, 0x2f

    .line 6
    invoke-static {v1}, Landroidx/window/core/Version$$ExternalSyntheticOutline0;->m(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p2, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "The field name must be simple"

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Empty f name"

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p1, 0x4

    const-string p2, "Empty array name"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
