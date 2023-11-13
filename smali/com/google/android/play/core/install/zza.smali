.class public final Lcom/google/android/play/core/install/zza;
.super Lcom/google/android/play/core/install/InstallState;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final zza:I

.field public final zzb:J

.field public final zzc:J

.field public final zzd:I

.field public final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/install/InstallState;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/install/zza;->zza:I

    iput-wide p2, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    iput-wide p4, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    iput p6, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    const-string p1, "Null packageName"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/install/InstallState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    iget v1, p0, Lcom/google/android/play/core/install/zza;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->packageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    iget-wide v1, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int/2addr v0, v5

    const/16 v6, 0x20

    ushr-long v7, v1, v6

    xor-long/2addr v1, v7

    long-to-int v1, v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    ushr-long v1, v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget v1, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-object p0, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final installErrorCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    return p0
.end method

.method public final installStatus()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    return p0
.end method

.method public final packageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    iget-wide v1, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    iget v5, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    iget-object p0, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstallState{installStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalBytesToDownload="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", installErrorCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final totalBytesToDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    return-wide v0
.end method
