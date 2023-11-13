.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionRepository.kt"

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
    c = "com.motorola.camera.background.service.jms.db.TransactionRepository$insert$1"
    f = "TransactionRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $id:J

.field public final synthetic $transaction:Lcom/motorola/camera/background/service/jms/Transaction;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/Transaction;JLcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            "J",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

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

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;-><init>(Lcom/motorola/camera/background/service/jms/Transaction;JLcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;-><init>(Lcom/motorola/camera/background/service/jms/Transaction;JLcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    .line 3
    iput-wide v0, p1, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao;->insert(Lcom/motorola/camera/background/service/jms/Transaction;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/cardview/R$dimen;->boxLong(J)Ljava/lang/Long;

    .line 7
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
