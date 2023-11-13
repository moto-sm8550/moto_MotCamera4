.class public final Lcom/google/android/exoplayer2/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    iget p1, p1, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    add-int/2addr v1, p0

    return v1
.end method
