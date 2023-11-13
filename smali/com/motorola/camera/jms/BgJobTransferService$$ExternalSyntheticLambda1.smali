.class public final synthetic Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(JZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$0:J

    iput-boolean p3, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p4, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-wide v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$0:J

    iget-boolean p0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda1;->f$1:Z

    .line 1
    sget-object v2, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    .line 2
    iget-object v3, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v4, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    .line 7
    iget-object v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v2

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/jms/BgJobTransferService;->getJobRefCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 10
    iget-object v6, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v6, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    :goto_1
    if-eqz p0, :cond_1

    .line 12
    invoke-interface {v5, v0, v1}, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;->onJobTransferComplete(J)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v5, v0, v1}, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;->onJobTransferError(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v2

    throw p0

    .line 15
    :cond_2
    monitor-exit v3

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
