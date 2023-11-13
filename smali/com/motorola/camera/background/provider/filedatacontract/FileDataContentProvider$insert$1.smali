.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileDataContentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.provider.filedatacontract.FileDataContentProvider$insert$1"
    f = "FileDataContentProvider.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $id:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $values:Landroid/content/ContentValues;

.field public L$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;",
            "Landroid/content/ContentValues;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iput-object p3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->L$0:Lkotlin/jvm/internal/Ref$LongRef;

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
    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$id:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    .line 5
    iget-object v3, v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->mFileDataRepo:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    if-eqz v3, :cond_3

    .line 6
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileData$Companion;

    iget-object v4, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/background/provider/filedatacontract/FileData$Companion;->fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    move-result-object v4

    .line 7
    sget-object v1, Lcom/motorola/camera/background/common/UniqueId;->Companion:Lcom/motorola/camera/background/common/UniqueId$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/background/common/UniqueId$Companion;->generateUniqueId()J

    move-result-wide v5

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->L$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;->label:I

    const/4 v7, 0x1

    move-object v8, p0

    .line 9
    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;->insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 10
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    const-string p0, "mFileDataRepo"

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
