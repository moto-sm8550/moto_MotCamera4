.class public final Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "UxDumpGlComponent.kt"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public ATTRIBUTE_BOUNDS:Ljava/lang/String;

.field public ATTRIBUTE_CLASS:Ljava/lang/String;

.field public ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

.field public ATTRIBUTE_INDEX:Ljava/lang/String;

.field public ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

.field public ATTRIBUTE_ROTATION:Ljava/lang/String;

.field public ATTRIBUTE_SELECTED:Ljava/lang/String;

.field public ATTRIBUTE_TEXT:Ljava/lang/String;

.field public ENCODING:Ljava/lang/String;

.field public EXTRA_NODE_RESOURCE:Ljava/lang/String;

.field public FILE_NAME_MAINSCREEN:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public TAG_HIERARCHY:Ljava/lang/String;

.field public TAG_NODE:Ljava/lang/String;

.field public final UXDUMP:Ljava/lang/String;

.field public mChildIndex:I

.field public volatile mFileName:Ljava/lang/String;

.field public mIndex:I

.field public final mRunnable:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;

.field public volatile mRunning:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const-string p1, "UxDumpGlComponent"

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "utf-8"

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    const-string p1, "hierarchy"

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    const-string p1, "rotation"

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_ROTATION:Ljava/lang/String;

    const-string p1, "node"

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const-string p1, "index"

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    const-string p1, "resource-id"

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    const-string/jumbo p1, "text"

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    const-string p1, "class"

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    const-string p1, "content-desc"

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    const-string p1, "selected"

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    const-string p1, "bounds"

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    const-string p1, "mainscreen_dump.xml"

    .line 14
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->FILE_NAME_MAINSCREEN:Ljava/lang/String;

    const-string p2, "openGL-canvas"

    .line 15
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->EXTRA_NODE_RESOURCE:Ljava/lang/String;

    const-string p2, "UxDump"

    .line 16
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->UXDUMP:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunnable:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 3
    invoke-static {p0, v0, p0, v1}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticOutline0;->m(Landroid/util/ArraySet;Ljava/util/List;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UX_DUMP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    sget-boolean p2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p2, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->UX_DUMP:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunnable:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    const-string v0, "false"

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p4, p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p3

    .line 9
    new-instance p4, Lcom/motorola/camera/utility/UxBounds;

    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 10
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 11
    iget v4, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    .line 12
    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v3

    add-float/2addr p1, p3

    .line 13
    invoke-direct {p4, v0, v2, v5, p1}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    iget-object p4, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {p3, v1, p4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    const-string p4, ""

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p5, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p1

    .line 9
    new-instance p4, Lcom/motorola/camera/utility/UxBounds;

    iget p5, p1, Landroid/graphics/PointF;->x:F

    .line 10
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 11
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p5

    .line 12
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    .line 13
    invoke-direct {p4, p5, v0, v2, p1}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->FILE_NAME_MAINSCREEN:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final unloadTextures()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UX_DUMP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
