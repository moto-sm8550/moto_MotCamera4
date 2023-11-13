.class public final Lcom/google/android/gms/internal/mlkit_common/zzat;
.super Lcom/google/android/gms/internal/mlkit_common/zzap;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzao;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzao;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/zzaz;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzat;)V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzap;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_common/zzam;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzat;)V

    return-object v0
.end method
