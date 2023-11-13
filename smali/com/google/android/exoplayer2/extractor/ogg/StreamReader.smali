.class public abstract Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# instance fields
.field public currentGranule:J

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public formatSet:Z

.field public lengthOfReadPacket:J

.field public final oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field public oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field public payloadStartPosition:J

.field public sampleRate:I

.field public seekMapSet:Z

.field public setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field public state:I

.field public targetGranule:J

.field public trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    return-void
.end method


# virtual methods
.method public final convertTimeToGranule(J)J
    .locals 2

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, p0

    mul-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public onSeekEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method public abstract preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method public abstract readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method public reset(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method
