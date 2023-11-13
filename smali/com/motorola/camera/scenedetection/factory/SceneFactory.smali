.class public abstract Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.super Ljava/lang/Object;
.source "SceneFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

.field public static final factory$delegate:Lkotlin/SynchronizedLazyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/motorola/camera/scenedetection/factory/SceneFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    .line 1
    sget-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;->INSTANCE:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;

    .line 2
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 3
    sput-object v1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 2
    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f110022

    const/16 v3, 0xc

    const/4 v4, 0x1

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 12

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_1
    move-object v9, v0

    .line 6
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v3, 0x1

    const/16 v1, 0x10

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 8
    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;ILjava/lang/Integer;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Z)V

    return-object v0

    :cond_2
    const-string p0, "SceneFactory"

    const-string v0, "Macro exit scene raised by MCF in non-macro mode?"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110024

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110026

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_1

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    const-string p0, "SceneFactory"

    const-string p1, "Lens scene text resource not found"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f110570

    goto :goto_0

    :cond_0
    const p0, 0x7f11002f

    goto :goto_0

    :cond_1
    const p0, 0x7f11002d

    :goto_0
    return p0
.end method

.method public getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 2
    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    const v2, 0x7f110028

    const/4 v3, 0x5

    const/4 v4, 0x1

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110029

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 17

    const-string v0, "sceneType"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    const-string v1, "getCurrentCameraType()"

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 2
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    .line 3
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    .line 4
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    .line 5
    :pswitch_4
    sget-object v7, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsHelper;->isGroupSelfieSupported(Z)Z

    move-result v6

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result v8

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 10
    iget-object v9, v8, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 11
    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 12
    iget-object v11, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    invoke-virtual {v9, v8, v10, v11}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 14
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Landroid/util/Size;)Z

    move-result v8

    goto :goto_0

    :cond_1
    move v8, v4

    .line 15
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    if-eqz v8, :cond_b

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    :goto_2
    move-object v14, v0

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    .line 20
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    .line 21
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    .line 22
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v14, v6, :cond_6

    if-eqz v0, :cond_5

    .line 23
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v14, v0, :cond_6

    :cond_5
    move v12, v2

    goto :goto_4

    :cond_6
    move v12, v4

    .line 24
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 25
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    if-eqz v2, :cond_8

    const/4 v3, 0x2

    :cond_8
    move v8, v3

    .line 28
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    sget-object v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    :cond_9
    move-object v15, v5

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result v0

    goto :goto_6

    .line 32
    :cond_a
    invoke-static {v14}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    :goto_6
    move v11, v0

    .line 33
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    const/4 v9, 0x0

    const v10, 0x7f110032

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object v6, v5

    .line 35
    invoke-direct/range {v6 .. v16}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;ILjava/lang/Integer;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Z)V

    goto/16 :goto_8

    :cond_b
    if-eqz v6, :cond_e

    if-eqz v0, :cond_e

    .line 36
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const v0, 0x7f0801a7

    const v1, 0x7f11002c

    const/16 v2, 0x9

    invoke-direct {v5, v7, v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto/16 :goto_8

    .line 37
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    .line 38
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    .line 39
    :pswitch_7
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/16 v4, 0xf

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v5, v2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I

    move-result v5

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;ILjava/lang/Integer;IFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Z)V

    move-object v5, v0

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v5, p0

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v5, p0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v5, p0

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_b
    move-object/from16 v5, p0

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    .line 47
    :pswitch_c
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez p2, :cond_c

    goto :goto_7

    :cond_c
    move v2, v4

    .line 48
    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result v1

    const v3, 0x7f11002e

    const/16 v4, 0xe

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 49
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const/16 v1, 0x18

    invoke-direct {v5, v0, v4, v3, v1}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto :goto_8

    .line 50
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitSupported()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v2, :cond_e

    .line 51
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const/16 v1, 0x1f

    invoke-direct {v5, v0, v4, v3, v1}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto :goto_8

    .line 52
    :pswitch_d
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;

    invoke-direct {v5}, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;-><init>()V

    goto :goto_8

    :pswitch_e
    move-object/from16 v5, p0

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_f
    move-object/from16 v5, p0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_10
    move-object/from16 v5, p0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_11
    move-object/from16 v5, p0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    :cond_e
    :goto_8
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f11002a

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110029

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method
