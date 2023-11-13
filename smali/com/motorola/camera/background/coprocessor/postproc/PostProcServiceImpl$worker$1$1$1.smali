.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PostProcServiceImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.coprocessor.postproc.PostProcServiceImpl$worker$1$1$1"
    f = "PostProcServiceImpl.kt"
    l = {
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $TAG:Ljava/lang/String;

.field public final synthetic $jobResults:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;",
            ">;"
        }
    .end annotation
.end field

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Companion;

    .line 7
    sget-object v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 8
    iget v4, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 9
    iget-object v5, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 10
    iget-object v6, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 11
    iget-object v7, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->rules:Ljava/lang/String;

    .line 12
    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 13
    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    new-instance v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_3
    invoke-direct {v4, p1, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;Lcom/motorola/camera/background/common/ReturnCode;)V

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;->label:I

    invoke-interface {v3, v4, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
