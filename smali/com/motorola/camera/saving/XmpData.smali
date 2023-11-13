.class public final Lcom/motorola/camera/saving/XmpData;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/saving/XmpData$DepthFocus;,
        Lcom/motorola/camera/saving/XmpData$PhotosOem;,
        Lcom/motorola/camera/saving/XmpData$GImage;,
        Lcom/motorola/camera/saving/XmpData$GDepth;
    }
.end annotation


# instance fields
.field public mExtMetadata:Lcom/adobe/xmp/XMPMeta;

.field public mMetadata:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/container/"

    const-string v2, "Container"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/container/item/"

    const-string v2, "Item"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "GCamera"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.motorola.com/camera/1.0/depthfocus/"

    const-string v2, "MotDepthFocus"

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.motorola.com/camera/1.0/debuginfo/"

    const-string v2, "MotDebugInfo"

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    const-string v1, "http://ns.google.com/photos/1.0/document/"

    const-string v2, "MotDocument"

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XmpData"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public static createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    .line 2
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    const-string v1, "Directory"

    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    const-string v3, "The named property is not an array"

    const/16 v6, 0x66

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    :goto_0
    if-nez v2, :cond_8

    .line 3
    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 4
    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered()Lcom/adobe/xmp/options/PropertyOptions;

    move v7, v4

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v8, :cond_8

    const-string v8, ""

    .line 5
    new-instance v9, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v9}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v10, 0x100

    const/4 v11, 0x1

    .line 6
    invoke-virtual {v9, v10, v11}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 7
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 8
    iget v10, v2, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 v10, v10, -0x1e01

    if-nez v10, :cond_1

    move v10, v11

    goto :goto_2

    :cond_1
    move v10, v4

    :goto_2
    const/16 v12, 0x67

    if-eqz v10, :cond_7

    .line 9
    invoke-static {v2, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-static {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v13

    iget-object v14, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v14, v13, v4, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    invoke-direct {p0, v3, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v12, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v12, v13, v11, v10}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 10
    :goto_3
    new-instance v10, Lcom/adobe/xmp/impl/XMPNode;

    const-string v12, "[]"

    .line 11
    invoke-direct {v10, v12, v5, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 12
    invoke-static {v9, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v9

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    add-int/2addr v12, v11

    if-gt v11, v12, :cond_4

    invoke-virtual {v14, v12, v10}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    invoke-virtual {p0, v10, v8, v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0x68

    const-string v1, "Array index out of bounds"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Failure creating array node"

    invoke-direct {p0, v0, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Explicit arrayOptions required to create new array"

    invoke-direct {p0, v0, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Only array form flags allowed for arrayOptions"

    invoke-direct {p0, v0, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    return-void

    .line 14
    :cond_9
    new-instance p0, Lcom/adobe/xmp/XMPException;

    invoke-direct {p0, v3, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const-string v0, "Semantic"

    invoke-virtual {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Length"

    .line 3
    invoke-virtual {p0, p1, p4, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Mime"

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/adobe/xmp/XMPMeta;)Lcom/motorola/camera/saving/XmpData;
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 28
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 31
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x200

    .line 32
    invoke-virtual {v1, v3, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 33
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 34
    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/IteratorOptions;)V

    .line 35
    :goto_0
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 37
    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, v0

    check-cast v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 38
    invoke-virtual {v5, v1, v4, p1, v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final add(Lcom/motorola/camera/saving/ViewPoint;)Lcom/motorola/camera/saving/XmpData;
    .locals 7

    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez p1, :cond_1

    sget-object p1, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 16
    new-instance p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_0
    const-string v1, "PoseHeadingDegrees"

    .line 19
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "PosePitchDegrees"

    .line 21
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 22
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "InitialViewHeadingDegrees"

    .line 23
    move-object v2, p1

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 24
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v1, "InitialViewPitchDegrees"

    .line 25
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 26
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1, v2, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object p0
.end method

.method public final add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 3
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 6
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 8
    iget-object v3, p1, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mSpecialType:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "http://ns.google.com/photos/1.0/camera/"

    if-eqz v3, :cond_1

    :try_start_1
    const-string v5, "SpecialTypeID"

    .line 9
    move-object v6, v0

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v6, v4, v5, v3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 10
    :cond_1
    iget-object v3, p1, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mBurstId:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v5, "BurstID"

    .line 11
    move-object v6, v0

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v6, v4, v5, v3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 12
    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mPrimary:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    const-string v3, "BurstPrimary"

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0, v4, v3, p1, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-object p0
.end method
