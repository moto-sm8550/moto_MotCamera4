.class public final Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    }
.end annotation


# direct methods
.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 12
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 43
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 45
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 46
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 47
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 48
    iput p7, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 49
    iput p8, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 50
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 51
    iput p9, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 52
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 53
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 35
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 36
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 37
    iput-object p6, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 38
    iput p7, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 39
    iput p8, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 40
    iput-object p9, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 41
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 42
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I[I[III",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 22
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 24
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 25
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 26
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 27
    iput-object p7, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 28
    iput p8, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 29
    iput p9, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 30
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 32
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Lcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 6
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 7
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/Map;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "Lcom/motorola/camera/settings/Setting;",
            ">;",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;[I",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 16
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 17
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 18
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 19
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 21
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
