.class public final Lcom/google/android/gms/internal/mlkit_common/zzas;
.super Lcom/google/android/gms/internal/mlkit_common/zzam;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzam;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzc:I

    .line 3
    invoke-static {p1, v0}, Lkotlin/io/ExceptionsKt;->zza(II)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzb:[Ljava/lang/Object;

    .line 5
    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzb:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 8
    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzc:I

    return p0
.end method
