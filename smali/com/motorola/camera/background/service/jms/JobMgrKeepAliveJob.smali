.class public final Lcom/motorola/camera/background/service/jms/JobMgrKeepAliveJob;
.super Landroidx/work/Worker;
.source "JobMgrKeepAliveJob.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/JobMgrKeepAliveJob;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 3
    const-class v2, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "com.motorola.camera3.EXTRA_KEEP_ALIVE_START"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Retry;-><init>()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    :goto_0
    return-object p0
.end method
