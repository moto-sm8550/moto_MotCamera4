.class public abstract Lcom/google/mlkit/common/model/RemoteModel;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p0, p1, Lcom/google/mlkit/common/model/RemoteModel;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModel;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzv;-><init>()V

    const-string v0, "modelName"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzv;

    const-string v0, "baseModel"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzv;

    const-string v0, "modelType"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzv;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzv;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
