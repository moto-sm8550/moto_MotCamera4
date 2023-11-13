.class public final Lcom/motorola/camera/analytics/CameraReadyEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "CameraReadyEvent.java"


# static fields
.field public static final AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final LAST_USE:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final PROBE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final RAM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final RAMAVL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final RAMTHRS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SECUREMODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "AMZENAB"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAM"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-wide/16 v3, 0x0

    const-string v1, "LASTUSE"

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAST_USE:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "PROBE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "RAMPSREXP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMAVL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMTHRS"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p0

    const-string p3, "USECASE"

    const-string v0, "USECASE"

    .line 2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "STARTUP"

    const-string v0, "STARTUP"

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "evttme"

    const-string v0, "evttme"

    .line 4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "COLD"

    const-string v0, "COLD"

    .line 5
    iget-object v1, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "LAUNCHEDBY"

    const-string v0, "LAUNCHEDBY"

    const-string v1, "INITIALIZED"

    .line 8
    iget-object v2, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v2

    .line 9
    :try_start_1
    iget-object v4, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "QLNCH"

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 16
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ON"

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    goto :goto_0

    :cond_1
    const-string v0, "NS"

    .line 19
    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p3, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p0, "SERVICEMODE"

    .line 21
    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_2

    .line 22
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    const/4 p3, 0x0

    if-eqz p0, :cond_3

    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    if-nez v0, :cond_4

    const-string v0, "SERVICEMODE"

    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    :cond_4
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v0, "IS_CLI_DISPLAY"

    .line 26
    invoke-virtual {p1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    .line 27
    invoke-static {v0, v1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 28
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 29
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 30
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 33
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAST_USE:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_LAST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 36
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, p3

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    or-int/2addr v1, p3

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontCamera()Z

    move-result v2

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 40
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "RAMPSREXP"

    invoke-virtual {p1, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 41
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMAVL"

    invoke-virtual {p1, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 42
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMTHRS"

    invoke-virtual {p1, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p0, "LNCH"

    .line 43
    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "NOT_LAUNCH"

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "LNCH"

    .line 45
    invoke-virtual {p2, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "COLD"

    .line 46
    invoke-virtual {p1, p0, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "STARTUP"

    const-wide/16 p2, -0x1

    .line 47
    invoke-virtual {p1, p0, p2, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "evttme"

    .line 48
    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 50
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "2.6"

    return-object p0
.end method

.method public final setupSessionValues(Lcom/motorola/camera/analytics/SynchronizedBundle;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    const-string v0, "Camera"

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Camcorder"

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    const-string v3, "SEQID"

    invoke-virtual {p1, v3, v1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v3, "TRAY"

    const-string v4, "AOV"

    const-string v5, "LOCK"

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v6, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v3, "NOT_LAUNCH"

    goto/16 :goto_7

    :cond_2
    const/4 v8, 0x1

    .line 8
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    const-string v9, "android.intent.action.CAMERA_BUTTON"

    .line 10
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, "BTN"

    goto/16 :goto_7

    .line 11
    :cond_3
    invoke-static {v6}, Lcom/motorola/camera/settings/CaptureIntent;->isPhotoCaptureAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Lcom/motorola/camera/settings/CaptureIntent;->isVideoCaptureAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    move v9, v7

    goto :goto_1

    :cond_5
    :goto_0
    move v9, v8

    :goto_1
    const-string v10, "motorola.intent.extra.CALLER"

    if-eqz v9, :cond_e

    const/4 v3, 0x0

    const-string v6, "com.android.systemui.camera_launch_source"

    .line 12
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 15
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_2
    if-nez v3, :cond_9

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v2

    if-nez v2, :cond_f

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_6

    :cond_8
    :goto_3
    move-object v3, v5

    goto/16 :goto_7

    :cond_9
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_4
    move v7, v1

    goto :goto_5

    :sswitch_0
    const-string v2, "quick-draw"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x3

    goto :goto_5

    :sswitch_1
    const-string/jumbo v2, "wiggle_gesture"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v7, 0x2

    goto :goto_5

    :sswitch_2
    const-string v2, "flip_changed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    move v7, v8

    goto :goto_5

    :sswitch_3
    const-string v2, "power_double_tap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v3, "QUIK"

    goto :goto_7

    :pswitch_1
    const-string v3, "CLICAM"

    goto :goto_7

    :pswitch_2
    const-string v3, "DTPWR"

    goto :goto_7

    .line 19
    :cond_e
    invoke-static {v6}, Lcom/motorola/camera/MediaControlReceiver;->isMediaAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 20
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "motorola.intent.category.QUICK_LAUNCH"

    .line 21
    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "moto-voice"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_6
    move-object v3, v4

    :cond_10
    :goto_7
    const-string v1, "LNCH"

    .line 23
    invoke-virtual {p1, v1, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SERVICEMODE"

    .line 24
    invoke-virtual {p1, v1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "USECASE"

    .line 25
    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65d77e51 -> :sswitch_3
        -0x5611b31e -> :sswitch_2
        -0x179a9ecb -> :sswitch_1
        0x6155d524 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
