.class public final Lcom/google/android/gms/internal/mlkit_common/zzau;
.super Lcom/google/android/gms/internal/mlkit_common/zzap;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

.field public final transient zzb:Lcom/google/android/gms/internal/mlkit_common/zzam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzao;Lcom/google/android/gms/internal/mlkit_common/zzam;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzam;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzao;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzam;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/zzaz;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Lcom/google/android/gms/internal/mlkit_common/zzao;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzaw;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzam;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
