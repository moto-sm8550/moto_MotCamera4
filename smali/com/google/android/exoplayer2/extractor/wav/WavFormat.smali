.class public final Lcom/google/android/exoplayer2/extractor/wav/WavFormat;
.super Ljava/lang/Object;
.source "WavFormat.java"


# instance fields
.field public final bitsPerSample:I

.field public final blockSize:I

.field public final extraData:[B

.field public final frameRateHz:I

.field public final numChannels:I


# direct methods
.method public constructor <init>(IIIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->extraData:[B

    return-void
.end method
