.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 4
    invoke-static {v1, v0}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    move-result-object v0

    .line 6
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 7
    invoke-static {v1, v0}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    move-result-object v0

    .line 9
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 10
    invoke-static {v1, v0}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x4

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/util/HashMap;I)Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    move-result-object v0

    .line 12
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 13
    invoke-static {v1, v0}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbj;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p0, 0x0

    .line 2
    throw p0
.end method
