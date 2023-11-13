.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzv(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbl;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzq()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzu()I

    move-result v0

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 8
    iget-object v6, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zze:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 10
    iget-object v7, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zza:[I

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 12
    iget-object v8, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 14
    iget-object v9, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v0

    .line 15
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 16
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzp(II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzn()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result p0

    return p0
.end method
