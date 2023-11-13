.class public final Landroidx/work/multiprocess/ListenableWorkerImplClient$1;
.super Ljava/lang/Object;
.source "ListenableWorkerImplClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field public final synthetic val$callback:Landroidx/work/multiprocess/RemoteCallback;

.field public final synthetic val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

.field public final synthetic val$session:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/ListenableWorkerImplClient;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteCallback;Landroidx/work/multiprocess/RemoteDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iput-object p2, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    iput-object p4, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$session:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/IListenableWorkerImpl;

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/multiprocess/RemoteCallback;->setBinder(Landroid/os/IBinder;)V

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->this$0:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v1, v1, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/work/multiprocess/ListenableWorkerImplClient$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/work/multiprocess/ListenableWorkerImplClient$1$1;-><init>(Landroidx/work/multiprocess/ListenableWorkerImplClient$1;Landroidx/work/multiprocess/IListenableWorkerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Unable to bind to service"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p0, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient$1;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {p0, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
