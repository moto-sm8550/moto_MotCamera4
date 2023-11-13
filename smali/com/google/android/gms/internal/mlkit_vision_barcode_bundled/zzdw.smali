.class public Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

.field public zzb:Z

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzg(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzg(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    return-object v0
.end method

.method public final synthetic zzX()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-object p0
.end method

.method public final zzY()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzT(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;Z)Z

    move-result p0

    return p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzT(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgo;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgo;-><init>()V

    .line 5
    throw p0
.end method

.method public zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzf(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-object p0
.end method

.method public bridge synthetic zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object p0

    return-object p0
.end method

.method public zzo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzg(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    return-void
.end method
