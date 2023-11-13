.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ActorScope<",
        "Lcom/motorola/camera/background/service/jms/WorkerMsg;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobMgrScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,742:1\n103#2:743\n80#2,6:744\n104#2,2:750\n90#2:752\n86#2,4:753\n*S KotlinDebug\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1\n*L\n340#1:743\n340#1:744,6\n340#1:750,2\n340#1:752\n340#1:753,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$createWorkerActor$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x2ee,
        0x162,
        0x172
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/ChannelIterator;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

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
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    move-object p1, v6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/channels/ActorScope;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 5
    :try_start_2
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    :goto_2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v6

    move-object v6, p1

    move-object p1, v11

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v7, 0x0

    if-eqz p1, :cond_9

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg;

    .line 6
    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    if-eqz v8, :cond_6

    .line 7
    sget-object v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    move-object v8, p1

    check-cast v8, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    .line 8
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 9
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    .line 10
    invoke-virtual {v7, v8}, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;->fromId(Ljava/lang/Integer;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 11
    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    .line 12
    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 13
    invoke-virtual {v6, v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->workerProcessControlMsg(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-result-object v7

    .line 14
    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p1, :cond_2

    .line 16
    new-instance v8, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;

    invoke-direct {v8, v7}, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    iput-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 17
    :cond_6
    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    if-eqz v8, :cond_7

    .line 18
    sget-object v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    move-object v8, p1

    check-cast v8, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    .line 19
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 20
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v7, v8}, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;->fromId(Ljava/lang/Integer;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 22
    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    .line 23
    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 24
    invoke-virtual {v6, v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->workerProcessRequest(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-result-object v7

    .line 25
    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p1, :cond_2

    .line 27
    new-instance v8, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    invoke-direct {v8, v7}, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    iput-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 28
    :cond_7
    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    if-eqz v8, :cond_2

    .line 29
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-class v10, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Calling ackDone"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    .line 32
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    .line 33
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->complete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 34
    :cond_9
    invoke-static {v5, v7}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 35
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 36
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 37
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p1
.end method
