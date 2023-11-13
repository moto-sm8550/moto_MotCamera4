.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "LimitedDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,107:1\n80#1,10:109\n80#1,10:119\n20#2:108\n20#2:129\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n66#1:109,10\n73#1:119,10\n56#1:108\n92#1:129\n*E\n"
.end annotation


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/coroutines/Delay;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final parallelism:I

.field public final queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/LockFreeTaskQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runningWorkers:I

.field public final workerAllocationLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    .line 4
    instance-of p2, p1, Lkotlinx/coroutines/Delay;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/Delay;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    .line 6
    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    .line 7
    new-instance p1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v2, :cond_2

    monitor-exit p1

    move v0, v1

    goto :goto_1

    .line 6
    :cond_2
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    add-int/2addr p2, v0

    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit p1

    throw p0
.end method

.method public final run()V
    .locals 3

    :goto_0
    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 9
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->getSize()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method
