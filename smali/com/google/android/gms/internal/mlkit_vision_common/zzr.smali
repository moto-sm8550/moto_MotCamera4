.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzr;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public transient zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzv;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;-><init>([Ljava/lang/Object;II)V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    move-object v0, v1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzr;[Ljava/lang/Object;I)V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzr;[Ljava/lang/Object;I)V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    move-object v0, v1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zza(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;-><init>([Ljava/lang/Object;II)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    .line 3
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzr;Lcom/google/android/gms/internal/mlkit_vision_common/zzp;)V

    .line 4
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    int-to-long v2, v1

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzv;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;-><init>([Ljava/lang/Object;II)V

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    move-object v0, v1

    :cond_0
    return-object v0
.end method
