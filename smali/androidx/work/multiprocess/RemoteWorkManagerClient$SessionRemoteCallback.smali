.class public final Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;
.super Landroidx/work/multiprocess/RemoteCallback;
.source "RemoteWorkManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionRemoteCallback"
.end annotation


# instance fields
.field public final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    return-void
.end method


# virtual methods
.method public final onRequestCompleted()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    .line 4
    iget-wide v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTimeout:J

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
