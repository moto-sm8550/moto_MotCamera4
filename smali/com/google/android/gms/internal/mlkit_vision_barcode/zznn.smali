.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;->zzb:J

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
