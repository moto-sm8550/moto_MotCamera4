.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator;


# instance fields
.field public allocatedCount:I

.field public availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field public availableCount:I

.field public final individualAllocationSize:I

.field public targetBufferSize:I

.field public final trimOnReset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    const/high16 v0, 0x10000

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public final declared-synchronized trim()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2
    div-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
