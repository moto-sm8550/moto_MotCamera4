.class public final Lcom/google/android/exoplayer2/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public size:I

.field public values:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    return-void
.end method


# virtual methods
.method public final add(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final get(I)J
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:[J

    aget-wide p0, p0, p1

    return-wide p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    const/16 v1, 0x2e

    const-string v2, "Invalid index "

    const-string v3, ", size is "

    .line 4
    invoke-static {v1, v2, p1, v3, p0}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
