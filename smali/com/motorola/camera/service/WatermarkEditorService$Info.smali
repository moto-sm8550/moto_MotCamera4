.class public final Lcom/motorola/camera/service/WatermarkEditorService$Info;
.super Ljava/lang/Object;
.source "WatermarkEditorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public baseWmSize:Landroid/util/Size;

.field public layoutDirection:Ljava/lang/String;

.field public screenHeight:I

.field public screenRatio:F

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/util/Size;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenWidth:I

    .line 6
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenHeight:I

    .line 7
    iget v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenRatio:F

    .line 8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->layoutDirection:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v0

    .line 12
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    mul-float/2addr v3, v0

    const p1, 0x3f0ccccd

    mul-float/2addr v3, p1

    .line 13
    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    mul-float/2addr v3, v0

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    .line 14
    new-instance p1, Landroid/util/Size;

    float-to-int v0, v3

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->baseWmSize:Landroid/util/Size;

    return-void
.end method
