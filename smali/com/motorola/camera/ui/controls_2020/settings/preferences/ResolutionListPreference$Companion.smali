.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;
.super Ljava/lang/Object;
.source "ResolutionListPreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResolutions(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/PreviewSize$AspectRatio;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;",
            ">;"
        }
    .end annotation

    const-string p0, "currentRatio"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isHDWideScreenAspectRatioMode(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitPortraitSize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitNightSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedSummaryStrings(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 9
    :goto_0
    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, p0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_b

    .line 12
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 13
    invoke-static {v6}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    invoke-static {v6, p1}, Lcom/motorola/camera/utility/SizeUtility;->isCliAspectRatio(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMpRemosaicCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 18
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->shouldHideHighResolution(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 19
    :cond_4
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v8

    if-nez v8, :cond_6

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {v6}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v8

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v7

    if-le v8, v7, :cond_7

    goto :goto_3

    .line 24
    :cond_6
    :goto_2
    invoke-static {v6}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v8

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v7

    if-gt v8, v7, :cond_7

    goto :goto_3

    .line 25
    :cond_7
    invoke-static {v6, p3}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    .line 26
    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 27
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    invoke-direct {v8, v7, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;-><init>(Ljava/lang/String;Landroid/util/Size;)V

    .line 28
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 29
    iput-boolean v5, v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    .line 30
    :cond_9
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 31
    :cond_b
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    .line 32
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion$$ExternalSyntheticLambda0;

    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupported(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 34
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 36
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 37
    iget-object v1, p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_4

    :cond_d
    move v1, p0

    :goto_4
    iget-object v3, p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_5

    :cond_e
    move v3, p0

    :goto_5
    mul-int/2addr v1, v3

    if-lt v0, v1, :cond_c

    .line 38
    iput-boolean v5, p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    goto :goto_6

    .line 39
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_10

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 40
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    :cond_10
    :goto_6
    return-object v2
.end method
