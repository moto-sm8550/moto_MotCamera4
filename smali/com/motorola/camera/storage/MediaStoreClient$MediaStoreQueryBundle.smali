.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;
.super Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;
.source "MediaStoreClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaStoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaStoreQueryBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaStoreClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle\n+ 2 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n111#2,4:343\n1#3:347\n*S KotlinDebug\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle\n*L\n220#1:343,4\n220#1:347\n*E\n"
.end annotation


# instance fields
.field public final cancellationSignal:Landroid/os/CancellationSignal;

.field public final projection:[Ljava/lang/String;

.field public final queryArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;-><init>(Landroid/net/Uri;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->projection:[Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->queryArgs:Landroid/os/Bundle;

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->cancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    .line 2
    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle$doOperation$$inlined$runOnExecutor$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle$doOperation$$inlined$runOnExecutor$1;-><init>(Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    check-cast p0, Landroid/database/Cursor;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cause is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "MediaStoreQueryBundle(uri="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", projection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->projection:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queryArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->queryArgs:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancellationSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQueryBundle;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
