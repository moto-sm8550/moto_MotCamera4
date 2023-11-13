.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    check-cast p1, [I

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 5
    :cond_1
    aget v0, p1, v2

    iget-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v4, v3, v2

    if-ne v0, v4, :cond_2

    aget v0, p1, v1

    goto :goto_0

    .line 6
    :cond_2
    aget v0, p1, v1

    aget v3, v3, v1

    if-ne v0, v3, :cond_3

    aget v0, p1, v2

    goto :goto_0

    .line 7
    :cond_3
    aget v0, p1, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 8
    aget v3, p1, v2

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v2, v4, v2

    if-eq v3, v2, :cond_5

    aget v2, p1, v1

    aget v1, v4, v1

    if-ne v2, v1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->HANDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processUserEditForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;)V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->CARETS:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processUserEditForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;)V

    .line 11
    :cond_6
    :goto_2
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v1, "copyOf(this, size)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    int-to-long v0, v0

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->schedulePlaybackSpeedChangeMessages()V

    :goto_3
    return-void
.end method
