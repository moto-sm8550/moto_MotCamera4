.class public final Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;
.super Ljava/lang/Object;
.source "CalibrationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/CalibrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugUiListener"
.end annotation


# instance fields
.field public final debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

.field public mAf:Ljava/lang/String;

.field public mAwb:Ljava/lang/String;

.field public mLsc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAwb:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAf:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mLsc:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    return-void
.end method


# virtual methods
.method public final onEntering()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAwb:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAf:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mLsc:Ljava/lang/String;

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final onExiting()Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAwb:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mAf:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->mLsc:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 13
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    invoke-static {p0}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    const/4 p0, 0x1

    .line 15
    sput-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    .line 17
    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    .line 18
    sput-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 19
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
