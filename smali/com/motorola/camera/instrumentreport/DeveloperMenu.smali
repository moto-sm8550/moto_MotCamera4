.class public final Lcom/motorola/camera/instrumentreport/DeveloperMenu;
.super Ljava/lang/Object;
.source "DeveloperMenu.java"


# static fields
.field public static mDebug:Ljava/lang/Boolean;


# direct methods
.method public static isMenuEnabled()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 2
    invoke-static {}, Lcom/motorola/camera/Util;->isProductionBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qe 1/1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 6
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    .line 8
    :cond_4
    :goto_1
    sget-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
