.class public final Lcom/motorola/camera/cli/content/CliContentViewModel;
.super Landroidx/transition/PathMotion;
.source "CliContentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;
    }
.end annotation


# instance fields
.field public final actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

.field public callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

.field public final cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

.field public mainHandler:Landroid/os/Handler;

.field public presentationOpening:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;)V

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    .line 3
    sget-object v0, Lcom/motorola/camera/cli/content/CliContentViewModel$cliDisplay$2;->INSTANCE:Lcom/motorola/camera/cli/content/CliContentViewModel$cliDisplay$2;

    .line 4
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final dispatchAction(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    const-string v5, "com.motorola.camera3.EXTRA_CONTENT"

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-ne p1, v4, :cond_8

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    .line 6
    instance-of p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    if-eqz p1, :cond_8

    .line 7
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->blackFrame:Landroid/view/View;

    if-eqz p0, :cond_8

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->close()V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZ)V

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    if-nez v0, :cond_6

    .line 21
    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-eqz v1, :cond_8

    .line 23
    iput-boolean v3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    .line 24
    new-instance v2, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->showContentPresentation(Lkotlin/jvm/functions/Function2;)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v4}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v4}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 27
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-eqz p0, :cond_8

    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->changeOrientation(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/cli/content/CliContentViewModel;->dispatchAction(Landroid/content/Intent;)V

    .line 2
    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-virtual {v0, v1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    return-void
.end method
