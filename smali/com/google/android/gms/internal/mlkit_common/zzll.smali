.class public final Lcom/google/android/gms/internal/mlkit_common/zzll;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/mlkit_common/zzaw;


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
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaw;-><init>([Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzll;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p0, Ljava/util/HashMap;

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlj;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzlj;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    .line 7
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzll;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzaw;

    .line 8
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzao;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzaw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method
