.class public abstract Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultOptions()Lcom/google/android/play/core/appupdate/AppUpdateOptions;
    .locals 3

    const/4 v0, 0x1

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    const-string v2, " appUpdateType"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string v0, " allowAssetPackDeletion"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/appupdate/zzx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/play/core/appupdate/zzx;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public abstract allowAssetPackDeletion()Z
.end method

.method public abstract appUpdateType()I
.end method
