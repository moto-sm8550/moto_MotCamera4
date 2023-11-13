.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;
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
        "Lcom/motorola/camera/background/service/jms/WorkerMsg;",
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
    value = "SMAP\nJobMgrScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,742:1\n103#2:743\n80#2,6:744\n104#2:750\n105#2:761\n90#2:762\n86#2,4:763\n1547#3:751\n1618#3,3:752\n1849#3,2:755\n1547#3:757\n1618#3,3:758\n*S KotlinDebug\n*F\n+ 1 JobMgrScheduler.kt\ncom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1\n*L\n302#1:743\n302#1:744,6\n302#1:750\n302#1:761\n302#1:762\n302#1:763,4\n327#1:751\n327#1:752,3\n328#1:755,2\n331#1:757\n331#1:758,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$workerActor$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x2ee,
        0x137,
        0x142,
        0x149,
        0x14b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/ChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

.field public L$4:Ljava/util/Collection;

.field public L$5:Ljava/util/Iterator;

.field public L$6:Ljava/util/Collection;

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
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

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

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v8, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    move-object v14, v10

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v11, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lkotlinx/coroutines/channels/ActorScope;

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 5
    :try_start_4
    invoke-interface {v14}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v10

    :goto_0
    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v10, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_5

    return-object v1

    :cond_5
    move-object/from16 v16, v10

    move-object v10, v2

    move-object/from16 v2, v16

    :goto_1
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/background/service/jms/WorkerMsg;

    .line 6
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    if-eqz v12, :cond_6

    .line 7
    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    .line 8
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 9
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    .line 10
    sget-object v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    .line 11
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    .line 12
    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v12, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_d

    return-object v1

    .line 14
    :cond_6
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    if-eqz v12, :cond_7

    .line 15
    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    .line 16
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    .line 17
    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    .line 18
    invoke-static {v10, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->access$getCoProcCoroutineIndex(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 19
    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v12, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_d

    return-object v1

    .line 21
    :cond_7
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    if-eqz v12, :cond_d

    .line 22
    new-instance v12, Lkotlin/ranges/IntRange;

    .line 23
    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v12, v9, v13}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 25
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    move-object v15, v12

    check-cast v15, Lkotlin/ranges/IntProgressionIterator;

    .line 27
    iget-boolean v15, v15, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v15, :cond_8

    .line 28
    move-object v15, v12

    check-cast v15, Lkotlin/collections/IntIterator;

    invoke-virtual {v15}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 29
    new-instance v15, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v15, v4}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 30
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_8
    invoke-static {v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v12

    .line 32
    check-cast v12, Lkotlin/collections/IndexingIterable;

    invoke-virtual {v12}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v16, v12

    move-object v12, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v13

    move-object v13, v10

    move-object/from16 v10, v17

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/collections/IndexedValue;

    .line 33
    iget v5, v15, Lkotlin/collections/IndexedValue;->index:I

    .line 34
    iget-object v15, v15, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    .line 35
    check-cast v15, Lkotlinx/coroutines/CompletableDeferred;

    .line 36
    iget-object v6, v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v6, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    invoke-direct {v6, v15}, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v5, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    const/4 v5, 0x2

    const/4 v6, 0x3

    goto :goto_3

    .line 38
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v5

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 40
    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    .line 41
    iput-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/ChannelIterator;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v5, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_b

    return-object v1

    :cond_b
    move-object v11, v2

    :goto_6
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 43
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v11

    goto :goto_5

    .line 44
    :cond_c
    check-cast v2, Ljava/util/List;

    .line 45
    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    .line 46
    iget-object v2, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    .line 47
    invoke-interface {v2}, Lkotlinx/coroutines/CompletableDeferred;->complete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v13

    move-object v2, v15

    goto :goto_8

    :cond_d
    move-object v11, v10

    :goto_7
    move-object v10, v2

    move-object v2, v11

    :goto_8
    const/4 v5, 0x2

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 48
    :cond_e
    invoke-static {v14, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 50
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 51
    invoke-static {v14, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v2
.end method
