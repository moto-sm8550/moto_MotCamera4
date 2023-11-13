.class public final Lcom/motorola/camera/saving/SaveImageService$SaveQueue;
.super Ljava/util/LinkedList;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/motorola/camera/saving/SaveImageService$ImageContainer;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile mMemoryUsed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J

    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 4
    iget p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 5
    iput-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    if-eqz v0, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 4
    iget v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 5
    iput-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic poll()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    move-result-object p0

    return-object p0
.end method
