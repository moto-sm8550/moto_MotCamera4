.class public final Lcom/motorola/camera/shared/PackageUtility;
.super Ljava/lang/Object;
.source "PackageUtility.java"


# static fields
.field public static sAppContext:Landroid/content/Context;

.field public static sInstance:Lcom/motorola/camera/shared/PackageUtility;


# instance fields
.field public mContentAIPackageName:Ljava/lang/String;

.field public mDeviceHasImagerTuning:Z

.field public mImagerTuningPackageName:Ljava/lang/String;

.field public final mPackagesVersionCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackagesVersionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionMap:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/shared/PackageUtility;
    .locals 3

    const-class v0, Lcom/motorola/camera/shared/PackageUtility;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/motorola/camera/shared/PackageUtility;

    invoke-direct {v1}, Lcom/motorola/camera/shared/PackageUtility;-><init>()V

    sput-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Context is null. Have you called init?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final varargs cacheVersionForPackage([Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x80

    .line 3
    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionMap:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v5, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object v4, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getContentAiPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "com.motorola.camera3.content.ai"

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.motorola.camera2.content.ai"

    .line 3
    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getImagerTuningName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "com.motorola.imagertuning_V2"

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 7
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.motorola.imagertuning"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    .line 11
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/shared/PackageUtility;->cacheVersionForPackage([Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method
