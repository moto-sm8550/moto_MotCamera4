.class public abstract Lcom/google/android/exoplayer2/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    return-void
.end method

.method public final getFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSupplementalData()Z
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public final isDecodeOnly()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method
