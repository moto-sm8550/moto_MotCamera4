.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrScheduler.kt"

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
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$scheduleJobRequest$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x27c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callerId:I

.field public final synthetic $jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iput p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$callerId:I

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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$callerId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$callerId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;ILkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->label:I

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
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$callerId:I

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->$jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
