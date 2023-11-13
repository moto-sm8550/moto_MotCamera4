.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
.super Ljava/lang/Object;
.source "JobMgrScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JobResult"
.end annotation


# instance fields
.field public final callerId:I

.field public final msgType:Lcom/motorola/camera/background/common/msg/MsgType;

.field public final result:Lcom/motorola/camera/background/common/ReturnCode;

.field public final resultDescription:Ljava/lang/String;

.field public final taskId:Lcom/motorola/camera/background/common/TaskId;


# direct methods
.method public constructor <init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "msgType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->callerId:I

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->callerId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->callerId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->callerId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/TaskId;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JobResult(callerId="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->callerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
