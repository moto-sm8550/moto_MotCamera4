.class public final Lcom/motorola/camera/panorama/morpho/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field public calcseam_pixnum:I

.field public distortion_k1:D

.field public distortion_k2:D

.field public distortion_k3:D

.field public distortion_k4:D

.field public draw_threshold:D

.field public motion_detection_mode:I

.field public noise_reduction_level:I

.field public projection_mode:I

.field public rotation_ratio:D

.field public seamsearch_ratio:D

.field public sensor_mode:I

.field public shrink_ratio:D

.field public unsharp_strength:I

.field public use_round_auto_end:Z

.field public use_round_auto_end_sensor_mode:I

.field public zrotation_coeff:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7e90

    .line 2
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    .line 4
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    .line 5
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 7
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    const-wide v0, 0x3feeb851eb851eb8L    # 0.96

    .line 8
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    .line 9
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->shrink_ratio:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    const/16 v0, 0x200

    .line 11
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    .line 14
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v1, Ljava/lang/String;

    const-string v2, "GyroScope"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 18
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    goto :goto_0

    :cond_0
    const-string v3, "Rotation Vector"

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 20
    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    .line 22
    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    goto :goto_1

    .line 27
    :cond_2
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    .line 28
    :goto_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    .line 31
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 32
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 33
    check-cast v1, Ljava/lang/String;

    const-string v2, "Equirectangular"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    goto :goto_2

    .line 36
    :cond_3
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    .line 37
    :goto_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v1, Ljava/lang/String;

    const-string v2, "Fast"

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    goto :goto_3

    .line 42
    :cond_4
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    :goto_3
    return-void
.end method
