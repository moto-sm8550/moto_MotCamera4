.class public final synthetic Lcom/google/mlkit/vision/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zze;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zze;->zza:Lcom/google/mlkit/vision/common/internal/zze;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 p0, 0x0

    return-object p0
.end method
