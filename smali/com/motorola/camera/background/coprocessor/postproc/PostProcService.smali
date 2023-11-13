.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;
.super Lcom/motorola/camera/background/common/ServiceBase;
.source "PostProcService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;",
        "Lcom/motorola/camera/background/common/ServiceBase;",
        "<init>",
        "()V",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public mImplIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/background/common/ServiceBase;-><init>()V

    .line 2
    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onCreate()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mBinding:Landroid/os/IBinder;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ServiceBase;->getMBinding()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    const-string v1, "asInterface(mBinding)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;->mImplIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/background/common/ServiceBase;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/background/common/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    iget p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mStartMode:I

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcService;->mImplIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->deinitialize()V

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/background/common/ServiceBase;->mAllowRebind:Z

    return p0

    :cond_0
    const-string p0, "mImplIntf"

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
