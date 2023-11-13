.class public final Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "PanoTutorialComponent.java"


# static fields
.field public static final mInflationStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIsShowAnimation:Z

.field public mScrim:Landroid/widget/LinearLayout;

.field public mSplitMode:Z

.field public final mTutorialListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mInflationStates:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda5;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mTutorialListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    .line 4
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mInflationStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 5
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final cancelLottieAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/16 p0, 0x8

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0, p0, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a025a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mScrim:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/room/RoomMasterTable;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->placeScrim()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->cancelLottieAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationViewCapture:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mIsShowAnimation:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->showLottieAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final placeScrim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mScrim:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v1

    .line 5
    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    .line 6
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mScrim:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerControlVisibilityListener(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mTutorialListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mSplitMode:Z

    const/16 v1, 0xa

    const v2, 0x7f07035d

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 11
    invoke-virtual {v0, v3, p0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/16 p0, 0xb4

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 17
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr p2, p0

    int-to-float p0, p2

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 23
    invoke-virtual {v0, v3, p0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p0, p2

    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final showLottieAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->rotateLottieView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 5
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_9

    .line 9
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->registerControlVisibilityListener(Z)V

    .line 10
    new-instance p1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->registerControlVisibilityListener(Z)V

    .line 13
    new-instance p1, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    new-instance p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 19
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 20
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mIsShowAnimation:Z

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mIsShowAnimation:Z

    goto :goto_2

    .line 25
    :cond_7
    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 26
    :cond_8
    :goto_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->registerControlVisibilityListener(Z)V

    .line 27
    new-instance p1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
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

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;->mInflationStates:Ljava/util/ArrayList;

    return-object p0
.end method
