.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobDatabase.kt\ncom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,563:1\n17#2,6:564\n*S KotlinDebug\n*F\n+ 1 JobDatabase.kt\ncom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1\n*L\n209#1:564,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobDatabase$DB_updateJob$1"
    f = "JobDatabase.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $key:J

.field public final synthetic $retryCount:I

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public I$0:I

.field public J$0:J

.field public L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobDatabase;",
            "JI",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iput p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v6, p2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->I$0:I

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->J$0:J

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v0

    move-wide v5, v3

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
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$key:J

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$retryCount:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    iget-object v6, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-wide v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->J$0:J

    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->I$0:I

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;->label:I

    invoke-virtual {v6, v3, v4, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move v7, v1

    move-object v1, v5

    move-wide v5, v3

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 8
    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/Transaction;

    if-eqz p1, :cond_3

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateRetryCount$1;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateRetryCount$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, p1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 12
    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
