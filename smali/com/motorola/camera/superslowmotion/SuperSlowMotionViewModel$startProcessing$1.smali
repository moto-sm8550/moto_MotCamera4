.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;
.super Ljava/util/TimerTask;
.source "SuperSlowMotionViewModel.kt"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->updateProcessingPreview()V

    return-void
.end method
