.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field public final mDefaultProcessName:Ljava/lang/String;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mInputMergerFactory:Landroidx/work/InputMergerFactory$1;

.field public final mLoggingLevel:I

.field public final mMaxJobSchedulerId:I

.field public final mMaxSchedulerLimit:I

.field public final mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

.field public final mTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mWorkerFactory:Landroidx/work/WorkerFactory$1;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 4
    sget-object v0, Landroidx/work/WorkerFactory;->TAG:Ljava/lang/String;

    .line 5
    new-instance v0, Landroidx/work/WorkerFactory$1;

    invoke-direct {v0}, Landroidx/work/WorkerFactory$1;-><init>()V

    .line 6
    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    .line 7
    new-instance v0, Landroidx/work/InputMergerFactory$1;

    invoke-direct {v0}, Landroidx/work/InputMergerFactory$1;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory$1;

    .line 9
    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    const/16 v0, 0x14

    .line 12
    iput v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    .line 13
    iget-object p1, p1, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTaskExecutor"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2
    new-instance v0, Landroidx/work/Configuration$1;

    invoke-direct {v0, p1}, Landroidx/work/Configuration$1;-><init>(Z)V

    .line 3
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
