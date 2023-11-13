.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
