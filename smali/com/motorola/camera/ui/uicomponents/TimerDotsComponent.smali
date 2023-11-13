.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "TimerDotsComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimerDotsComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimerDotsComponent.kt\ncom/motorola/camera/ui/uicomponents/TimerDotsComponent\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,260:1\n13536#2,2:261\n*S KotlinDebug\n*F\n+ 1 TimerDotsComponent.kt\ncom/motorola/camera/ui/uicomponents/TimerDotsComponent\n*L\n75#1:261,2\n*E\n"
.end annotation


# static fields
.field public static final dotResourceIds:[Ljava/lang/Integer;


# instance fields
.field public animation:Landroid/animation/AnimatorSet;

.field public final displayCutoutProvider$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0a03f9

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a03fa

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0a03fb

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    sput-object v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->dotResourceIds:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$displayCutoutProvider$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$displayCutoutProvider$2;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;)V

    .line 3
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->displayCutoutProvider$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    const-string v1, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    .line 5
    invoke-static {p0, v0, p0, v1}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticOutline0;->m(Landroid/util/ArraySet;Ljava/util/List;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->updateTimerDotPositionCli(II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xc

    .line 12
    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->displayCutoutProvider$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    .line 14
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->updatePosition(Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;)V

    .line 15
    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->updateTimerDotPositionCli(II)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    .line 18
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v3, "mParentView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;-><init>(Landroid/view/View;Z)V

    .line 19
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->first:Landroid/widget/ImageView;

    const-string v4, "first"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorIn(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 21
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->second:Landroid/widget/ImageView;

    const-string v6, "second"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorIn(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 22
    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->third:Landroid/widget/ImageView;

    const-string/jumbo v8, "third"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorIn(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 23
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->first:Landroid/widget/ImageView;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorOut(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 24
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->second:Landroid/widget/ImageView;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorOut(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 25
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->third:Landroid/widget/ImageView;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;->singleDotAnimatorOut(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v1

    const/4 v1, 0x1

    aput-object v5, v9, v1

    const/4 v1, 0x2

    aput-object v7, v9, v1

    const/4 v1, 0x3

    aput-object v4, v9, v1

    const/4 v1, 0x4

    aput-object v6, v9, v1

    const/4 v1, 0x5

    aput-object v8, v9, v1

    .line 26
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 27
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder$build$1$1;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$DotAnimatorBuilder;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iput-object v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->animation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "IS_DOTS_TIMER"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final updatePosition(Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getHasCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getCutoutsCoordinates()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 7
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 9
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string p1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateTimerDotPositionCli(II)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/RelativeLayout;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    sget-object v4, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->dotResourceIds:[Ljava/lang/Integer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, p2

    .line 7
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
