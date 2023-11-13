.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    div-float/2addr p3, p1

    div-float/2addr p4, p1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_6

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object p1

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    .line 15
    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    if-eqz p2, :cond_4

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    :goto_1
    const/4 v2, 0x4

    if-eqz p2, :cond_5

    .line 18
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 19
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    goto :goto_2

    .line 20
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 21
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v3, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    .line 23
    iget p3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float p4, p3, v4

    const/high16 v5, 0x40000000    # 2.0f

    if-gez p4, :cond_6

    .line 24
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p4

    div-float/2addr p4, v5

    add-float/2addr p4, p3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p3

    div-float/2addr p3, v5

    cmpl-float p3, p4, p3

    if-lez p3, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p4

    sub-float/2addr p3, p4

    neg-float p3, p3

    div-float/2addr p3, v5

    iput p3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    .line 26
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p4

    div-float/2addr p4, v5

    add-float/2addr p4, p3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p3

    div-float/2addr p3, v5

    cmpl-float p3, p4, p3

    if-lez p3, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v5

    iput p3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 28
    :cond_7
    :goto_3
    iget p3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    cmpg-float p4, p3, v4

    if-gez p4, :cond_8

    .line 29
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p4

    div-float/2addr p4, v5

    add-float/2addr p4, p3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p3

    div-float/2addr p3, v5

    cmpl-float p3, p4, p3

    if-lez p3, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p3

    sub-float/2addr p1, p3

    neg-float p1, p1

    div-float/2addr p1, v5

    iput p1, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    goto :goto_4

    .line 31
    :cond_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p4

    div-float/2addr p4, v5

    add-float/2addr p4, p3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p3

    div-float/2addr p3, v5

    cmpl-float p3, p4, p3

    if-lez p3, :cond_9

    .line 32
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p3

    sub-float/2addr p1, p3

    div-float/2addr p1, v5

    iput p1, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 33
    :cond_9
    :goto_4
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz p2, :cond_a

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 35
    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_5

    .line 36
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 37
    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 38
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 39
    invoke-virtual {p1, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 40
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 41
    invoke-virtual {p1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 42
    :cond_c
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 43
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    move p2, v0

    goto :goto_6

    .line 44
    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_6
    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
