.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionActivity.kt"

# interfaces
.implements Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public isSelectingRange:Z

.field public maxReached:Z

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaximumRangeLimitReached()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    const v0, 0x7f110434

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    .line 10
    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "viewBinding"

    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMinimumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p0, "viewBinding"

    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onStopTrackingTouch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    .line 8
    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p0, "viewBinding"

    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onValueChanged([I)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->update()V

    :cond_0
    return-void
.end method
