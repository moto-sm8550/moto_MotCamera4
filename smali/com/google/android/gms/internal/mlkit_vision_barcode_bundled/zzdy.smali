.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    return-object p0
.end method
