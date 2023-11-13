.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;
.super Lcom/motorola/camera/device/callables/CaptureRequestListener;
.source "CaptureRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/CaptureRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 2
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p4, "surface"

    .line 5
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    const-string/jumbo p4, "surfaceMap.entries"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p4, v0

    :goto_0
    check-cast p4, Ljava/util/Map$Entry;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    iget-object p2, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 10
    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne p2, p3, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p3

    if-nez p3, :cond_5

    .line 13
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object p4, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq p3, p4, :cond_5

    .line 14
    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    const/4 p4, 0x1

    .line 15
    iput-boolean p4, p3, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 16
    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 17
    sget-object p3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 18
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f11008a

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    .line 19
    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 20
    iput-boolean p4, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    .line 21
    invoke-static {v1, p3, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 22
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->captureBufferLost()V

    if-eqz p2, :cond_6

    .line 24
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_6

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processCaptureBufferLost(I)V

    :cond_6
    return-void
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->dumpCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 4
    iget v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getBuilders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 7
    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 12
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 19
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 20
    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 24
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 26
    invoke-direct {p2, v0, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    .line 3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    const-class p2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p2

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    monitor-exit p2

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catch_0
    monitor-exit p2

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 11
    sget-object p2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f11008a

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x4

    .line 13
    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 14
    iput-boolean v1, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    .line 15
    invoke-static {v2, p2, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit p2

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 5
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 7
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    invoke-direct {v1, v2, p2, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 11
    iget-boolean p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaEarlierReleaseShutter()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_3

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    .line 14
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 16
    invoke-static {p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    .line 18
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForStarted(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method
