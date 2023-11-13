.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileDataContract.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->insertFileDatabase(Landroid/content/ContentResolver;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;
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
    c = "com.motorola.camera.background.provider.filedatacontract.FileDataContract$Companion$insertFileDatabase$1"
    f = "FileDataContract.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $contentValues:Landroid/content/ContentValues;

.field public final synthetic $contextResolver:Landroid/content/ContentResolver;

.field public final synthetic $ret:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Landroid/content/ContentValues;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contextResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

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

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contextResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contextResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$ret:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contextResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    .line 3
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion$insertFileDatabase$1;->$contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
