.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.db.TransactionRepository$count$2"
    f = "TransactionRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$count$2;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/motorola/camera/background/service/jms/TransactionDao;->count()I

    move-result p0

    .line 5
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
