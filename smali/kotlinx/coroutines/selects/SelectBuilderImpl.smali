.class public final Lkotlinx/coroutines/selects/SelectBuilderImpl;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "Lkotlinx/coroutines/selects/SelectInstance<",
        "TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "TR;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 7 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 8 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,658:1\n278#1:662\n279#1:664\n280#1,7:667\n287#1,5:678\n278#1:683\n279#1:685\n280#1,3:688\n283#1,9:693\n1#2:659\n1#2:663\n1#2:684\n155#3,2:660\n155#3,2:665\n155#3,2:686\n155#3,2:704\n155#3,2:712\n219#4:674\n220#4:677\n57#5,2:675\n57#5,2:691\n167#5:703\n13#6:702\n645#7,6:706\n17#8:714\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl\n*L\n296#1:662\n296#1:664\n296#1:667,7\n296#1:678,5\n307#1:683\n307#1:685\n307#1:688,3\n307#1:693,9\n296#1:663\n307#1:684\n279#1:660,2\n296#1:665,2\n307#1:686,2\n362#1:704,2\n484#1:712,2\n298#1:674\n298#1:677\n298#1:675,2\n307#1:691,2\n356#1:703\n330#1:702\n384#1:706,6\n645#1:714\n*E\n"
.end annotation


# static fields
.field public static final synthetic _result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _result:Ljava/lang/Object;

.field public volatile synthetic _state:Ljava/lang/Object;

.field public final uCont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_result"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 3
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .line 4
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    return-void
.end method

.method public final doAfterSelect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    :goto_1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .line 6
    iget-object v1, v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;->handle:Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCompletion()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/Job;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    new-instance v5, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;

    invoke-direct {v5, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 4
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 8
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_5

    .line 9
    sget-object v3, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v3, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    return-object v0

    .line 10
    :cond_4
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 11
    :cond_5
    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, p0, :cond_7

    .line 12
    instance-of p0, v1, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p0, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw p0

    .line 13
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleBuilderException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final isSelected()Z
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final resumeSelectWithException(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 3
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v4, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object v5, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_2

    .line 5
    :cond_3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_6

    sget-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    :cond_4
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v1, :cond_4

    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p0}, Landroidx/savedstate/R$id;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 7
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    sget-object v5, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_2

    .line 5
    :cond_3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_7

    sget-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    :cond_4
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :goto_1
    if-eqz v2, :cond_0

    .line 6
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_6

    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_6
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 10
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SelectInstance(state="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trySelect()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelectOther()Ljava/lang/Object;

    move-result-object p0

    .line 2
    sget-object v0, Landroidx/core/content/PermissionChecker;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected trySelectIdempotent result "

    .line 4
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final trySelectOther()Ljava/lang/Object;
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    sget-object v5, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v5, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->doAfterSelect()V

    .line 5
    sget-object p0, Landroidx/core/content/PermissionChecker;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    .line 6
    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_4

    .line 7
    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v2
.end method
