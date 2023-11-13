.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;
.super Landroid/animation/ValueAnimator;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingAnimator"
.end annotation


# instance fields
.field public final mVector:[F

.field public final synthetic this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;FF)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/32 v0, 0xf4240

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->mVector:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->mVector:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    sget v5, Lcom/motorola/camera/editor/ui/ScaleImageView;->$r8$clinit:I

    .line 2
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView;->scrollBy(FF)Z

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->mVector:[F

    aget v1, p0, v2

    const v3, 0x3f666666

    mul-float/2addr v1, v3

    aput v1, p0, v2

    .line 4
    aget v1, p0, v4

    mul-float/2addr v1, v3

    aput v1, p0, v4

    if-eqz v0, :cond_0

    .line 5
    aget v0, p0, v2

    aget p0, p0, v4

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getDistance(FFFF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
