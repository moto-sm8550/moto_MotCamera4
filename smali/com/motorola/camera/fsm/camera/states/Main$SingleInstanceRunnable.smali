.class public final Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleInstanceRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;
    }
.end annotation


# static fields
.field public static final sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

.field public static final sFsmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final mEnter:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sFsmMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->mEnter:Z

    return-void
.end method

.method public static sendCloseApp(Ljava/lang/Object;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending close app event to other FSMs. Current fsm ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Running FSMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sFsmMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SingleInstanceRunnable"

    .line 3
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FINISH_APP"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f1100e5

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_message"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_0

    .line 11
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    .line 12
    invoke-direct {v3, v4, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 13
    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 7

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->mEnter:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sFsmMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    .line 8
    :goto_0
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    const-string v1, "SingleInstanceRunnable"

    const-string/jumbo v2, "timed out (waiting on %s)"

    new-array p3, p3, [Ljava/lang/Object;

    .line 10
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sendCloseApp(Ljava/lang/Object;)V

    .line 13
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    iput-object p1, p2, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    .line 14
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 15
    :cond_2
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sFsmMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->sActiveInstance:Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;

    monitor-enter p0

    .line 17
    :try_start_3
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_2

    :cond_3
    const-string p2, "SingleInstanceRunnable"

    const-string v1, "instance mismatch (expected %s, got %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    aput-object p1, v2, p3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_2
    monitor-exit p0

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
