.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/common/internal/service/zao;

.field public final zzb:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    const-string v1, "mlkit:vision"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/android/gms/common/internal/service/zao;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/internal/service/zao;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)V

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zza:Lcom/google/android/gms/common/internal/service/zao;

    return-void
.end method
