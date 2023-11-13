.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 7

    sget p0, Lcom/motorola/camera/cli/content/CliContentManager;->$r8$clinit:I

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    aget-object v0, p1, v1

    .line 3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v3

    if-gt v2, v1, :cond_5

    .line 5
    :goto_1
    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    if-ge v4, v6, :cond_3

    move-object v0, v3

    move v4, v6

    :cond_3
    if-eq v2, v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v0, p0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8
    :cond_6
    sput-object p0, Lcom/motorola/camera/cli/DualPreviewManager;->faceBounds:Landroid/graphics/Rect;

    return-void
.end method
