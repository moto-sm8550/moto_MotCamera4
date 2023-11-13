.class public final synthetic Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_0
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 7
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-nez v2, :cond_1

    move v1, v5

    :cond_1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    .line 8
    :cond_2
    iput v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    check-cast v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->onSourceInfoRefreshed(JZZ)V

    .line 10
    iget-boolean p0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez p0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    :cond_3
    return-void

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    const-string/jumbo v2, "this$0"

    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionToken:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getSuperSlowMotionMaxDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->determinateCaptureStarted(I)V

    .line 16
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getSuperSlowMotionMaxDuration()I

    move-result v3

    int-to-long v3, v3

    .line 17
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->getDeterminateCaptureProgress()Landroid/widget/ProgressBar;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 18
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->animateDeterminate(Landroid/widget/ProgressBar;JZ)V

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->superSlowMotionToken:Ljava/lang/Object;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getSuperSlowMotionMaxDuration()I

    move-result v0

    int-to-long v3, v0

    .line 25
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
