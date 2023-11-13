.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;
.super Ljava/lang/Object;
.source "MultiShotStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/MultiShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsBurstAllowedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterOn()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f1100dd

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;->showUnavailableBurstModeToast(I)V

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1100dc

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;->showUnavailableBurstModeToast(I)V

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1100db

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;->showUnavailableBurstModeToast(I)V

    goto/16 :goto_2

    .line 8
    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v1

    if-nez v1, :cond_3

    const p1, 0x7f1100de

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;->showUnavailableBurstModeToast(I)V

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 p0, 0xc

    if-eq p1, p0, :cond_5

    const/16 p0, 0x12

    if-eq p1, p0, :cond_5

    const/16 p0, 0x27

    if-eq p1, p0, :cond_5

    const/16 p0, 0x28

    if-eq p1, p0, :cond_5

    .line 15
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterOn(I)Z

    move-result p0

    if-nez p0, :cond_5

    .line 16
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 17
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    if-nez p0, :cond_5

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p0

    if-nez p0, :cond_5

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    move p0, p2

    goto :goto_0

    :cond_5
    move p0, v0

    :goto_0
    if-nez p0, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 22
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 23
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 24
    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, p2

    goto :goto_1

    :cond_7
    move p0, v0

    :goto_1
    if-eqz p0, :cond_8

    goto :goto_2

    .line 25
    :cond_8
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 26
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_9

    .line 27
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 28
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 29
    check-cast v1, Landroid/util/Size;

    .line 30
    invoke-static {v1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v1

    if-le v1, p1, :cond_9

    goto :goto_2

    .line 31
    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSizeOfCurrentCamera()Landroid/util/Size;

    move-result-object p0

    .line 34
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 35
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 36
    check-cast p1, Landroid/util/Size;

    if-eqz p0, :cond_a

    .line 37
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result p1

    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result p0

    if-le p1, p0, :cond_a

    :goto_2
    move p0, v0

    goto :goto_3

    :cond_a
    move p0, p2

    :goto_3
    if-nez p0, :cond_b

    goto :goto_4

    .line 38
    :cond_b
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->access$700()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkSaveQueueIsFull(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 39
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    const-string p0, "MultiShotStates"

    const-string p1, "Save queue is full now, please wait for a while."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move p2, v0

    :cond_c
    return p2
.end method

.method public final showUnavailableBurstModeToast(I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p1, 0x1

    .line 3
    iput p1, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:I

    .line 4
    iput-boolean p1, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mDismissOnCaptureStart:Z

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method
