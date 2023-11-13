.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation;
.super Ljava/lang/Object;
.source "HighlightAnimation.kt"


# direct methods
.method public static final highlightAnimation(Landroid/view/View;II)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    const-string p1, "backgroundColor"

    .line 2
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x2bc

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
