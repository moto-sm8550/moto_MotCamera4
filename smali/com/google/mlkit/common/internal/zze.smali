.class public final synthetic Lcom/google/mlkit/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zze;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/arch/core/executor/TaskExecutor;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    .line 2
    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/zzd;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zza;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/common/sdkinternal/zza;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "MlKitCleaner"

    .line 5
    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p0
.end method
