.class public final Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "AutoNightVisionPillComponent.kt"


# static fields
.field public static final CAPTURE_STATES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field

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


# instance fields
.field public final activePhysicalCameraIdListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;

.field public final envListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;

.field public mHiddenState:Z

.field public mIsCapturing:Z

.field public mIsControlPanelOpened:Z

.field public mKeepHideByLux:Z

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPreActivePhysicalCameraId:Ljava/lang/String;

.field public mThresholdForPrompt:I

.field public mcfAutoNV:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

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

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v5, v4, v3

    const-string v5, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    .line 4
    invoke-static {v4, v2, v2, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 5
    sput-object v2, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->ENABLE_STATES:Ljava/util/Collection;

    .line 6
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 7
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    .line 8
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v6, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v6, v3

    .line 10
    invoke-static {v6, v4, v4, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 11
    sput-object v4, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->DISABLE_STATES:Ljava/util/Collection;

    .line 12
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    new-array v7, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v3

    .line 14
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v7, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v8, v7, v3

    .line 16
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v7, v0, v3

    .line 18
    invoke-static {v0, v6, v6, v5}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->CAPTURE_STATES:Ljava/util/Collection;

    .line 20
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 21
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 22
    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "StateKeyCollectionBuilde\u2026TES)\n            .build()"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/16 p1, 0x14

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mThresholdForPrompt:I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->envListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mPanelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->activePhysicalCameraIdListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;

    return-void
.end method


# virtual methods
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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final hidePill()V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v1, 0x7f11003a

    .line 4
    invoke-static {v1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction$$ExternalSyntheticOutline0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final inflateViewStub()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getFrontMainCamera()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupported(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->envListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->activePhysicalCameraIdListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->envListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->activePhysicalCameraIdListener:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 15
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 16
    invoke-static {p1, p0, p2}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final showAMSToast(Z)V
    .locals 2

    const p0, 0x7f110039

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p0, 0x1

    .line 4
    iput p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:I

    const/16 p0, 0xbb8

    .line 5
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 11
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction$$ExternalSyntheticOutline0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    return-void
.end method

.method public final showPill()V
    .locals 3

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f11003a

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    const/4 v2, 0x1

    .line 6
    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:I

    .line 7
    invoke-static {v1, p0, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->ENABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 4
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showPill()V

    goto/16 :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->CAPTURE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    if-eqz p1, :cond_5

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->hidePill()V

    .line 12
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showAMSToast(Z)V

    goto :goto_1

    .line 13
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->DISABLE_STATES:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    .line 15
    new-instance p1, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const-string v3, "changeEvent.context"

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 19
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 20
    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 22
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 24
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 25
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 26
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.MultiCameraStateMachine"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 27
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPreActivePhysicalCameraId:Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 31
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 32
    new-instance p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 34
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 35
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    .line 36
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    .line 37
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    :cond_5
    :goto_1
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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
