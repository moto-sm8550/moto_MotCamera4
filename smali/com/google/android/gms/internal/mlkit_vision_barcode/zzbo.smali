.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public zzb:I

.field public zzc:I

.field public zzd:I

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzb:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzd:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzb:I

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzd:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zza(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    add-int/lit8 v2, v2, 0x1

    .line 7
    iget v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 8
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    return-object v0

    .line 9
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 10
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzf:I

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzb:I

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaq;->zzd(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzb:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzd:I

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzc:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbo;->zzd:I

    return-void

    .line 7
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
