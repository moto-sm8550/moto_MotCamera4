.class public final Lcom/motorola/camera/background/service/jms/Transaction$Companion;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMsgInitial(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;
    .locals 7

    const-string/jumbo v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgParameters;

    .line 2
    iget v2, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    .line 3
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    .line 4
    iget v3, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/LinkedHashMap;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/msg/MsgType;

    if-nez v1, :cond_0

    .line 8
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    :cond_0
    move-object v3, v1

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/Transaction$Companion;->getTaskId(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v4

    .line 10
    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    .line 11
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    .line 12
    iget p1, p1, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->intToReturnCode(I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_1
    move-object v6, p0

    move-object v1, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    return-object v0
.end method

.method public final getTaskId(Lcom/motorola/camera/background/service/jms/Transaction;)Lcom/motorola/camera/background/common/TaskId;
    .locals 11

    const-string/jumbo p0, "transaction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/motorola/camera/background/common/TaskId;

    .line 2
    iget v1, p1, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    .line 3
    iget-wide v2, p1, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    .line 4
    iget-wide v4, p1, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    .line 5
    iget v6, p1, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    .line 6
    iget v7, p1, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    .line 7
    iget v8, p1, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    .line 8
    iget-boolean v9, p1, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    .line 9
    iget-object v10, p1, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    return-object p0
.end method
