.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "PostProcServiceJni.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MsgHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string/jumbo p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "taskId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "retCode"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    const/16 p4, 0xc

    if-eq p1, p4, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processCtlMsg: unknown type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p3}, Lcom/motorola/camera/background/common/TaskId;->toJobId()Lcom/motorola/camera/background/common/JobId;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJobCancel(Lcom/motorola/camera/background/common/JobId;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->intToReturnCode(I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string/jumbo p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "taskId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "retCode"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p5, 0x1

    if-eq p1, p5, :cond_0

    const/16 p5, 0xa

    if-eq p1, p5, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processMsg: unknown type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    invoke-direct {p1, p3, p2, p4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->getMJobsList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 9
    sget-object p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;

    .line 10
    invoke-virtual {p1, p2, p4}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    .line 11
    iget-object p2, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    .line 12
    iget-object p4, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    const-string p5, "appContext"

    .line 14
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "algContext"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "priority"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p3}, Lcom/motorola/camera/background/common/TaskId;->toJobId()Lcom/motorola/camera/background/common/JobId;

    move-result-object p5

    invoke-virtual {p2, p5, p4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->intToReturnCode(I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 16
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    .line 17
    :cond_1
    sget-object p2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq p1, p2, :cond_2

    .line 18
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->getMJobsList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_2
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
