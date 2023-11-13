.class public final Lcom/motorola/camera/shared/ThreadPriorityRunnable;
.super Ljava/lang/Object;
.source "ThreadPriorityRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final priority:I

.field public final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/motorola/camera/shared/ThreadPriorityRunnable;->priority:I

    iput-object p1, p0, Lcom/motorola/camera/shared/ThreadPriorityRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 2
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 3
    :try_start_0
    iget v2, p0, Lcom/motorola/camera/shared/ThreadPriorityRunnable;->priority:I

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/shared/ThreadPriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    throw p0
.end method
