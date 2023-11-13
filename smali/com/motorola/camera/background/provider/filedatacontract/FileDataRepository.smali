.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;
.super Ljava/lang/Object;
.source "FileDataRepository.kt"


# instance fields
.field public final mDao:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase$Companion;

    .line 3
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    const-string v2, "fileData_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    .line 8
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    .line 9
    sput-object p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->fileDataDao()Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;->mDao:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;->mDao:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;

    :goto_1
    return-void
.end method


# virtual methods
.method public final insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileData;",
            "JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    iget v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    invoke-direct {v0, p0, p5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-wide p2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    const/4 p5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-eqz p4, :cond_5

    .line 5
    sget-object p4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v5, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;

    invoke-direct {v5, p0, p1, p5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, v2, v5, v4}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    .line 6
    iput-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    iput v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    check-cast p0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Long;

    if-eqz p5, :cond_4

    .line 9
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    .line 11
    :cond_5
    sget-object p4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;

    invoke-direct {v0, p0, p1, p5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, v2, v0, v4}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    .line 12
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0
.end method
