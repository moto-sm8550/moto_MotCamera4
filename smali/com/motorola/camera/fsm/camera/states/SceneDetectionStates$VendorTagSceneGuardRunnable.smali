.class public final Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates$VendorTagSceneGuardRunnable;
.super Ljava/lang/Object;
.source "SceneDetectionStates.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorTagSceneGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, p1

    :goto_1
    if-ne p1, p0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    return p1
.end method
