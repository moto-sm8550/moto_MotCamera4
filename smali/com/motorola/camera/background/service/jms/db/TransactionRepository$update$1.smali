.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;
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
    c = "com.motorola.camera.background.service.jms.db.TransactionRepository$update$1"
    f = "TransactionRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $file:Lcom/motorola/camera/background/service/jms/Transaction;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lcom/motorola/camera/background/service/jms/Transaction;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository;",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/Transaction;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/Transaction;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lcom/motorola/camera/background/service/jms/Transaction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/Transaction;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lcom/motorola/camera/background/service/jms/Transaction;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;->$file:Lcom/motorola/camera/background/service/jms/Transaction;

    invoke-interface {p1, p0}, Lcom/motorola/camera/background/service/jms/TransactionDao;->update(Lcom/motorola/camera/background/service/jms/Transaction;)I

    move-result p0

    invoke-static {p0}, Landroidx/cardview/R$dimen;->boxInt(I)Ljava/lang/Integer;

    .line 5
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
