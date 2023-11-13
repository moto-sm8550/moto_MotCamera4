.class public final Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;
.super Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;
.source "PostProcServiceConnection.kt"

# interfaces
.implements Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final START_COPROC_TIMEOUT:J

.field public final clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public final context:Landroid/content/Context;

.field public final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mBindingPending:Z

.field public mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

.field public mServiceBound:Z

.field public mServiceClientId:Ljava/lang/Integer;

.field public final mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

.field public mStartRefCount:I

.field public final mlModels:Landroid/os/Bundle;

.field public final parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

.field public final product:Ljava/lang/String;

.field public final serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

.field public final staticConfig:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljava/lang/String;[BLandroid/os/Bundle;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIdentity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 5
    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 6
    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 7
    iput-object p6, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->product:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->staticConfig:[B

    .line 9
    iput-object p8, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mlModels:Landroid/os/Bundle;

    const/4 p1, -0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    const-wide/16 p1, 0x1388

    .line 11
    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->START_COPROC_TIMEOUT:J

    .line 12
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    new-instance p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "Exception cleaning up connection"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    return-object p0
.end method

.method public final isMsgTypeSupported(Lcom/motorola/camera/background/common/msg/MsgType;)Z
    .locals 1

    const-string p0, "msgType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public final isReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    return p0
.end method

.method public final start()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez v1, :cond_2

    .line 4
    iput-boolean v3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    .line 5
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mCoproReady:Ljava/util/concurrent/CountDownLatch;

    .line 7
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    const-class v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    move v2, v1

    .line 9
    :cond_0
    iget v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 10
    :cond_2
    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_4

    .line 11
    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->START_COPROC_TIMEOUT:J

    .line 12
    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->getMCoproReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    :cond_4
    return v2

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    throw p0
.end method

.method public final stop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    .line 3
    iget v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    if-gtz v2, :cond_6

    .line 4
    iput v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I

    .line 5
    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    invoke-interface {v2, v3}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    :try_start_2
    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PostProcService unregisterClient() exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_1
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->deinitialize()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 9
    :try_start_4
    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BgService Message deinitialize() exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :cond_2
    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection$mServiceConnection$1;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 11
    :try_start_6
    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unbindService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    .line 13
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    const-class v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    check-cast p0, Landroid/app/ActivityManager;

    .line 16
    sget-object v1, Lcom/motorola/camera/background/common/Utils;->Companion:Lcom/motorola/camera/background/common/Utils$Companion;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/background/common/Utils$Companion;->killProcess(Landroid/app/ActivityManager;)V

    goto :goto_3

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
