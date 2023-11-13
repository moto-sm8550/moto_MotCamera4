.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

.field public static volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;


# instance fields
.field public final zzd:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
