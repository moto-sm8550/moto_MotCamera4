.class public final Lcom/adobe/xmp/XMPMetaFactory;
.super Ljava/lang/Object;


# static fields
.field public static schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

.field public static versionInfo:Lcom/adobe/xmp/XMPMetaFactory$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPMetaFactory$1;

    return-void
.end method

.method public static parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/adobe/xmp/options/ParseOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    .line 3
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/io/InputStream;

    const/16 v1, 0x10

    .line 4
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/adobe/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v1, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/16 v1, 0xcc

    const-string v2, "Error reading the XML-file"

    invoke-direct {v0, v2, v1, p0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_1
    new-instance v1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v1, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/adobe/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    invoke-static {p0, v2, v3}, Lcom/adobe/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    aget-object v2, p0, v1

    sget-object v3, Lcom/adobe/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v2, v3, :cond_30

    const/4 v2, 0x0

    aget-object v3, p0, v2

    check-cast v3, Lorg/w3c/dom/Node;

    .line 9
    new-instance v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 10
    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 11
    iget-object v5, v4, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    move v6, v2

    .line 12
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v4, v5, v7, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    .line 13
    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    const/16 p0, 0x20

    .line 14
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 15
    sget-object p0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/HashMap;

    .line 16
    iget-object p0, v4, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 17
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;)Lcom/adobe/xmp/impl/XMPNode;

    .line 18
    iget-object v5, v4, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 19
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    :catch_1
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x5

    const-string/jumbo v8, "x-default"

    const/4 v9, 0x0

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    .line 20
    iget-object v10, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v7, v1

    .line 22
    :goto_3
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v10

    if-gt v7, v10, :cond_4

    invoke-virtual {v6, v7}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    sget-object v11, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/HashMap;

    .line 23
    iget-object v12, v10, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/adobe/xmp/options/PropertyOptions;

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    .line 25
    iget v12, v12, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 v12, v12, 0x300

    if-nez v12, :cond_6

    move v12, v1

    goto :goto_4

    :cond_6
    move v12, v2

    :goto_4
    if-eqz v12, :cond_7

    .line 26
    new-instance v12, Lcom/adobe/xmp/impl/XMPNode;

    .line 27
    iget-object v13, v10, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 28
    invoke-direct {v12, v13, v9, v11}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v13, "[]"

    .line 29
    iput-object v13, v10, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {v12, v10}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 31
    iput-object v6, v12, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 32
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v11

    if-nez v11, :cond_8

    new-instance v11, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v12, "xml:lang"

    invoke-direct {v11, v12, v8, v9}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v10, v11}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    const/16 v13, 0x1e00

    invoke-virtual {v12, v13, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v10}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 34
    :cond_9
    iget-object v10, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v11, "http://ns.adobe.com/exif/1.0/"

    .line 35
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v8, "exif:GPSTimeStamp"

    .line 36
    invoke-static {v6, v8, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_6

    .line 37
    :cond_a
    :try_start_1
    iget-object v9, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 38
    invoke-static {v9}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 39
    iget v10, v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    if-nez v10, :cond_d

    .line 40
    move-object v10, v9

    check-cast v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 41
    iget v10, v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    if-nez v10, :cond_d

    .line 42
    move-object v10, v9

    check-cast v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 43
    iget v10, v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_b
    const-string v10, "exif:DateTimeOriginal"

    .line 44
    invoke-static {v6, v10, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    if-nez v10, :cond_c

    const-string v10, "exif:DateTimeDigitized"

    invoke-static {v6, v10, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    .line 45
    :cond_c
    iget-object v10, v10, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 46
    invoke-static {v10}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v10

    check-cast v9, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    move-object v11, v10

    check-cast v11, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 47
    iget v11, v11, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 48
    invoke-virtual {v9, v1, v11}, Ljava/util/Calendar;->set(II)V

    move-object v11, v10

    check-cast v11, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 49
    iget v11, v11, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 v12, 0x2

    .line 50
    invoke-virtual {v9, v12, v11}, Ljava/util/Calendar;->set(II)V

    check-cast v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    .line 51
    iget v10, v10, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 52
    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    new-instance v7, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v7, v9}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 53
    invoke-static {v7}, Landroidx/appcompat/R$drawable;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v7

    .line 54
    iput-object v7, v8, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :cond_d
    :goto_6
    const-string v7, "exif:UserComment"

    .line 55
    invoke-static {v6, v7, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    if-eqz v6, :cond_4

    goto/16 :goto_a

    .line 56
    :cond_e
    iget-object v7, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v10, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    .line 57
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "xmpDM:copyright"

    invoke-static {v6, v7, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 58
    :try_start_2
    iget-object v7, v4, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 59
    invoke-static {v7, v3, v9, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 60
    iget-object v9, v6, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    const-string v10, "\n\n"

    const-string v11, "dc:rights"

    .line 61
    invoke-static {v7, v11, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v7, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_10

    invoke-virtual {v7, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    .line 62
    iget-object v11, v11, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 63
    invoke-virtual {v4, v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v11

    :cond_10
    invoke-virtual {v7, v11}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 64
    iget-object v8, v7, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 65
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_11

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_11
    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66
    :goto_7
    iput-object v8, v7, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    goto :goto_9

    .line 67
    :cond_12
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;)V

    .line 68
    :cond_13
    :goto_9
    iget-object v7, v6, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 69
    invoke-virtual {v7, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 70
    :cond_14
    iget-object v7, v6, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string v8, "http://ns.adobe.com/xap/1.0/rights/"

    .line 71
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "xmpRights:UsageTerms"

    invoke-static {v6, v7, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    if-eqz v6, :cond_4

    :goto_a
    invoke-static {v6}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_2

    .line 72
    :cond_15
    iget-boolean v3, p0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    const/4 v5, 0x4

    if-nez v3, :cond_16

    goto/16 :goto_12

    .line 73
    :cond_16
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    .line 74
    invoke-virtual {v0, v5}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 77
    iget-boolean v6, v5, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    if-nez v6, :cond_17

    goto :goto_b

    .line 78
    :cond_17
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 79
    iget-boolean v10, v7, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    if-nez v10, :cond_19

    goto :goto_c

    .line 80
    :cond_19
    iput-boolean v2, v7, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    .line 81
    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 82
    iget-object v11, v7, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {v10, v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    .line 84
    iput-boolean v2, v11, Lcom/adobe/xmp/impl/XMPNode;->implicit:Z

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v13

    if-nez v12, :cond_1c

    .line 86
    iget v12, v13, Lcom/adobe/xmp/options/Options;->options:I

    if-nez v12, :cond_1a

    move v12, v1

    goto :goto_d

    :cond_1a
    move v12, v2

    :goto_d
    if-eqz v12, :cond_1b

    .line 87
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    iput-object v10, v7, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {v11, v7}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_11

    :cond_1b
    new-instance v12, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v10

    .line 90
    new-instance v14, Lcom/adobe/xmp/options/PropertyOptions;

    .line 91
    iget v10, v10, Lcom/adobe/xmp/options/Options;->options:I

    .line 92
    invoke-direct {v14, v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    .line 93
    invoke-direct {v12, v13, v9, v14}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 94
    invoke-virtual {v11, v12}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_10

    .line 95
    :cond_1c
    iget v11, v13, Lcom/adobe/xmp/options/Options;->options:I

    if-nez v11, :cond_1d

    move v11, v1

    goto :goto_e

    :cond_1d
    move v11, v2

    :goto_e
    if-eqz v11, :cond_1e

    if-eqz v0, :cond_22

    .line 96
    invoke-static {v7, v12, v1}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_11

    :cond_1e
    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v10

    const/16 v11, 0x1000

    .line 97
    invoke-virtual {v10, v11}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 98
    invoke-static {v12, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_20

    invoke-virtual {v12, v10}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    goto :goto_f

    :cond_1f
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v12, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    goto :goto_f

    :cond_20
    move-object v10, v9

    :goto_f
    if-nez v10, :cond_21

    :goto_10
    invoke-static {v6, v7, v12}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_c

    :cond_21
    if-eqz v0, :cond_22

    invoke-static {v7, v10, v1}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    :cond_22
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_c

    .line 99
    :cond_23
    iput-boolean v2, v5, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    goto/16 :goto_b

    .line 100
    :cond_24
    :goto_12
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x24

    if-lt v0, v3, :cond_2d

    .line 102
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "uuid:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_25
    sget-object v6, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    if-nez v0, :cond_26

    goto :goto_15

    :cond_26
    move v7, v1

    move v6, v2

    move v8, v6

    .line 104
    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_2a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_29

    add-int/lit8 v8, v8, 0x1

    if-eqz v7, :cond_28

    const/16 v7, 0x8

    if-eq v6, v7, :cond_27

    const/16 v7, 0xd

    if-eq v6, v7, :cond_27

    const/16 v7, 0x12

    if-eq v6, v7, :cond_27

    const/16 v7, 0x17

    if-ne v6, v7, :cond_28

    :cond_27
    move v7, v1

    goto :goto_14

    :cond_28
    move v7, v2

    :cond_29
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2a
    if-eqz v7, :cond_2b

    const/4 v7, 0x4

    if-ne v7, v8, :cond_2b

    if-ne v3, v6, :cond_2b

    move v3, v1

    goto :goto_16

    :cond_2b
    :goto_15
    move v3, v2

    :goto_16
    if-eqz v3, :cond_2d

    const-string v3, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v6, "InstanceID"

    .line 105
    invoke-static {v3, v6}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    invoke-static {p0, v3, v1, v9}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 106
    iput-object v9, v1, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 107
    invoke-static {v5, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-object v0, v1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 109
    iput-object v9, v1, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;

    iput-object v9, v1, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/ArrayList;

    .line 111
    iput-object v9, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    goto :goto_17

    .line 112
    :cond_2c
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0x9

    const-string v1, "Failure creating xmpMM:InstanceID"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 113
    :cond_2d
    :goto_17
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 114
    :cond_2f
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0xca

    const-string v1, "Invalid attributes of rdf:RDF element"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 115
    :cond_30
    new-instance v4, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v4}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    :cond_31
    return-object v4
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x1000

    .line 4
    invoke-virtual {p1, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 6
    :cond_0
    new-instance v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;-><init>()V

    .line 7
    :try_start_0
    new-instance v2, Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-direct {v2, v0}, Lcom/adobe/xmp/impl/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    iput-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 8
    iget p0, p1, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 9
    iput p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    new-instance p0, Ljava/io/OutputStreamWriter;

    iget-object v2, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    invoke-virtual {v1, p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 11
    :catch_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p1, 0x0

    const-string v0, "Error writing to the OutputStream"

    invoke-direct {p0, v0, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
