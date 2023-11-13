.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public transient zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzau;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzau;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzau;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzau;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;)V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzau;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    :cond_0
    return-object v0
.end method
