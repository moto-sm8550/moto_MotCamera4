.class public final Landroidx/work/multiprocess/RemoteClientUtils;
.super Ljava/lang/Object;
.source "RemoteClientUtils.java"


# static fields
.field public static final sVoidMapper:Landroidx/work/multiprocess/RemoteClientUtils$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "[B",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/RemoteClientUtils$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/RemoteClientUtils$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/RemoteClientUtils;->sVoidMapper:Landroidx/work/multiprocess/RemoteClientUtils$1;

    return-void
.end method

.method public static map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/arch/core/util/Function<",
            "TI;TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 2
    new-instance v1, Landroidx/work/multiprocess/RemoteClientUtils$2;

    invoke-direct {v1, p0, p1, v0}, Landroidx/work/multiprocess/RemoteClientUtils$2;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/work/impl/utils/futures/SettableFuture;)V

    check-cast p0, Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {p0, v1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
