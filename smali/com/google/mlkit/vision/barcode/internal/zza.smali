.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;-><init>()V

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 2
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;-><init>()V

    .line 4
    iput-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzla;)V

    .line 6
    iput-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlc;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-result-object p0

    return-object p0
.end method
