.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository;
.super Ljava/lang/Object;
.source "TransactionRepository.kt"


# instance fields
.field public final mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->Companion:Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;

    .line 3
    sget-object v1, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/TransactionDataBase;

    if-nez v1, :cond_1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/TransactionDataBase;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/motorola/camera/background/service/jms/TransactionDataBase;

    const-string/jumbo v2, "transaction_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    .line 8
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/TransactionDataBase;

    .line 9
    sput-object p1, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->INSTANCE:Lcom/motorola/camera/background/service/jms/TransactionDataBase;
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
    invoke-virtual {v1}, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->transactionDao()Lcom/motorola/camera/background/service/jms/TransactionDao;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository;->mDao:Lcom/motorola/camera/background/service/jms/TransactionDao;

    :goto_1
    return-void
.end method


# virtual methods
.method public final selectAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    const/4 v2, 0x3

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    .line 2
    check-cast p0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionRepository;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    const/4 p1, 0x3

    invoke-static {v0, p0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    .line 2
    check-cast p0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 3
    invoke-virtual {p0, p3}, Lkotlinx/coroutines/JobSupport;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
