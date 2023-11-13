.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;
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
    c = "com.motorola.camera.background.service.jms.db.TransactionRepository$updateMsg$1"
    f = "TransactionRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callerId:I

.field public final synthetic $key:J

.field public final synthetic $msg:Ljava/lang/String;

.field public final synthetic $msgType:I

.field public final synthetic $returnCode:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository;",
            "JII",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iput p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iput p5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iput-object p6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iput p7, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    invoke-direct {p0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iget v5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iget v7, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v8, p2

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iget v5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iget v7, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iget v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iget v6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    invoke-interface/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/TransactionDao;->updateMsg(JIILjava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Landroidx/cardview/R$dimen;->boxInt(I)Ljava/lang/Integer;

    .line 5
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
