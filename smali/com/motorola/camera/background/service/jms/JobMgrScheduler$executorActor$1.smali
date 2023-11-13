.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;
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
        "Lcom/motorola/camera/background/service/jms/ExecutorMsg;",
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
    value = "SMAP\nJobMgrScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,742:1\n103#2:743\n80#2,6:744\n104#2,2:750\n90#2:752\n86#2,4:753\n*S KotlinDebug\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1\n*L\n169#1:743\n169#1:744,6\n169#1:750,2\n169#1:752\n169#1:753,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$executorActor$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x2ee,
        0xb0,
        0xc2,
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/ChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

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
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

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

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v10, p1

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/channels/ActorScope;

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 5
    :try_start_4
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v9

    :goto_1
    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-interface {v9, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    :goto_2
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    .line 6
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    if-eqz v11, :cond_9

    .line 7
    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    .line 8
    iget v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->callerId:I

    .line 9
    move-object v12, v10

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    .line 10
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 11
    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v11, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v16, v9

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v10, v16

    :goto_3
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_8

    .line 12
    sget-object v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Invalid msg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    move-object v2, v10

    goto :goto_1

    .line 14
    :cond_9
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;

    if-eqz v11, :cond_a

    goto/16 :goto_6

    .line 15
    :cond_a
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    if-eqz v11, :cond_c

    .line 16
    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    .line 17
    iget v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->callerId:I

    .line 18
    move-object v12, v10

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    .line 19
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 20
    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v11, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_b

    return-object v1

    :cond_b
    move-object/from16 v16, v9

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v10, v16

    :goto_5
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_8

    .line 21
    sget-object v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 22
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Request msg invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 23
    :cond_c
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    if-eqz v11, :cond_d

    goto :goto_6

    .line 24
    :cond_d
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    if-eqz v11, :cond_10

    .line 25
    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    .line 26
    iget-object v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    .line 27
    iget-object v12, v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 28
    iget-wide v12, v12, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 29
    iget-object v14, v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v15, 0x0

    if-eqz v14, :cond_e

    .line 30
    invoke-virtual {v14, v12, v13}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v14

    if-ne v14, v7, :cond_e

    move v15, v7

    :cond_e
    if-eqz v15, :cond_f

    .line 31
    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    .line 32
    iget v10, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->callerId:I

    .line 33
    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne v10, v1, :cond_0

    return-object v1

    .line 34
    :cond_f
    sget-object v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Results message unknown result task id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v11, v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 37
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 38
    :cond_10
    instance-of v11, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$Done;

    if-nez v11, :cond_11

    :goto_6
    goto/16 :goto_0

    .line 39
    :cond_11
    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$Done;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    :cond_12
    invoke-static {v8, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 41
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v9, v8

    .line 42
    :goto_7
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 43
    invoke-static {v9, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v2
.end method
