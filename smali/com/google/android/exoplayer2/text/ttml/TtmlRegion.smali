.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final height:F

.field public final id:Ljava/lang/String;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFIIFFIFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    .line 7
    iput p6, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 8
    iput p7, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->height:F

    .line 9
    iput p8, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSizeType:I

    .line 10
    iput p9, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSize:F

    .line 11
    iput p10, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    return-void
.end method
