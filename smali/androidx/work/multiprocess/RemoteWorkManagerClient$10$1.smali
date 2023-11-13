.class public final Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$10;

.field public final synthetic val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient$10;Landroidx/work/multiprocess/IWorkManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$10;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;->val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$10;

    iget-object v1, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10;->val$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;->val$iWorkManager:Landroidx/work/multiprocess/IWorkManagerImpl;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v1, v2, v0}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Unable to execute"

    invoke-virtual {v1, v2, v4, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10$1;->this$1:Landroidx/work/multiprocess/RemoteWorkManagerClient$10;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10;->val$callback:Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {p0, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
