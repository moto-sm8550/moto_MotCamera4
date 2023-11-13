.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"


# static fields
.field public static zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

.field public static final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;


# instance fields
.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;

.field public final zzg:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field public final zzh:Lcom/google/android/gms/tasks/zzw;

.field public final zzi:Lcom/google/android/gms/tasks/zzw;

.field public final zzj:Ljava/lang/String;

.field public final zzk:I

.field public final zzl:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "optional-module-barcode"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.vision.barcode"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    aget-object v1, v0, v2

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>([Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzl:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzd:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zze:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzg:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzj:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzh:Lcom/google/android/gms/tasks/zzw;

    .line 7
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzi:Lcom/google/android/gms/tasks/zzw;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 8
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 11
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzk:I

    return-void
.end method
