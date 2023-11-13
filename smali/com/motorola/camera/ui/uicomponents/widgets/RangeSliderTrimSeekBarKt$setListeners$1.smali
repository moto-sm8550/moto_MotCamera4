.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;
.super Ljava/lang/Object;
.source "RangeSliderTrimSeekBar.kt"

# interfaces
.implements Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;


# instance fields
.field public final synthetic $attrChange:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public constructor <init>(Landroidx/databinding/InverseBindingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;->$attrChange:Landroidx/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaximumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onMinimumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onValueChanged([I)V
    .locals 3

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;->$attrChange:Landroidx/databinding/InverseBindingListener;

    check-cast p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;->this$0:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v0, "view"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;->this$0:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
