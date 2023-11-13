.class public final Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;
.super Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.source "AutoValue_BackendResponse.java"


# instance fields
.field public final nextRequestWaitMillis:J

.field public final status:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null status"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 3
    iget v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:I

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus$enumunboxing$()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getNextRequestWaitMillis()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getNextRequestWaitMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    return-wide v0
.end method

.method public final getStatus$enumunboxing$()I
    .locals 0

    iget p0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:I

    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BackendResponse{status="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->status:I

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextRequestWaitMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->nextRequestWaitMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
