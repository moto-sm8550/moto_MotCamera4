.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerDotsComponent.kt"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->parentView:Landroid/view/View;

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->first:Landroid/widget/ImageView;

    const-string v0, "first"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->resetProperties(Landroid/widget/ImageView;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->second:Landroid/widget/ImageView;

    const-string v0, "second"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->resetProperties(Landroid/widget/ImageView;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->third:Landroid/widget/ImageView;

    const-string/jumbo v0, "third"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->resetProperties(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->parentView:Landroid/view/View;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final resetProperties(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 6
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->inactiveColor:I

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method
