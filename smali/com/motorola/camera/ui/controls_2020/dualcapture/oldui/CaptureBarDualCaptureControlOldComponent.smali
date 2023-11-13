.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "CaptureBarDualCaptureControlOldComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureBarDualCaptureControlOldComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureBarDualCaptureControlOldComponent.kt\ncom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n1#2:277\n*E\n"
.end annotation


# static fields
.field public static final DISABLE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENABLE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFLATION_STATES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final LISTENED_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

.field public layoutSwitch:Landroid/widget/ImageButton;

.field public lensGroupSelect:Landroid/widget/ImageButton;

.field public selectAllowed:Z

.field public switchAllowed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    const-string v5, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    .line 4
    invoke-static {v2, v4, v2, v5}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticOutline0;->m(Landroid/util/ArraySet;Ljava/util/List;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 5
    sput-object v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->SHOW_STATES:Ljava/util/Collection;

    .line 6
    new-instance v4, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v4, v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>(I)V

    .line 7
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add(Ljava/util/Collection;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 11
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 19
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 20
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    new-array v5, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/CancellationTokenSource;->add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/CancellationTokenSource;->build()Ljava/util/Collection;

    move-result-object v4

    const-string v5, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 23
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v3

    .line 25
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 26
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v3

    .line 27
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v8, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v8, v3

    .line 28
    invoke-static {v8, v7, v7, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 29
    sput-object v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 30
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-array v8, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 31
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v9, v8, v3

    .line 32
    invoke-static {v8, v7, v7, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    .line 33
    sput-object v7, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->ENABLE_STATES:Ljava/util/Collection;

    .line 34
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 35
    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-interface {v8, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-interface {v8, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {v8, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v8, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 40
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 42
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 43
    invoke-static {v0, v8, v8, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->selectAllowed:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->switchAllowed:Z

    return-void
.end method


# virtual methods
.method public final getRotatedViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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

    const v1, 0x7f0a00bc

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 12
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->updateCameraGroupDrawable(I)V

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 16
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureLayoutType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->updateLayoutSwitchDrawable(I)V

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->show()V

    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->selectAllowed:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->switchAllowed:Z

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 9
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->selectAllowed:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->switchAllowed:Z

    if-eqz v0, :cond_a

    :cond_9
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_a
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticLambda1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->SHOW_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->HIDE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_2

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->ENABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v5, v3, v4

    .line 16
    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v3, v1

    .line 17
    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final updateCameraGroupDrawable(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-eqz p0, :cond_3

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const v0, 0x7f0800ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0800ec

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f11045e

    const v1, 0x7f11045f

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "if (isRRCameraGroup) {\n \u2026ens_selfie)\n            }"

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v0, "if (isRRCameraGroup) {\n \u2026_lens_rear)\n            }"

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11045d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final updateLayoutSwitchDrawable(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-eqz p0, :cond_3

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const v2, 0x7f0800ea

    goto :goto_1

    :cond_1
    const v2, 0x7f0800e7

    .line 3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f11046a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f11046b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v2, "if (isSplitScreen) {\n   \u2026itch_to_ss)\n            }"

    .line 6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110467

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
