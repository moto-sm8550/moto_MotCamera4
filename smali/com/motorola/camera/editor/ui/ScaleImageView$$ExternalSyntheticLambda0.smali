.class public final synthetic Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    sget v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
