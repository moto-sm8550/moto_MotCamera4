.class public final Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;
.source "StoreNotNullStringRunnable.kt"


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HISTORY_STATE"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreNotNullStringRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
