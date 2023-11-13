.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable$1;
.super Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;
.source "WideSelfieCaptureRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v2, p1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 7
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;

    .line 9
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p2

    .line 11
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieCaptureRequestRunnable;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    if-eqz p1, :cond_0

    .line 15
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-gtz v0, :cond_1

    goto/16 :goto_3

    .line 16
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 17
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 18
    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 20
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float v5, v5

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float p0, p0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p0, v6

    .line 23
    new-array v6, v0, [Landroid/graphics/Rect;

    :goto_1
    if-ge v3, v0, :cond_6

    .line 24
    aget-object v7, p1, v3

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v4, :cond_5

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_4

    const/16 v8, 0xb4

    if-eq v4, v8, :cond_3

    const/16 v8, 0x10e

    if-eq v4, v8, :cond_2

    goto/16 :goto_3

    .line 25
    :cond_2
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 26
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 27
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 28
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 29
    new-instance v11, Landroid/graphics/Rect;

    int-to-float v8, v8

    mul-float/2addr v8, v5

    .line 30
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, p0

    .line 31
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v5

    .line 32
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    int-to-float v7, v7

    mul-float/2addr v7, p0

    .line 33
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    invoke-direct {v11, v8, v10, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v11, v6, v3

    goto/16 :goto_2

    .line 34
    :cond_3
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 35
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 36
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 38
    new-instance v11, Landroid/graphics/Rect;

    int-to-float v8, v8

    mul-float/2addr v8, p0

    .line 39
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v5

    .line 40
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, p0

    .line 41
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v7, v7

    mul-float/2addr v7, v5

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    invoke-direct {v11, v8, v9, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v11, v6, v3

    goto/16 :goto_2

    .line 43
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 44
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v7

    .line 47
    new-instance v7, Landroid/graphics/Rect;

    int-to-float v8, v8

    mul-float/2addr v8, v5

    .line 48
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, p0

    .line 49
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v5

    .line 50
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, p0

    .line 51
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    invoke-direct {v7, v8, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v7, v6, v3

    goto :goto_2

    .line 52
    :cond_5
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    .line 54
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v7

    .line 56
    new-instance v7, Landroid/graphics/Rect;

    int-to-float v8, v8

    mul-float/2addr v8, p0

    .line 57
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v5

    .line 58
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, p0

    .line 59
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v5

    .line 60
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v7, v6, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v1, v6

    :goto_3
    const-string p0, "WIDE_SELFIE_FACE_RECT"

    .line 61
    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

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
    .locals 0

    return-void
.end method
