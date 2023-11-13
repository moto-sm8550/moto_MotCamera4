.class public final Lcom/motorola/camera/background/service/jms/JobDatabase;
.super Ljava/lang/Object;
.source "JobDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/JobDatabase$Job;
    }
.end annotation


# static fields
.field public static final DEFAULT_NUM_RETRIES:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public final mJobMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/background/service/jms/JobDatabase$Job;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2
    sput v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V
    .locals 1

    const-string v0, "jmsIntf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 2
    new-instance p2, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-direct {p2, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    .locals 9

    const/4 v4, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 3
    new-instance v8, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 4
    iget-boolean p0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method


# virtual methods
.method public final DB_getJob(J)Lcom/motorola/camera/background/service/jms/Transaction;
    .locals 8

    .line 1
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    new-instance v7, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/coroutines/Continuation;)V

    invoke-static {v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 3
    iget-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/Transaction;

    return-object p0
.end method

.method public final DB_removeInvalidJobs(J)V
    .locals 13

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/Transaction;

    .line 5
    sget-object v1, Lcom/motorola/camera/background/service/jms/Transaction;->Companion:Lcom/motorola/camera/background/service/jms/Transaction$Companion;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/Transaction$Companion;->getMsgInitial(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 7
    sget-object v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 8
    sget-object v9, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 9
    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/Transaction$Companion;->getTaskId(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    .line 10
    sget-object v12, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    .line 11
    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 12
    iget v8, v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    const-string v11, "CANCEL"

    move-object v7, v1

    move-object v10, v0

    .line 13
    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 14
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 15
    iget v2, v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 16
    iget v0, v0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    .line 17
    invoke-virtual {p1, v2, v0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "earlyJobTermination: message type not supported ("

    .line 19
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/background/service/jms/Transaction;

    .line 23
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    .line 24
    invoke-static {p0, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final DB_updateMarkForDelete(J)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v6, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 11

    move-object v0, p4

    const-string v1, "msgType"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "returnCode"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 1
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    .line 2
    iget v5, v0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    if-nez p5, :cond_0

    const-string v0, ""

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p5

    .line 3
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v7

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v9, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v10, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v9, v0, v2, v10, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion;

    .line 2
    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, "Unknown"

    :cond_0
    move-object v4, p3

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/background/service/jms/db/TransactionRepository;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance p3, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;

    const/4 v5, 0x0

    move-object v0, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final generateJobRequest$enumunboxing$(Lcom/motorola/camera/background/service/jms/Transaction;I)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/background/service/jms/Transaction;->Companion:Lcom/motorola/camera/background/service/jms/Transaction$Companion;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/background/service/jms/Transaction$Companion;->getMsgInitial(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v2

    .line 2
    new-instance v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 3
    iget v4, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    .line 4
    iget-object v5, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 5
    iget-object v6, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v7, v2

    .line 7
    sget-object v2, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    .line 8
    iget v3, v1, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcom/motorola/camera/background/common/Priority;->map:Ljava/util/LinkedHashMap;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/common/Priority;

    if-nez v2, :cond_1

    .line 12
    sget-object v2, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    :cond_1
    move-object v8, v2

    .line 13
    iget-wide v9, v1, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    .line 14
    iget v2, v1, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 16
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 17
    iget v3, v1, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    .line 18
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v12, 0x0

    if-eqz v2, :cond_2

    sget-object v13, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;->fromId(Ljava/lang/Integer;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v12

    .line 19
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 20
    iget v1, v1, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;->fromId(Ljava/lang/Integer;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_3
    move-object v13, v12

    :goto_1
    move-object v3, v15

    move-object v12, v2

    move/from16 v14, p2

    .line 22
    invoke-direct/range {v3 .. v14}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    return-object v15
.end method

.method public final getUnfinishedCoProcJobs(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    .line 4
    iget-object v6, v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    if-eqz v6, :cond_1

    .line 5
    iget-object v6, v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_1
    sget-object v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    .line 10
    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    .line 11
    sget-object v4, Lcom/motorola/camera/background/common/Priority;->BACKGROUND:Lcom/motorola/camera/background/common/Priority;

    const/16 v4, 0xa

    .line 12
    iput v4, v2, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    .line 13
    iput-boolean v3, v2, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    .line 14
    iget-boolean v3, v2, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    if-eqz v3, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    iget v3, v2, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    if-ne p1, v3, :cond_4

    const/4 v3, 0x2

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->generateJobRequest$enumunboxing$(Lcom/motorola/camera/background/service/jms/Transaction;I)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final jobExists(J)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final pendingJobCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final sortRequests(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$compareBy$1;

    invoke-direct {p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$compareBy$1;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$thenByDescending$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase$sortRequests$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 3
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final transitionAndProcess(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz p0, :cond_3

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    if-eqz p0, :cond_3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromState"

    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/tinder/StateMachine;->getTransition(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tinder/StateMachine$Transition;

    move-result-object p1

    .line 8
    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, p1

    check-cast v0, Lcom/tinder/StateMachine$Transition$Valid;

    .line 10
    iget-object v0, v0, Lcom/tinder/StateMachine$Transition$Valid;->toState:Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    iget-object p2, p0, Lcom/tinder/StateMachine;->graph:Lcom/tinder/StateMachine$Graph;

    .line 14
    iget-object p2, p2, Lcom/tinder/StateMachine$Graph;->onTransitionListeners:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 16
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_1
    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_3

    .line 18
    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    .line 19
    iget-object p2, p1, Lcom/tinder/StateMachine$Transition$Valid;->fromState:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, p2}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/tinder/StateMachine$Graph$State;->onExitListeners:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 23
    invoke-interface {v1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_2
    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->toState:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object p0

    .line 26
    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->onEnterListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 28
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method
