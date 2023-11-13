.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
.source "com.google.mlkit:vision-common@@17.0.0"


# instance fields
.field public final transient zza:[Ljava/lang/Object;

.field public final transient zzb:I

.field public final transient zzc:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zza:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/play/core/appupdate/zzy;->zza(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zza:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzb:I

    add-int/2addr p1, p0

    .line 2
    aget-object p0, v0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzc:I

    return p0
.end method
