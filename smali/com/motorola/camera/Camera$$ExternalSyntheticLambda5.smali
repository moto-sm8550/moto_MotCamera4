.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Camera;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Camera;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 1
    iget-object v1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/layout/DisplayFeature;

    .line 3
    instance-of v3, v2, Landroidx/window/layout/FoldingFeature;

    if-eqz v3, :cond_0

    .line 4
    move-object v0, v2

    check-cast v0, Landroidx/window/layout/FoldingFeature;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object p1

    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    goto :goto_2

    .line 7
    :cond_3
    iput-object p1, p0, Lcom/motorola/camera/Camera;->mPendingLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    :cond_4
    :goto_2
    return-void
.end method
