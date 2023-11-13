.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final zza:Ljava/util/ArrayDeque;

.field public zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzg:I

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 7
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 5
    :goto_0
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto :goto_0

    .line 9
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    return-object v0

    .line 12
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
