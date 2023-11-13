.class public Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.super Ljava/lang/Object;
.source "StateMachineBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateMachineBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateMachineBase.kt\ncom/motorola/camera/background/service/jms/statemachines/StateMachineBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1206#2,2:176\n1236#2,4:178\n*S KotlinDebug\n*F\n+ 1 StateMachineBase.kt\ncom/motorola/camera/background/service/jms/statemachines/StateMachineBase\n*L\n85#1:176,2\n85#1:178,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;

.field public static final reverseStateMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public mProcessOwner:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner;

.field public final stateMachine:Lcom/tinder/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;

    .line 3
    new-instance v2, Lkotlin/Pair;

    const-string v3, "Unknown"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 4
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;

    .line 5
    new-instance v2, Lkotlin/Pair;

    const-string v3, "Init"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 6
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    .line 7
    new-instance v2, Lkotlin/Pair;

    const-string v3, "InQueue"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 8
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    .line 9
    new-instance v2, Lkotlin/Pair;

    const-string v3, "JmsTxCoProcProcessJob"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 10
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;

    .line 11
    new-instance v2, Lkotlin/Pair;

    const-string v3, "JmsRxCoProcJobComplete"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 12
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    .line 13
    new-instance v2, Lkotlin/Pair;

    const-string v3, "JmsTxDstClientProcessJob"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 14
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    .line 15
    new-instance v2, Lkotlin/Pair;

    const-string v3, "JmsRxDstClientJobComplete"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aput-object v2, v0, v1

    .line 16
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;

    .line 17
    new-instance v2, Lkotlin/Pair;

    const-string v3, "JmsTxSrcClientJobComplete"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    aput-object v2, v0, v1

    .line 18
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    .line 19
    new-instance v2, Lkotlin/Pair;

    const-string v3, "CompleteJob"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 20
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;

    .line 21
    new-instance v2, Lkotlin/Pair;

    const-string v3, "RemoveJob"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x9

    aput-object v2, v0, v1

    .line 22
    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    .line 23
    new-instance v2, Lkotlin/Pair;

    const-string v3, "CancelJob"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xa

    aput-object v2, v0, v1

    .line 24
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->stateMap:Ljava/util/Map;

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 27
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 0

    const-string p2, "jmsIntf"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 2
    sget-object p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$JobMgr;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$JobMgr;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner;

    .line 3
    sget-object p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$stateMachine$1;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$stateMachine$1;

    invoke-static {p1}, Lcom/tinder/StateMachine;->create(Lkotlin/jvm/functions/Function1;)Lcom/tinder/StateMachine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->stateMachine:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V
    .locals 11

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->command:Lcom/motorola/camera/background/common/msg/MsgParameters;

    .line 4
    iget v1, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    .line 5
    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->calleeId:I

    .line 6
    invoke-virtual {p0, v1, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V

    goto/16 :goto_b

    .line 7
    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJobComplete;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 8
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 11
    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    goto/16 :goto_b

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    if-eqz v0, :cond_2

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 15
    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    goto/16 :goto_b

    .line 16
    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    if-eqz v0, :cond_3

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->ackCommand:Lcom/motorola/camera/background/common/msg/MsgParameters;

    .line 19
    iget v2, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    .line 20
    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->calleeId:I

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getClientIntf(I)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 23
    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 24
    iget-object v4, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 25
    iget-object v5, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    .line 26
    iget-object v6, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    .line 27
    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception p0

    .line 28
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callProcessCtlMsg, dead object for remote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 29
    :cond_3
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    if-eqz v0, :cond_15

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    .line 31
    iget-wide v2, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    .line 32
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "taskId"

    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_4

    .line 36
    monitor-enter p1

    .line 37
    :try_start_1
    invoke-static {p1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 38
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->pendingJobCount()I

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->pendingJobCount()I

    move-result p1

    if-nez p1, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_8

    .line 40
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 41
    new-instance v4, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;

    invoke-direct {v4, v3, p1, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 42
    iget p1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    if-eqz p1, :cond_12

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_9

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 45
    invoke-virtual {p1, v3, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    .line 46
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p1, :cond_a

    .line 47
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    goto :goto_4

    :cond_a
    move p1, v0

    :goto_4
    if-nez p1, :cond_12

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    if-eqz p1, :cond_12

    .line 49
    sget-object v3, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 51
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 52
    sget-object v5, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "id"

    .line 53
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 54
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_b
    if-nez v1, :cond_c

    goto :goto_5

    .line 55
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_d

    :goto_5
    move v1, v2

    goto :goto_6

    :cond_d
    move v1, v0

    :goto_6
    if-nez v1, :cond_e

    .line 56
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "id"

    const-wide/16 v5, 0x0

    .line 57
    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v5

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    if-eqz v4, :cond_f

    .line 59
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 61
    invoke-virtual {v3, p1, v4, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->deleteData(Landroid/content/Context;J)I

    goto :goto_8

    .line 62
    :cond_10
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 63
    invoke-virtual {v1, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 64
    new-instance v1, Lkotlin/io/FileTreeWalk;

    invoke-direct {v1, p1, v2}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;I)V

    .line 65
    new-instance p1, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {p1, v1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 66
    :cond_11
    :goto_9
    invoke-virtual {p1}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lkotlin/collections/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 68
    :cond_12
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_13

    .line 69
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    goto :goto_a

    :cond_13
    move p1, v0

    :goto_a
    if-eqz p1, :cond_15

    .line 70
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    .line 71
    :cond_14
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p0, :cond_15

    .line 72
    monitor-enter p0

    .line 73
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    monitor-exit p0

    goto :goto_b

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_15
    :goto_b
    return-void

    .line 75
    :cond_16
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJobComplete;

    throw v1
.end method
