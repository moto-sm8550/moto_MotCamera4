.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "CutoutModeComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;
    }
.end annotation


# static fields
.field public static final HIDE_STATES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field public static final SHOW_STATES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final applyPreviewChangeListener:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

.field public bottomBracketMargin:F

.field public final breathingAnimationSet:Landroid/view/animation/AnimationSet;

.field public final context$delegate:Lkotlin/Lazy;

.field public controlPanelOpen:Z

.field public currentStatus:I

.field public final density:F

.field public final detectBackground$delegate:Lkotlin/Lazy;

.field public final detectBrackets$delegate:Lkotlin/Lazy;

.field public faceDetected:Z

.field public final faceDetectedRunnable$delegate:Lkotlin/Lazy;

.field public final faceDetectedTransition$delegate:Lkotlin/Lazy;

.field public final fadeDuration$delegate:Lkotlin/Lazy;

.field public final guideBottom$delegate:Lkotlin/Lazy;

.field public final guideText$delegate:Lkotlin/Lazy;

.field public final guideTop$delegate:Lkotlin/Lazy;

.field public final headlineText$delegate:Lkotlin/Lazy;

.field public infoMessage:I

.field public final infoText$delegate:Lkotlin/Lazy;

.field public final mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public previewSize:Lcom/motorola/camera/PreviewSize;

.field public scaleAnimPlaying:Z

.field public final scaleDuration$delegate:Lkotlin/Lazy;

.field public shouldKeepHidden:Z

.field public shouldRepeatBreathingAnimation:Z

.field public final textGroup$delegate:Lkotlin/Lazy;

.field public topBracketMargin:F

.field public final viewfinderGuide$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_WAIT_LOADING_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-array v2, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v5, "MODE_SHOW_UI_KEY"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->HIDE_STATES:Ljava/util/ArrayList;

    new-array v4, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v6, "MODE_HIDE_UI_KEY"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->SHOW_STATES:Ljava/util/ArrayList;

    .line 7
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 8
    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 9
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v6, v1, v3

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 16
    invoke-static {v0, v5, v5, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    .line 3
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    .line 4
    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 5
    iget p2, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 6
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    .line 7
    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 p2, 0x4

    .line 8
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleDuration$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleDuration$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    const/4 v0, 0x3

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleDuration$delegate:Lkotlin/Lazy;

    .line 10
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$fadeDuration$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$fadeDuration$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Lkotlin/Lazy;

    .line 11
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->context$delegate:Lkotlin/Lazy;

    .line 12
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$infoText$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$infoText$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoText$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$headlineText$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$headlineText$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->headlineText$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$detectBackground$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$detectBackground$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBackground$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideTop$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideTop$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideTop$delegate:Lkotlin/Lazy;

    .line 16
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideBottom$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideBottom$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideBottom$delegate:Lkotlin/Lazy;

    .line 17
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideText$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$guideText$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideText$delegate:Lkotlin/Lazy;

    .line 18
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$viewfinderGuide$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$viewfinderGuide$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    .line 19
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$textGroup$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$textGroup$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->textGroup$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$detectBrackets$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$detectBrackets$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBrackets$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedTransition$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedTransition$delegate:Lkotlin/Lazy;

    .line 22
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedRunnable$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$faceDetectedRunnable$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$panelTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 25
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 26
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    .line 27
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->context$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-context>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public final getDetectBackground()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBackground$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-detectBackground>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getDetectBrackets()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBrackets$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-detectBrackets>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getFaceDetectedRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedTransition$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method public final getFadeDuration()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeadlineText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->headlineText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-headlineText>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getInfoText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-infoText>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getScaleDuration()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleDuration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->LISTENED_STATES:Ljava/util/Collection;

    return-object p0
.end method

.method public final getTextGroup()Landroidx/constraintlayout/widget/Group;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->textGroup$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-textGroup>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "<get-viewfinderGuide>(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    int-to-float v1, v1

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0700df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    .line 14
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideText$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "<get-guideText>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    float-to-int v1, v1

    .line 15
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->updateLayout()V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 18
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700d8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    div-float v2, v1, v8

    .line 19
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    .line 20
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object v4, v14

    move v5, v1

    move v6, v8

    move v7, v1

    move v10, v13

    move v12, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v12, 0x0

    .line 21
    invoke-virtual {v14, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 22
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f0b0011

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 23
    invoke-virtual {v14, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    move-object v4, v10

    move v5, v1

    move v6, v2

    move v8, v2

    move v9, v15

    move-object v1, v10

    move v10, v13

    move v2, v11

    move/from16 v11, v16

    move v15, v12

    move v12, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 25
    invoke-virtual {v1, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 26
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 27
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    .line 29
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 31
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 32
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$setupBreathingAnimation$1;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method public final rotateTextView(Landroid/widget/TextView;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v1, v4

    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    sub-float/2addr v1, v4

    :cond_1
    add-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 5
    iget p2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_4

    const/16 v3, 0x10e

    if-ne p2, v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700e0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2

    .line 8
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700e1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setWidth(I)V

    .line 10
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_5

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    return-void
.end method

.method public final scaleMargin(Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v4, v0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v4, v1

    :goto_0
    if-eqz p1, :cond_1

    move v6, v0

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v1

    :goto_1
    if-eqz p1, :cond_2

    move v8, v0

    goto :goto_2

    .line 4
    :cond_2
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v8, v1

    :goto_2
    if-eqz p1, :cond_3

    move v10, v0

    goto :goto_3

    .line 5
    :cond_3
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v10, v1

    :goto_3
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    if-eqz p1, :cond_5

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    float-to-int v1, v1

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v0

    :goto_5
    if-eqz p1, :cond_6

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    float-to-int p1, p1

    move v5, p1

    goto :goto_6

    :cond_6
    move v5, v0

    .line 9
    :goto_6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_7

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;

    move-object v2, p1

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IIIIIIILcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    goto :goto_7

    .line 14
    :cond_7
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 16
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    new-instance p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v3, v1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    :goto_7
    return-void
.end method

.method public final setSegmentationStatus$enumunboxing$(IIZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-ne p2, v1, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    if-eq p2, v1, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p3, v2

    .line 2
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoMessage:I

    if-eq p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    return-void

    .line 3
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 4
    :cond_6
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoMessage:I

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-ne p2, v1, :cond_7

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    .line 9
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 10
    :cond_7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez p1, :cond_8

    const-string p1, ""

    goto :goto_2

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(newInfoMessage)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_2
    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_a

    .line 13
    new-instance p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_9

    .line 15
    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance p2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v4}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v2

    .line 18
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    :goto_4
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    .line 11
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 14
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 17
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 18
    invoke-static {v5, p1, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 23
    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 25
    :cond_2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    .line 28
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 29
    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->HIDE_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    .line 31
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f110561

    const/4 v3, 0x4

    if-eqz v1, :cond_5

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p0, v2, v3, v5}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_0

    .line 36
    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 38
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v0, v7, v4

    .line 39
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v0, v7, v5

    .line 40
    invoke-static {v1, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 41
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 42
    invoke-virtual {p0, v2, v3, v5}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 44
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
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
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v0, v1}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final updateLayout()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 3
    iget-object v4, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 6
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 12
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;FLcom/motorola/camera/ui/layoutmanager/LayoutValue;II)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

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

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
