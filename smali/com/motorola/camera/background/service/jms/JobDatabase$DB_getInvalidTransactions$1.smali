.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobDatabase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobDatabase$DB_getInvalidTransactions$1"
    f = "JobDatabase.kt"
    l = {
        0x200
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $invalidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $timeStamp:J

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "J",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 6
    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->label:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->selectAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/Transaction;

    .line 10
    iget v1, v0, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    const/4 v3, 0x0

    if-gtz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    .line 11
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    sget-object v7, Lcom/motorola/camera/background/service/jms/JobDatabase;->TAG:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-wide v7, v0, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    cmp-long v4, v7, v5

    if-gez v4, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v3

    .line 14
    :goto_3
    iget-boolean v5, v0, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    move v3, v2

    :cond_7
    if-eqz v3, :cond_3

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 16
    iget-wide v3, v0, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    .line 17
    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
