.class public abstract Lkotlinx/coroutines/internal/OpDescriptor;
.super Ljava/lang/Object;
.source "Atomic.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation
.end method

.method public final isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/OpDescriptor;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/OpDescriptor;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/AtomicOp;->getOpSequence()J

    move-result-wide v1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/AtomicOp;->getOpSequence()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-gez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public abstract perform(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
