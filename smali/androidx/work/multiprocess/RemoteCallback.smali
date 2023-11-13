.class public Landroidx/work/multiprocess/RemoteCallback;
.super Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;
    }
.end annotation


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "[B>;"
        }
    .end annotation
.end field

.field public final mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    .line 3
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 4
    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 5
    new-instance v0, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;-><init>(Landroidx/work/multiprocess/RemoteCallback;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 3
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    return-void
.end method

.method public onRequestCompleted()V
    .locals 0

    return-void
.end method

.method public final onSuccess([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    return-void
.end method

.method public final setBinder(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 4
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :catch_1
    :cond_0
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    :goto_0
    return-void
.end method
