.class public final Lcom/motorola/camera/mcf/McfRtDepthStatus;
.super Ljava/lang/Object;
.source "McfRtDepthStatus.java"


# instance fields
.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "{"

    const-string v1, "McfRtDepthStatus"

    const-string v2, ":{status="

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget p0, p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const-string/jumbo v1, "}}"

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
