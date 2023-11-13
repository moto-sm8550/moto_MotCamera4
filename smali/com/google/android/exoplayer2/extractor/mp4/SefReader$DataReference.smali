.class public final Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/SefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataReference"
.end annotation


# instance fields
.field public final size:I

.field public final startOffset:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    return-void
.end method
