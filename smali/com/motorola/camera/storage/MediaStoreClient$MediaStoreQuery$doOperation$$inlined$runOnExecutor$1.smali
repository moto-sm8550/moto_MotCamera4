.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery$doOperation$$inlined$runOnExecutor$1;
.super Ljava/lang/Object;
.source "MediaStoreClient.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaStoreClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$runOnExecutor$1\n+ 2 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery\n+ 3 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient\n*L\n1#1,342:1\n197#2:343\n198#2:346\n161#3,2:344\n163#3,5:347\n*S KotlinDebug\n*F\n+ 1 MediaStoreClient.kt\ncom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery\n*L\n197#1:344,2\n197#1:347,5\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery$doOperation$$inlined$runOnExecutor$1;->this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery$doOperation$$inlined$runOnExecutor$1;->this$0:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->uri:Landroid/net/Uri;

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:[Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selection:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selectionArgs:[Ljava/lang/String;

    .line 8
    iget-object v6, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->sortOrder:Ljava/lang/String;

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method
