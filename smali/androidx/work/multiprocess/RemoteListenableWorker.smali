.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Landroidx/work/ListenableWorker;
.source "RemoteListenableWorker.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field public mComponentName:Landroid/content/ComponentName;

.field public final mExecutor:Landroidx/work/impl/utils/SerialExecutor;

.field public final mWorkManager:Landroidx/work/impl/WorkManagerImpl;

.field public final mWorkerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteListenableWorker"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    .line 3
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    iget-object p1, p1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 5
    check-cast p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 6
    iget-object p1, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 7
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 8
    new-instance p2, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 9
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 10
    invoke-direct {p2, v0, p1}, Landroidx/work/multiprocess/ListenableWorkerImplClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    new-instance v2, Landroidx/work/multiprocess/RemoteListenableWorker$3;

    invoke-direct {v2, p0}, Landroidx/work/multiprocess/RemoteListenableWorker$3;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V

    invoke-virtual {v1, v0, v2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 3
    iget-object v1, v1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 4
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    .line 5
    iget-object v2, v2, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 6
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 7
    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 8
    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string p0, "Need to specify a package name for the Remote Service."

    .line 10
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p0, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-object v0

    .line 12
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "Need to specify a class name for the Remote Service."

    .line 13
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p0, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    .line 16
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    new-instance v3, Landroidx/work/multiprocess/RemoteListenableWorker$1;

    invoke-direct {v3, p0, v2}, Landroidx/work/multiprocess/RemoteListenableWorker$1;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 17
    new-instance v1, Landroidx/work/multiprocess/RemoteListenableWorker$2;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteListenableWorker$2;-><init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-static {v0, v1, p0}, Landroidx/work/multiprocess/RemoteClientUtils;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
