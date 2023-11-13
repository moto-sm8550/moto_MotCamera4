.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "JobMgrServiceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MsgHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    const-string/jumbo v1, "type"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "taskId"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 6
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processCtlMsg: message processing not allowed. Either not initialized or shutting down."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 12
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 13
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCtlMsg: unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 16
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;

    .line 17
    invoke-virtual {v0, v1, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    .line 18
    iget v0, v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v1

    if-nez v1, :cond_3

    .line 20
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 21
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processJob: Coprocessor not registered"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    .line 24
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v10

    .line 25
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 26
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/LinkedHashMap;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 28
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v6, v2

    goto :goto_0

    :cond_4
    move-object v6, v14

    .line 29
    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    new-instance v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 32
    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 34
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, v15

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 35
    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    .line 36
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {v1, v0, v2, v15, v14}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_1
    return-object v13
.end method

.method public final processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v1, "type"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "taskId"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 6
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "processMsg: message processing not allowed. Either not initialized or shutting down."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v15, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 12
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 13
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMsg: unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_1
    :pswitch_0
    new-instance v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-object v1, v7

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {v1, v0, v13, v7, v15}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_0
    :pswitch_1
    move-object/from16 v16, v14

    goto/16 :goto_6

    .line 17
    :cond_2
    :pswitch_2
    sget-object v1, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 18
    iget-object v5, v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    .line 19
    iget v7, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 21
    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 22
    iget-object v5, v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    .line 23
    iget v8, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v5, :cond_4

    .line 25
    iget-object v5, v5, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v5, :cond_4

    .line 26
    sget-object v8, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

    if-eq v5, v8, :cond_3

    if-ne v5, v1, :cond_4

    :cond_3
    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_1
    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v7

    .line 27
    :goto_2
    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 28
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    .line 29
    iget v9, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 31
    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 32
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    .line 33
    iget v9, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 34
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v8, :cond_7

    .line 35
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v8, :cond_7

    .line 36
    sget-object v9, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

    if-eq v8, v9, :cond_6

    if-ne v8, v1, :cond_7

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v7

    :goto_3
    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v7

    .line 37
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v1, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz v5, :cond_b

    if-nez v2, :cond_9

    goto/16 :goto_7

    .line 38
    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 39
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    .line 40
    iget v5, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v2, :cond_a

    .line 42
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v7, v2

    goto :goto_5

    :cond_a
    move-object v7, v15

    .line 43
    :goto_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v10

    .line 45
    sget-object v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 46
    sget-object v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processJob: callerId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " taskId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " coProc="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " c="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 49
    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/LinkedHashMap;

    .line 50
    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 51
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    .line 53
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 54
    invoke-virtual {v2}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    .line 55
    new-instance v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    .line 57
    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v16

    const/16 v17, 0x0

    move-object v1, v12

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v14

    move-object v14, v12

    move/from16 v12, v17

    .line 60
    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    .line 61
    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v14, v16

    goto :goto_8

    .line 62
    :cond_b
    :goto_7
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Companion;

    .line 63
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "processJob: clients and/or coprocessor not registered clientSrc="

    .line 64
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    iget v3, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientDst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v3, v4, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", coProc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_8
    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
