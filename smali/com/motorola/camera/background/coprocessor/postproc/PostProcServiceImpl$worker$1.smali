.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PostProcServiceImpl.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostProcServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostProcServiceImpl.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,532:1\n199#2,11:533\n*S KotlinDebug\n*F\n+ 1 PostProcServiceImpl.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1\n*L\n99#1:533,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.coprocessor.postproc.PostProcServiceImpl$worker$1"
    f = "PostProcServiceImpl.kt"
    l = {
        0x218
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $jobResults:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;",
            ">;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/String;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$3:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

.field public L$4:Lkotlinx/coroutines/channels/SendChannel;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;",
            ">;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iput-object p4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$0:Ljava/lang/String;

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".worker"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$0:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$2:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$3:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iput-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->L$4:Lkotlinx/coroutines/channels/SendChannel;

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;->label:I

    .line 7
    new-instance v6, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v6, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p1

    new-instance v7, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v4, v5, v8}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    .line 9
    invoke-interface {p1, v6, v7}, Lkotlinx/coroutines/selects/SelectClause1;->registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 10
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p1

    new-instance v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;

    invoke-direct {v3, v1, v4, v5, v8}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    .line 11
    invoke-interface {p1, v6, v3}, Lkotlinx/coroutines/selects/SelectClause1;->registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v6, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    invoke-virtual {v6}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0
.end method
