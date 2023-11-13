.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcf;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;

.field public final transient zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdb;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzce;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdb;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdb;

    move-result-object p0

    return-object p0
.end method
