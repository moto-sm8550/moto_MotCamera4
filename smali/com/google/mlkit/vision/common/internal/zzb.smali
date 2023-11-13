.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzb;

.field public static final synthetic zza$1:Lcom/google/mlkit/vision/common/internal/zzb;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzb;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzb;->zza$1:Lcom/google/mlkit/vision/common/internal/zzb;

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzb;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzb;->zza:Lcom/google/mlkit/vision/common/internal/zzb;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error preloading model resource"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileVisionBase"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
