.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
.super Ljava/lang/Enum;
.source "ToggleListModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final iconCheckedId:Ljava/lang/Integer;

.field public final iconUncheckedId:Ljava/lang/Integer;

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final summary:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 70

    .line 1
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "INSTANT_REVIEW"

    const/4 v2, 0x0

    const v4, 0x7f1103c0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v12, "CAMERA_CARTOON"

    const/4 v13, 0x1

    const v15, 0x7f1103bd

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3c

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v24, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v2, 0x7f080161

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v22, "AUTO_SMILE_CAPTURE"

    const/16 v23, 0x2

    const v25, 0x7f1103b4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x38

    move-object/from16 v21, v1

    .line 5
    invoke-direct/range {v21 .. v30}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 6
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x7f0801a4

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "AUTO_GESTURE_CAPTURE"

    const/4 v13, 0x3

    const v15, 0x7f1103af

    const/16 v20, 0x38

    move-object v11, v2

    .line 8
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 9
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v24, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v22, "SMART_COMPOSITION"

    const/16 v23, 0x4

    const v25, 0x7f1103b3

    const/16 v26, 0x0

    const/16 v30, 0x3c

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 10
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v5, 0x7f0802d6

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "SHOT_OPTIMIZATION"

    const/4 v13, 0x5

    const v15, 0x7f1103b2

    move-object v11, v4

    .line 12
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 13
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v24, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 14
    sget-object v18, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    const-string v22, "LOW_LIGHT_SELFIE"

    const/16 v23, 0x6

    const v25, 0x7f1103c2

    const/16 v30, 0x2c

    move-object/from16 v21, v5

    move-object/from16 v28, v18

    .line 15
    invoke-direct/range {v21 .. v30}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 16
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v34, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v32, "AI_IMAGE_STABILIZATION"

    const/16 v33, 0x7

    const v35, 0x7f1103b1

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x3c

    move-object/from16 v31, v6

    invoke-direct/range {v31 .. v40}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 17
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v22, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 18
    sget-object v26, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const-string v20, "GOOGLE_LENS"

    const/16 v21, 0x8

    const v23, 0x7f1103b0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x2c

    move-object/from16 v19, v7

    .line 19
    invoke-direct/range {v19 .. v28}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    .line 20
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v32, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v9, 0x7f08015d

    .line 21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v30, "AUTO_MACRO"

    const/16 v31, 0x9

    const v33, 0x7f1103b5

    const/16 v35, 0x0

    const/16 v38, 0x38

    move-object/from16 v29, v8

    .line 22
    invoke-direct/range {v29 .. v38}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 23
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v11, 0x7f080208

    .line 24
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v12, "FRONT_MIRROR"

    const/16 v13, 0xa

    const v15, 0x7f1103d1

    const/16 v19, 0x0

    const/16 v20, 0x28

    move-object v11, v9

    .line 25
    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 26
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v24, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v12, 0x7f080240

    .line 27
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcForAllResolution()Z

    move-result v12

    if-eqz v12, :cond_0

    const v12, 0x7f110225

    goto :goto_0

    :cond_0
    const v12, 0x7f110226

    .line 29
    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x10

    const/16 v23, 0xb

    const v25, 0x7f1103e3

    const/16 v18, 0x0

    const/16 v28, 0x0

    const-string v22, "EFFICIENT_VIDEO"

    move-object/from16 v21, v11

    move-object/from16 v26, v27

    .line 30
    invoke-direct/range {v21 .. v30}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 31
    new-instance v22, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v33, 0xc

    sget-object v34, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v35, 0x7f1103de

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x3c

    const-string v32, "AUDIO_ZOOM"

    move-object/from16 v31, v22

    invoke-direct/range {v31 .. v40}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 32
    new-instance v23, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v43, 0xd

    sget-object v44, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v45, 0x7f1103dd

    const/16 v46, 0x0

    const/16 v19, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x3c

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-string v42, "AUDIO_NOISE_CANCELLATION"

    move-object/from16 v41, v23

    invoke-direct/range {v41 .. v50}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 33
    new-instance v34, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v26, 0xe

    sget-object v27, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v28, 0x7f1103df

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x3c

    const-string v25, "AUTO_FOCUS_TRACING"

    move-object/from16 v24, v34

    invoke-direct/range {v24 .. v33}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 34
    new-instance v24, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v14, 0xf

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v16, 0x7f1103bc

    const v12, 0x7f08022c

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f11024e

    goto :goto_1

    :cond_1
    const v12, 0x7f11024d

    .line 37
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x8

    const-string v13, "TAP_ANYWHERE"

    move-object/from16 v12, v24

    .line 38
    invoke-direct/range {v12 .. v21}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 39
    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v37, 0x10

    sget-object v38, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v39, 0x7f1103bb

    const v13, 0x7f080223

    .line 40
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v44, 0x38

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-string v36, "SHUTTER_SOUND"

    move-object/from16 v35, v12

    .line 41
    invoke-direct/range {v35 .. v44}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 42
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v52, 0x11

    sget-object v53, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v54, 0x7f1103b8

    const/16 v40, 0x0

    const/16 v44, 0x3c

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x3c

    const-string v51, "GRID"

    move-object/from16 v50, v13

    invoke-direct/range {v50 .. v59}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 43
    new-instance v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v62, 0x12

    sget-object v63, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v64, 0x7f1103ba

    const/16 v46, 0x0

    const/16 v50, 0x3c

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x3c

    const-string v61, "LEVELER"

    move-object/from16 v60, v14

    invoke-direct/range {v60 .. v69}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 44
    new-instance v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v37, 0x13

    sget-object v38, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v39, 0x7f1103b9

    const-string v36, "KEEP_LAST_MODE"

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v44}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    .line 45
    new-instance v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v43, 0x14

    sget-object v44, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v45, 0x7f1103d6

    const-string v42, "LOCATION"

    move-object/from16 v41, v16

    invoke-direct/range {v41 .. v50}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V

    move-object/from16 v17, v15

    const/16 v15, 0x15

    new-array v15, v15, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const/16 v18, 0x0

    aput-object v10, v15, v18

    const/4 v10, 0x1

    aput-object v0, v15, v10

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v22, v15, v0

    const/16 v0, 0xd

    aput-object v23, v15, v0

    const/16 v0, 0xe

    aput-object v34, v15, v0

    const/16 v0, 0xf

    aput-object v24, v15, v0

    const/16 v0, 0x10

    aput-object v12, v15, v0

    const/16 v0, 0x11

    aput-object v13, v15, v0

    const/16 v0, 0x12

    aput-object v14, v15, v0

    const/16 v0, 0x13

    aput-object v17, v15, v0

    const/16 v0, 0x14

    aput-object v16, v15, v0

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p5, v1

    :cond_0
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_1

    move-object p6, v1

    :cond_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    move-object p7, v1

    :cond_2
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_3

    move-object p8, v1

    .line 1
    :cond_3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    .line 6
    iput-object p7, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object v0
.end method
