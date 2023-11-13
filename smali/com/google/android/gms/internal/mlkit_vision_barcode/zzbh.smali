.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbi;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbi;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/util/Collection;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method
