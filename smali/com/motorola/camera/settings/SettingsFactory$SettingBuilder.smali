.class public final Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/SettingsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mAllowedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mAndroidIcons:[I

.field public mCacheType:I

.field public mContentDescription:I

.field public final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mDialogTitle:I

.field public final mName:Ljava/lang/String;

.field public mPersistType:I

.field public mResources:[I

.field public mToast:[I

.field public mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 4
    iput v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 5
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDefaultValue:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allowedValues(Ljava/util/List;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/motorola/camera/settings/Setting;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/settings/Setting<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/Setting;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDefaultValue:Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    iget v4, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/settings/Setting;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    if-eqz v3, :cond_0

    .line 7
    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/settings/Setting;->addValueToResourceEntry(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    if-eqz v3, :cond_1

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    if-eqz v3, :cond_2

    .line 11
    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/settings/Setting;->addValueToAndroidIconEntry(Ljava/lang/Object;Ljava/lang/Integer;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 13
    iput v1, v0, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    .line 14
    :cond_4
    iget v1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    if-eq v1, v2, :cond_5

    .line 15
    iput v1, v0, Lcom/motorola/camera/settings/Setting;->mContentDescriptionRes:I

    .line 16
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 17
    iput-object p0, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object v0
.end method

.method public final contentDescription(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    return-object p0
.end method

.method public final persistType$enumunboxing$(I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    return-object p0
.end method

.method public final resources([I)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    return-object p0
.end method

.method public final updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/Setting$UpdateType;",
            ")",
            "Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object p0
.end method
