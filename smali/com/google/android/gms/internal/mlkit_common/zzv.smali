.class public final Lcom/google/android/gms/internal/mlkit_common/zzv;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_common/zzu;

.field public zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    const-string v0, "RemoteModel"

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zza:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 5
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    const-string v1, ", "

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_common/zzu;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzv;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzu;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_common/zzu;->zza:Ljava/lang/String;

    return-object p0
.end method
