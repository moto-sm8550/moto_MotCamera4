.class public final synthetic Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    .line 2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
