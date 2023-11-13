.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTimeNightModeManager"
.end annotation


# instance fields
.field public final mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getApplyableNightMode()I
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    .line 2
    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 3
    iget-wide v2, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto/16 :goto_9

    .line 5
    :cond_1
    iget-object v2, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v5}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    const-string v2, "network"

    .line 6
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 7
    :goto_1
    iget-object v6, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "gps"

    .line 8
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    :goto_2
    move-object v2, v5

    :cond_5
    if-eqz v2, :cond_c

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 12
    sget-object v5, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v5, :cond_6

    .line 13
    new-instance v5, Landroidx/appcompat/app/TwilightCalculator;

    invoke-direct {v5}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    sput-object v5, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 14
    :cond_6
    sget-object v10, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    const-wide/32 v21, 0x5265c00

    sub-long v15, v12, v21

    .line 15
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object v14, v10

    .line 16
    invoke-virtual/range {v14 .. v20}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 17
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v5, v10

    move-wide v6, v12

    move-object v4, v10

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 18
    iget v5, v4, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v5, v3, :cond_7

    move v5, v3

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 19
    :goto_3
    iget-wide v6, v4, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 20
    iget-wide v8, v4, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    add-long v15, v12, v21

    .line 21
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object v14, v4

    .line 22
    invoke-virtual/range {v14 .. v20}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 23
    iget-wide v10, v4, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    cmp-long v2, v6, v16

    if-eqz v2, :cond_b

    cmp-long v2, v8, v16

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    cmp-long v2, v12, v8

    if-lez v2, :cond_9

    add-long/2addr v10, v14

    goto :goto_4

    :cond_9
    cmp-long v2, v12, v6

    if-lez v2, :cond_a

    add-long v10, v8, v14

    goto :goto_4

    :cond_a
    add-long v10, v6, v14

    :goto_4
    const-wide/32 v6, 0xea60

    add-long/2addr v10, v6

    goto :goto_6

    :cond_b
    :goto_5
    const-wide/32 v6, 0x2932e00

    add-long v10, v12, v6

    .line 24
    :goto_6
    iput-boolean v5, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 25
    iput-wide v10, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 26
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto :goto_9

    :cond_c
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    const/16 v1, 0x16

    if-lt v0, v1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v4, v3

    :goto_8
    move v0, v4

    :goto_9
    if-eqz v0, :cond_f

    const/4 v3, 0x2

    :cond_f
    return v3
.end method

.method public final onChange()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method
