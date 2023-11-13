.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;
.super Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;
.source "SaveImageServiceConnection.kt"

# interfaces
.implements Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;


# instance fields
.field public bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

.field public final context:Landroid/content/Context;

.field public final pService:Ljms/IJobMgrService;

.field public final serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Ljms/IJobMgrService;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIdentity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->context:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->pService:Ljms/IJobMgrService;

    return-void
.end method


# virtual methods
.method public final getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    const/4 p0, 0x0

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

.method public final start()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->pService:Ljms/IJobMgrService;

    .line 5
    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->saveImgSvcHndler:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$1;

    .line 6
    iget-object v4, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    .line 7
    iget v5, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 9
    invoke-interface {v2, v3, v4, v5, v0}, Ljms/IJobMgrService;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 11
    iput-object v0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 12
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final stop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->connectionContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    const-string v4, "Exception unbinding service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    return-void
.end method
