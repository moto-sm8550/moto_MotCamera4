.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "ExposureSliderTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressBarTexture"
.end annotation


# instance fields
.field public mHeight:F

.field public final mPaint:Landroid/graphics/Paint;

.field public final mWidth:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 2
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 3
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mWidth:F

    const/high16 p2, 0x42980000    # 76.0f

    mul-float/2addr p1, p2

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    .line 7
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public final createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 1

    .line 1
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method
