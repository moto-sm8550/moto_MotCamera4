.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SuperSlowMotionActivity.kt"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

.field public trimming:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrim(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_0

    .line 8
    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p0, "viewBinding"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
