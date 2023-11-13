.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;
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
    name = "ScaleAnimator"
.end annotation


# instance fields
.field public final mEnd:[F

.field public final mResult:[F

.field public final mStart:[F

.field public final synthetic this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/16 p1, 0x9

    new-array v0, p1, [F

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mStart:[F

    new-array v1, p1, [F

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mEnd:[F

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mResult:[F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 6
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0xc8

    .line 7
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 10
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mResult:[F

    iget-object v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mStart:[F

    aget v3, v2, v0

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mEnd:[F

    aget v4, v4, v0

    aget v2, v2, v0

    invoke-static {v4, v2, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mResult:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
