.class public final Landroidx/work/multiprocess/RemoteWorkManagerImpl$7;
.super Landroidx/work/multiprocess/ListenableCallback;
.source "RemoteWorkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/multiprocess/ListenableCallback<",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/work/multiprocess/ListenableCallback;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public final toByteArray(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Ljava/util/List;)V

    .line 3
    invoke-static {p0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0
.end method
