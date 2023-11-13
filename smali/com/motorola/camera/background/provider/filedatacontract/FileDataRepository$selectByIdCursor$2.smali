.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileDataRepository.kt"

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
        "Landroid/database/Cursor;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.provider.filedatacontract.FileDataRepository$selectByIdCursor$2"
    f = "FileDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $id:J

.field public final synthetic this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    iput-wide p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->$id:J

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

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;-><init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;JLkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p0, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;->mDao:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, v1, v2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;->selectByIdCursor(J)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;->mDao:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;

    if-eqz p1, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectByIdCursor$2;->$id:J

    invoke-interface {p1, v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;->selectByIdCursor(J)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
