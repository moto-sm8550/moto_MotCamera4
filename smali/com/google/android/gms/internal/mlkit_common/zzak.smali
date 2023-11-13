.class public final Lcom/google/android/gms/internal/mlkit_common/zzak;
.super Lcom/google/android/gms/internal/mlkit_common/zzaz;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

.field public final zza$com$google$android$gms$internal$mlkit_common$zzad:I

.field public zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzam;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaz;-><init>()V

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza$com$google$android$gms$internal$mlkit_common$zzad:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "index"

    invoke-static {p2, v0, p1}, Lkotlin/io/ExceptionsKt;->zze(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza$com$google$android$gms$internal$mlkit_common$zzad:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzak;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzak;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza:Lcom/google/android/gms/internal/mlkit_common/zzam;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzak;->zzb:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
