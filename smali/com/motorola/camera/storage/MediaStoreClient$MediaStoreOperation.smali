.class public abstract Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;
.super Ljava/lang/Object;
.source "MediaStoreClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaStoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract doOperation()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final execute()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x3

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->doOperation()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 2
    instance-of v2, v1, Lcom/motorola/camera/storage/exception/DisconnectedException;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v2, v1, Lcom/motorola/camera/storage/exception/VolumeNotFoundException;

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getVolumeName(uri)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "external"

    .line 5
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "external_primary"

    .line 6
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v2, 0xfa

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_3
    throw v1

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;

    invoke-virtual {v0}, Lkotlin/jvm/internal/Lambda;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
