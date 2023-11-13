.class public final Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;
.super Ljava/lang/Object;
.source "PostProcServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljava/lang/String;[BLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iBinder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez v1, :cond_6

    .line 5
    iget-boolean v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    if-eqz v1, :cond_6

    .line 6
    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 8
    :try_start_1
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->product:Ljava/lang/String;

    .line 9
    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->staticConfig:[B

    .line 10
    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mlModels:Landroid/os/Bundle;

    .line 11
    invoke-interface {p2, v2, v3, v4}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 12
    :try_start_2
    instance-of v2, p2, Landroid/os/RemoteException;

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    .line 13
    :cond_0
    instance-of v2, p2, Ljava/io/IOException;

    :goto_0
    if-eqz v2, :cond_1

    .line 14
    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 17
    iget-object v4, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initialize() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 19
    :cond_1
    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :cond_2
    :goto_1
    :try_start_3
    iget-object p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz p2, :cond_3

    .line 22
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mClientIntf:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;

    .line 23
    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 24
    iget v4, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 25
    iget-object v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-interface {p2, v2, v4, v3}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 28
    :goto_2
    iput-object p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    .line 29
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-eqz p2, :cond_4

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    :cond_4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 31
    :try_start_4
    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 34
    iget-object v4, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " registerClient() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_3
    iput-boolean v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    .line 38
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->getMCoproReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_5

    .line 39
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->getMCoproReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    .line 40
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 42
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 43
    iget p0, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 44
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :try_start_5
    iget-object p2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-wide/16 v1, -0x1

    invoke-virtual {p2, p0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(Ljava/lang/Integer;J)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    :try_start_6
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 47
    :cond_6
    iget-boolean p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    if-nez p2, :cond_7

    .line 48
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz p1, :cond_7

    .line 49
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 50
    :cond_7
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    monitor-enter p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    .line 6
    iput v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
