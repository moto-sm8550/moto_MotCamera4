.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;
.super Ljava/lang/Object;
.source "JobMgrServiceImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WatchDogTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->numPendingJobs()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 3
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "JobMgrService: WatchDog triggered - killing JMS"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$WatchDogTask;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v0, 0x1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
