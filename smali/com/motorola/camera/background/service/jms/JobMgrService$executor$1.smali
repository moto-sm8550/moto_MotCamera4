.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrService.kt"

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
    value = "SMAP\nJobMgrService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrService.kt\ncom/motorola/camera/background/service/jms/JobMgrService$executor$1\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,288:1\n199#2,11:289\n*S KotlinDebug\n*F\n+ 1 JobMgrService.kt\ncom/motorola/camera/background/service/jms/JobMgrService$executor$1\n*L\n241#1:289,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrService$executor$1"
    f = "JobMgrService.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $progress:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
            ">;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/String;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lcom/motorola/camera/background/service/jms/JobMgrService;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
            ">;",
            "Lcom/motorola/camera/background/service/jms/JobMgrService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->$progress:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->$progress:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->$progress:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->L$0:Ljava/lang/String;

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

    const-class v1, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".executor"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->$progress:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->L$0:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->L$2:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->label:I

    .line 7
    new-instance v4, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p1

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    .line 9
    invoke-interface {p1, v4, v5}, Lkotlinx/coroutines/selects/SelectClause1;->registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {v4, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    invoke-virtual {v4}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0
.end method
