.class public final Lcom/google/android/gms/tasks/CancellationTokenSource;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# instance fields
.field public final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/util/Collection;)Lcom/google/android/gms/tasks/CancellationTokenSource;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/tasks/CancellationTokenSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzb;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Lcom/google/android/gms/tasks/zzw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zze(Ljava/lang/Object;)Z

    return-void
.end method
