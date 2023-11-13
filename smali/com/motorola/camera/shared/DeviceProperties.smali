.class public final Lcom/motorola/camera/shared/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;,
        Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;,
        Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
    }
.end annotation


# direct methods
.method public static getBoolean(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSystemProperty:Ljava/lang/String;

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const-string v2, "getBoolean"

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SystemSetting"

    .line 6
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    .line 9
    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    return p0
.end method

.method public static getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    const-string v2, "getInt"

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SystemSetting"

    .line 6
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    :goto_0
    iput v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    .line 9
    :cond_1
    iget p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    return p0
.end method

.method public static getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    .line 4
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v2, v6, v3

    invoke-static {v4, v6}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v1, v5, v3

    .line 5
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SystemSetting"

    const-string v4, "getString"

    .line 6
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    return-object p0
.end method
