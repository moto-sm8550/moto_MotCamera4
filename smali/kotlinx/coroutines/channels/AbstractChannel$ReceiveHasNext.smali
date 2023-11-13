.class public final Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;
.super Lkotlinx/coroutines/channels/Receive;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiveHasNext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/Receive<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1132:1\n1#2:1133\n*E\n"
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final iterator:Lkotlinx/coroutines/channels/AbstractChannel$Itr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/AbstractChannel$Itr<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel$Itr;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/AbstractChannel$Itr<",
            "TE;>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Receive;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final completeResumeReceive(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    .line 2
    iput-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume()V

    return-void
.end method

.method public final resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    .line 6
    iput-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$Itr;->result:Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume()V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReceiveHasNext@"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
            ")",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;->iterator:Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$Itr;->channel:Lkotlinx/coroutines/channels/AbstractChannel;

    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 3
    new-instance v4, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v4, p0, p1, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2, v4}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 5
    :cond_1
    sget-object p0, Landroidx/core/content/PermissionChecker;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p0
.end method
