.class public final Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;
.super Ljava/lang/Object;
.source "McfCallbackBestShotVideo.java"


# instance fields
.field public jobId:I

.field public videoStartTs:J

.field public videoStopTs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "{"

    const-string v1, "McfCallbackBestShotVideo"

    const-string v2, ":{vStartTs="

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",vStopTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    const-string/jumbo v1, "}}"

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
