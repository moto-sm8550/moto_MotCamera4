.class public final synthetic Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/StateChangeListener;

.field public final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;->f$2:Ljava/util/Collection;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
