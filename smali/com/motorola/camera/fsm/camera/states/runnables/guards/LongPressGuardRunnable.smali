.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.source "LongPressGuardRunnable.java"


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:I

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    check-cast p2, Landroid/os/Bundle;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 4
    iget v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    .line 7
    :cond_2
    :goto_0
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 8
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x13

    .line 12
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v2

    :goto_2
    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    const-string v6, "LONG_PRESS"

    .line 13
    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "ROI_INNER"

    .line 14
    invoke-virtual {p2, v7, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "CAPTURE_TRIGGER"

    .line 15
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 16
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v10, v9, :cond_6

    move v9, v2

    goto :goto_4

    :cond_6
    move v9, v5

    :goto_4
    const-string v10, "LOCATION"

    .line 17
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    if-eqz v10, :cond_7

    .line 18
    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;)Z

    move-result v11

    .line 19
    invoke-static {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result v10

    goto :goto_5

    :cond_7
    move v10, v5

    move v11, v10

    .line 20
    :goto_5
    iget v12, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:I

    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v12

    if-eqz v12, :cond_13

    if-eq v12, v2, :cond_d

    if-eq v12, v1, :cond_8

    goto/16 :goto_b

    .line 21
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_b

    .line 22
    :cond_9
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v11, :cond_c

    if-eqz v6, :cond_c

    if-nez v7, :cond_c

    if-nez v3, :cond_c

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_c

    .line 24
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 25
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 26
    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p2, p0, :cond_a

    move p0, v2

    goto :goto_6

    :cond_a
    move p0, v5

    :goto_6
    if-nez p0, :cond_c

    :cond_b
    move v5, v2

    :cond_c
    if-eqz v5, :cond_17

    .line 27
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "LOCK_FOCUS_STATE"

    .line 28
    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 29
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p1

    const/4 v0, 0x6

    .line 30
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 31
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    move v0, v5

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v2

    :goto_8
    if-nez v0, :cond_10

    if-eqz v9, :cond_10

    if-nez v6, :cond_16

    :cond_10
    if-nez v0, :cond_15

    if-eqz v6, :cond_15

    if-nez v7, :cond_15

    if-eqz v4, :cond_15

    if-eqz v3, :cond_15

    if-eqz v10, :cond_15

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 33
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 34
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 35
    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p2, p0, :cond_11

    move p0, v2

    goto :goto_9

    :cond_11
    move p0, v5

    :goto_9
    if-nez p0, :cond_15

    :cond_12
    if-nez p1, :cond_15

    goto :goto_a

    .line 36
    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_b

    :cond_14
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    goto :goto_a

    :cond_15
    move v2, v5

    :cond_16
    :goto_a
    move v5, v2

    :cond_17
    :goto_b
    return v5
.end method
