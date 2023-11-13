.class public final Lcom/motorola/camera/background/service/jms/JobMgrService;
.super Lcom/motorola/camera/background/common/ServiceBase;
.source "JobMgrService.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobMgrService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrService.kt\ncom/motorola/camera/background/service/jms/JobMgrService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/JobMgrService;",
        "Lcom/motorola/camera/background/common/ServiceBase;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "ProgressUpdates",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBindRefCount:I

.field public mDefaultNotification:Ljava/lang/String;

.field public mImplIntf:Ljms/IJobMgrService;

.field public mNotificationBuilder:Landroid/app/Notification$Builder;

.field public final mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

.field public final mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationState:I

.field public final mProgressUpdateChannel:Lkotlinx/coroutines/channels/AbstractChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
            ">;"
        }
    .end annotation
.end field

.field public restartedByAndroid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/background/common/ServiceBase;-><init>()V

    .line 2
    invoke-static {}, Landroidx/preference/R$id;->Job$default()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/JobImpl;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    const/16 v0, 0x32

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1}, Landroidx/appcompat/R$style;->Channel$default(III)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    .line 10
    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method


# virtual methods
.method public final _stopSelf(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const-string v1, "_stopSelf() mBindRefCount="

    .line 2
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", jobs remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v2

    invoke-interface {v2}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object p1

    invoke-interface {p1}, Ljms/IJobMgrService;->deinitialize()V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    const/4 v0, 0x1

    .line 10
    invoke-static {p1}, Landroidx/preference/R$id;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    return-object p0
.end method

.method public final getMImplIntf()Ljms/IJobMgrService;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mImplIntf"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getMNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mNotificationBuilder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onCreate()V

    .line 2
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrService;)V

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mBinding:Landroid/os/IBinder;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljms/IJobMgrService$Stub;->asInterface(Landroid/os/IBinder;)Ljms/IJobMgrService;

    move-result-object v0

    const-string v1, "asInterface(mBinding)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    const v0, 0x7f110422

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.statu\u2026ding_process_img_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1100d2

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.desc_\u2026_fg_service_notification)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mDefaultNotification:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/shared/NotificationHelper;->buildCameraForegroundNotification(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v0, "notification"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 14
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v2, v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->createBaseDir(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v0

    invoke-interface {v0}, Ljms/IJobMgrService;->cleanUp()Z

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.motorola.camera3.EXTRA_KEEP_ALIVE_START"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    .line 3
    :goto_2
    iput-boolean v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand: flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " startId="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " keepAlive="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " hasIntent="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    .line 7
    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationCoRoutine:Lkotlinx/coroutines/JobImpl;

    .line 9
    new-instance p2, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x2

    invoke-static {p0, p1, v0, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 10
    :cond_5
    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mBindRefCount:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object v0

    invoke-interface {v0}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    return p0
.end method

.method public final startForegroundService()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const-string v1, "App not allowed to update service to foreground priority. Will continue as background service"

    .line 4
    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
