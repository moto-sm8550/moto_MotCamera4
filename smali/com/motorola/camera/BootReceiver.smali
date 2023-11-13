.class public Lcom/motorola/camera/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/BootReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget p2, Lcom/motorola/camera/SimStateReceiver;->$r8$clinit:I

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/CountryDetector;->hasStoredCountry(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4
    invoke-static {p1, v0}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    .line 5
    :cond_1
    sget-object p2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 6
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/motorola/camera/CameraScan;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v3

    .line 9
    :goto_0
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 10
    new-instance p2, Landroid/content/ComponentName;

    const-class v2, Lcom/motorola/camera/service/QrScannerTileService;

    invoke-direct {p2, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 12
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v0

    .line 13
    :cond_3
    invoke-virtual {v1, p2, v3, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 16
    new-instance p0, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;

    invoke-direct {p0, p1}, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 17
    sget p0, Lcom/motorola/camera/utility/ClearCacheService;->$r8$clinit:I

    .line 18
    const-class p0, Lcom/motorola/camera/utility/ClearCacheService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    sget-object p0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId()V

    .line 23
    invoke-virtual {v0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-class p0, Landroid/app/ActivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_4

    const-string p1, "com.google.android.apps.photos"

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
