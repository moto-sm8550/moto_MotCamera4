.class public final Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;
.super Lkotlinx/coroutines/internal/AtomicOp;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtomicSelectOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/AtomicOp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,658:1\n1#2:659\n155#3,2:660\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp\n*L\n597#1:660,2\n*E\n"
.end annotation


# instance fields
.field public final desc:Lkotlinx/coroutines/internal/AtomicDesc;

.field public final impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectBuilderImpl<",
            "*>;"
        }
    .end annotation
.end field

.field public final opSequence:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectBuilderImpl<",
            "*>;",
            "Lkotlinx/coroutines/internal/AtomicDesc;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicOp;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    .line 4
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->selectOpSequenceNumber:Lkotlinx/coroutines/selects/SeqNumber;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lkotlinx/coroutines/selects/SeqNumber;->number$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->opSequence:J

    .line 8
    iput-object p0, p2, Lkotlinx/coroutines/internal/AtomicDesc;->atomicOp:Lkotlinx/coroutines/internal/AtomicOp;

    return-void
.end method


# virtual methods
.method public final complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 1
    :cond_1
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    :goto_1
    iget-object v3, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v4, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v4, v3, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_2

    move p1, v0

    :goto_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 4
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->doAfterSelect()V

    .line 5
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/internal/AtomicDesc;->complete(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V

    return-void
.end method

.method public final getOpSequence()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->opSequence:J

    return-wide v0
.end method

.method public final prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p1, :cond_7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    instance-of v3, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v3, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v3, :cond_5

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v4, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_3
    invoke-virtual {v4, v1, v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    goto :goto_2

    .line 6
    :cond_5
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    :goto_2
    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    return-object v2

    .line 7
    :cond_7
    :goto_3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/AtomicDesc;->prepare(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    if-nez p1, :cond_8

    .line 8
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->impl:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    :goto_4
    invoke-virtual {v1, p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_8

    goto :goto_4

    .line 9
    :cond_8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AtomicSelectOp(sequence="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->opSequence:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
