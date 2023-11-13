.class public final Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public endPositionMs:J

.field public relativeToDefaultPosition:Z

.field public relativeToLiveWindow:Z

.field public startPositionMs:J

.field public startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    .line 5
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    .line 6
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    .line 7
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    .line 8
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-void
.end method


# virtual methods
.method public final buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V

    return-object v0
.end method
