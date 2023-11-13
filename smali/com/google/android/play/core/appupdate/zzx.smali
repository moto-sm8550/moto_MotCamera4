.class public final Lcom/google/android/play/core/appupdate/zzx;
.super Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final zza:I

.field public final zzb:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    return-void
.end method


# virtual methods
.method public final allowAssetPackDeletion()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    return p0
.end method

.method public final appUpdateType()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    iget v1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->appUpdateType()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->allowAssetPackDeletion()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    const/16 p0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 p0, 0x4cf

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUpdateOptions{appUpdateType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", allowAssetPackDeletion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
