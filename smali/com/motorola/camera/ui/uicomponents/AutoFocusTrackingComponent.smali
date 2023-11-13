.class public final Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "AutoFocusTrackingComponent.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine$TouchTrackFocusListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoFocusTrackingComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoFocusTrackingComponent.kt\ncom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mPanelOpened:Z

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPreviewRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

.field public mPreviewSize:Landroid/util/Size;

.field public final mTimeoutCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

.field public mTracking:Z

.field public mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

.field public mViewSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance p1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$mPanelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$mPanelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$mPanelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$mPanelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;)V

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 6
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final convert(Landroid/graphics/PointF;Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/PointF;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v4

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    .line 5
    invoke-static {p2, v3}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 p2, 0x2

    new-array v3, p2, [F

    .line 6
    iget v5, p1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aput v5, v3, v6

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    aput p1, v3, v5

    new-array p1, p2, [F

    .line 7
    invoke-virtual {v0, p1, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget v0, p1, v6

    aget p1, p1, v5

    .line 8
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v3, p3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 9
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iget v7, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p3, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    invoke-virtual {p3, v2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    new-array v1, p2, [F

    aput v0, v1, v6

    aput p1, v1, v5

    new-array p1, p2, [F

    .line 12
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 13
    new-instance p2, Landroid/graphics/PointF;

    aget p3, p1, v6

    aget p1, p1, v5

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p1

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result p0

    neg-float p1, p1

    neg-float p0, p0

    .line 17
    invoke-virtual {p2, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 11
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 13
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 15
    invoke-static {v0, p0, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a0083

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    return-void
.end method

.method public final onTracked([I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    .line 1
    array-length v4, p1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 2
    aget v4, p1, v1

    if-nez v4, :cond_0

    aget v4, p1, v0

    if-nez v4, :cond_0

    aget v4, p1, v3

    if-nez v4, :cond_0

    aget v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    if-eqz v4, :cond_3

    .line 3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    .line 6
    new-instance p1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9
    iget-boolean v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    :cond_4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v4, p1, v3

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    aput v4, p1, v3

    .line 14
    :cond_5
    aget v4, p1, v2

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_6

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    aput v4, p1, v2

    .line 16
    :cond_6
    new-instance v4, Landroid/graphics/PointF;

    aget v1, p1, v1

    int-to-float v1, v1

    aget v0, p1, v0

    int-to-float v0, v0

    invoke-direct {v4, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    aget v1, p1, v3

    int-to-float v1, v1

    aget p1, p1, v2

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, p1, v1}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->convert(Landroid/graphics/PointF;Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/PointF;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->convert(Landroid/graphics/PointF;Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 20
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v4, v1

    .line 21
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v5, v1

    .line 22
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v6, v1

    .line 23
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int v7, p1

    .line 24
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;IIII)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    .line 6
    sget-object p1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/graphics/Point;

    .line 9
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    .line 10
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-direct {p1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 15
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    .line 17
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 18
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v5

    div-float v4, v1, v4

    sub-float/2addr v5, v4

    .line 19
    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    .line 20
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    sub-float/2addr v1, v4

    .line 21
    invoke-direct {p1, v2, v5, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    .line 22
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 29
    invoke-static {p1, p0, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 31
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 34
    invoke-static {p1, p0, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    .line 35
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
