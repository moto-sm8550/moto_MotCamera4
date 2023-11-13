.class public final Lcom/motorola/camera/background/common/SimpleWatchDog;
.super Ljava/util/Timer;
.source "SimpleWatchDog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isTimerCancelled:Z

.field public mIsRunning:Z

.field public mTimerTask:Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;

.field public final runnable:Ljava/lang/Runnable;

.field public final timeOutMs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/SimpleWatchDog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 2
    iput-wide p2, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->timeOutMs:J

    iput-object p4, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mTimerTask:Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mTimerTask:Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->isTimerCancelled:Z

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;-><init>(Lcom/motorola/camera/background/common/SimpleWatchDog;)V

    iput-object v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mTimerTask:Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;

    .line 6
    iget-wide v1, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->timeOutMs:J

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mIsRunning:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcom/motorola/camera/background/common/SimpleWatchDog;->TAG:Ljava/lang/String;

    const-string v1, "WatchDog timer already cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :goto_1
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized timerCancel()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->isTimerCancelled:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
