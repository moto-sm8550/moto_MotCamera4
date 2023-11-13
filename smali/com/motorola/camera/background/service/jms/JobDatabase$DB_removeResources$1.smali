.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;
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
    c = "com.motorola.camera.background.service.jms.JobDatabase$DB_removeResources$1"
    f = "JobDatabase.kt"
    l = {
        0x1c6,
        0x1dc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $key:J

.field public final synthetic $removeEntryOnly:Z

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "JZ",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iput-boolean p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iget-boolean v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v6, p2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iget-boolean v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 6
    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    invoke-virtual {p1, v5, v6, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/Transaction;

    if-eqz p1, :cond_8

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 11
    iget-boolean v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    if-nez v5, :cond_4

    .line 12
    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    .line 13
    sget-object v7, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    invoke-virtual {v7, v1, v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->deleteTagData(Landroid/content/Context;J)I

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 16
    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    .line 17
    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;

    const/4 v7, 0x0

    invoke-direct {v3, v1, v5, v6, v7}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 19
    check-cast p1, Lkotlinx/coroutines/DeferredCoroutine;

    .line 20
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    if-lez p1, :cond_7

    move v2, v4

    :cond_7
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    .line 26
    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    .line 27
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 28
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
