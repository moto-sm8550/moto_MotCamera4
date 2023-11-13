.class public final Lcom/motorola/camera/analytics/UserExitAppEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "UserExitAppEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    }
.end annotation


# static fields
.field public static final APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final CONTROL_BAR_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final CONTROL_PANEL_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final MODE_ADD:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

.field public static final MODE_CAROUSEL_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

.field public static final MODE_SORT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MODE_SUM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "APPTIME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const/4 v1, 0x0

    const-string v2, "ERRTYP"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const/4 v2, 0x0

    const-string v3, "SETTINGSLAUNCH"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "NUMPIC"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "NUMVID"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "LENSSTAT"

    invoke-direct {v0, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "OUTQUSIZ"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "PINCHZOOM"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "SCROLLZOOM"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "HELPLAUNCH"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string v3, "MODEADD"

    invoke-direct {v0, v3}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    const-string v3, "MODEREMOVE"

    invoke-direct {v0, v3}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "MODELAUNCH"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "MODESORT"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 16
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v3, "MODESUM"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 17
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v3, "MODETUT"

    invoke-direct {v0, v3, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 18
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "KLMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 19
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "CTRLBAR"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 20
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "CTRLPNL"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 9

    .line 1
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "EXITTYP"

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    check-cast p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 5
    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    invoke-virtual {p1, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "APPTIME"

    const-wide/16 v5, 0x0

    .line 8
    iget-object v7, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v7

    .line 9
    :try_start_1
    iget-object v8, p1, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {v8, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 11
    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 12
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {v1, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 13
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {v1, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 14
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {v1, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 15
    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    if-nez p3, :cond_1

    const-string p3, "MISC"

    goto :goto_0

    .line 16
    :cond_1
    iget-object p3, p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    .line 17
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 18
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 19
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 20
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 21
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 22
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_ADD:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 23
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_REMOVE:Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 24
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 25
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SORT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 26
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    .line 27
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p1, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 28
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string p3, "ANALYTICS_CONTROL_BAR_TAPS"

    .line 29
    invoke-virtual {p1, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 31
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string p3, "ANALYTICS_CONTROL_PANEL_TAPS"

    .line 32
    invoke-virtual {p1, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 34
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string p3, "LENSSTAT"

    invoke-virtual {p1, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 37
    :goto_1
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 38
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 43
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "3.7"

    return-object p0
.end method
