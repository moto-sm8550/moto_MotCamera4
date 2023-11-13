.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$callWorker$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x2de,
        0x2e1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

.field public final synthetic $job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/common/msg/MsgType;",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler;",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;-><init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;-><init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v4, "mWorkerActor"

    const/4 v5, 0x0

    if-ne p1, v1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 6
    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz v1, :cond_3

    .line 7
    new-instance v2, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    .line 9
    invoke-direct {v2, v4, p1}, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlinx/coroutines/channels/SendChannel;)V

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    invoke-interface {v1, v2, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 11
    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz v1, :cond_6

    .line 12
    new-instance v3, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    .line 14
    invoke-direct {v3, v4, p1}, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlinx/coroutines/channels/SendChannel;)V

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    .line 15
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 16
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method
