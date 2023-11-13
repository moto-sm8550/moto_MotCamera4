.class public final Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
.super Lkotlinx/coroutines/internal/AtomicOp;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnlockOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/AtomicOp<",
        "Lkotlinx/coroutines/sync/MutexImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final queue:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicOp;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    return-void
.end method


# virtual methods
.method public final complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Landroidx/preference/R$styleable;->EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 3
    :goto_0
    sget-object v0, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v0, p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    :goto_1
    return-void
.end method

.method public final prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->queue:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 4
    :cond_1
    sget-object p0, Landroidx/preference/R$styleable;->UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;

    :goto_1
    return-object p0
.end method
