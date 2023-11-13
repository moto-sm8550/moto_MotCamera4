.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    .line 1
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1102ca

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f1102c9

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f1102c8

    .line 6
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f110115

    .line 7
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$Companion$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 9
    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->updateCameraGroupDrawable(I)V

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->show()V

    return-void

    .line 13
    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ALPHA_ENABLED:F

    const-string v1, "$this_animateEnable"

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 16
    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 18
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 20
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 22
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    return-void

    .line 23
    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    sget v1, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->$r8$clinit:I

    .line 24
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-boolean v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    .line 26
    new-instance v1, Ljava/io/File;

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->UXDUMP:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 28
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 30
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 31
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_ROTATION:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    const-string v7, "0"

    invoke-interface {v1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->EXTRA_NODE_RESOURCE:Ljava/lang/String;

    invoke-interface {v1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    const-string v12, ""

    invoke-interface {v1, v4, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-interface {v1, v4, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v4, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    const-string v13, "false"

    invoke-interface {v1, v4, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    new-instance v6, Lcom/motorola/camera/utility/UxBounds;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    const/4 v14, 0x0

    invoke-direct {v6, v14, v14, v8, v7}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 42
    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    iput v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    .line 44
    iput v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 45
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 46
    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.CameraPreview"

    .line 47
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 48
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 49
    invoke-virtual {v0, v6, v1, v2, v7}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 50
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 52
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    const-string v7, "mTextureManager.allComponents"

    .line 53
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v6}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_1d

    const-string v11, "item.value"

    const-string v10, "item.key"

    if-eq v7, v3, :cond_17

    const/16 v8, 0x11

    if-eq v7, v8, :cond_16

    const/16 v8, 0x14

    if-eq v7, v8, :cond_8

    const/16 v8, 0x20

    if-eq v7, v8, :cond_1d

    const/16 v8, 0x18

    if-eq v7, v8, :cond_7

    const/16 v8, 0x19

    if-eq v7, v8, :cond_1

    goto/16 :goto_a

    .line 56
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 57
    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 58
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 59
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_a

    .line 60
    :cond_2
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 61
    invoke-virtual {v0, v7, v1, v6, v9}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 62
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 64
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget-boolean v8, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v8, :cond_4

    const-string v8, "mode_slider_menu_button"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v7, v4

    :cond_4
    :goto_2
    const-string v6, "modeSlider.childs"

    .line 65
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v2

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 67
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v7

    .line 68
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 69
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/RectF;

    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v3, v7, v14}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 70
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 71
    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 72
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v19, v17, 0x1

    move-object v6, v0

    move-object/from16 v20, v9

    move-object v9, v1

    move-object v14, v10

    move/from16 v10, v17

    move-object v2, v11

    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 73
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v17, v19

    goto :goto_4

    :cond_5
    move-object/from16 v20, v9

    move-object v14, v10

    move-object v2, v11

    :goto_4
    move-object v11, v2

    move-object v10, v14

    move-object/from16 v9, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v14, 0x0

    goto :goto_3

    .line 74
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_a

    :cond_7
    move-object v14, v10

    move-object v2, v11

    move-object/from16 v19, v5

    goto/16 :goto_b

    :cond_8
    move-object v14, v10

    move-object v2, v11

    .line 75
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 76
    iget v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 77
    const-class v6, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ZoomComponent"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    .line 78
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_9

    .line 79
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    iget v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v4, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    const-string v10, "Zoom_slider"

    invoke-interface {v1, v4, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v4, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v4, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v4, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v10, 0x4

    .line 87
    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 88
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v8

    .line 89
    new-instance v10, Lcom/motorola/camera/utility/UxBounds;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v9

    sub-float/2addr v11, v4

    .line 90
    iget v4, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v15

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v9

    sub-float/2addr v4, v15

    .line 91
    iget v15, v8, Landroid/graphics/PointF;->x:F

    move-object/from16 v19, v5

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v9

    add-float/2addr v5, v15

    .line 92
    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v9

    add-float/2addr v15, v8

    .line 93
    invoke-direct {v10, v11, v4, v5, v15}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 94
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    :cond_9
    move-object v8, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v15

    .line 96
    :goto_5
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v4

    const-string v5, "Zoom_button"

    if-eqz v4, :cond_12

    .line 97
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v8, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v8, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v8, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 105
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v8

    .line 106
    new-instance v10, Lcom/motorola/camera/utility/UxBounds;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v15, v9

    sub-float/2addr v11, v15

    .line 107
    iget v15, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v13

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->y:F

    div-float/2addr v13, v9

    sub-float/2addr v15, v13

    .line 108
    iget v13, v8, Landroid/graphics/PointF;->x:F

    move-object/from16 v21, v6

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v9

    add-float/2addr v6, v13

    .line 109
    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->y:F

    div-float/2addr v13, v9

    add-float/2addr v13, v8

    .line 110
    invoke-direct {v10, v11, v15, v6, v13}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 111
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v1, v10, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v10, :cond_a

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_a

    const-string/jumbo v11, "zoom_toggle_tele"

    .line 115
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_a
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_b

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "zoom_toggle_wide"

    .line 117
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_b
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v10, :cond_c

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_c

    const-string/jumbo v11, "zoom_toggle_uwide"

    .line 119
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_c
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v10, :cond_d

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_d

    const-string/jumbo v11, "zoom_toggle_macro"

    .line 121
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_d
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v6, :cond_f

    iget-boolean v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_f

    const-string/jumbo v10, "zoom_toggle_close_up"

    .line 123
    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    :cond_f
    :goto_6
    const-string/jumbo v6, "zoomComponent.childs"

    .line 124
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_10
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 126
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v11

    .line 127
    iget v13, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v15, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 128
    iget v9, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v13, v9

    .line 129
    iget v9, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v15, v9

    .line 130
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v11, v8, 0x1

    move-object/from16 v22, v4

    .line 131
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 139
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    iget v8, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v6, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 141
    invoke-virtual {v6, v4, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v4, 0x2

    new-array v8, v4, [F

    const/4 v9, 0x0

    aput v13, v8, v9

    const/4 v13, 0x1

    aput v15, v8, v13

    new-array v4, v4, [F

    .line 142
    invoke-virtual {v6, v4, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 143
    new-instance v6, Landroid/graphics/PointF;

    aget v8, v4, v9

    aget v4, v4, v13

    invoke-direct {v6, v8, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 144
    new-instance v4, Lcom/motorola/camera/utility/UxBounds;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v9, v13

    sub-float/2addr v8, v9

    .line 145
    iget v9, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v13

    sub-float/2addr v9, v15

    .line 146
    iget v15, v6, Landroid/graphics/PointF;->x:F

    move/from16 v24, v11

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v13

    add-float/2addr v11, v15

    .line 147
    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, v13

    add-float/2addr v10, v6

    .line 148
    invoke-direct {v4, v8, v9, v11, v10}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 149
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v1, v9, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    move/from16 v8, v24

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_7

    :cond_11
    const/4 v9, 0x0

    .line 151
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v20, v13

    .line 152
    :goto_8
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v2, :cond_13

    .line 153
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_14

    .line 154
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    move-object/from16 v3, v20

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 162
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v2

    .line 163
    new-instance v4, Lcom/motorola/camera/utility/UxBounds;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 164
    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    .line 165
    iget v9, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    .line 166
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 167
    invoke-direct {v4, v5, v6, v10, v7}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 168
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v7, v5

    goto/16 :goto_10

    :cond_14
    move-object/from16 v3, v20

    goto/16 :goto_f

    :cond_15
    :goto_a
    move-object/from16 v19, v5

    move-object v3, v13

    move-object/from16 v17, v15

    move-object v13, v3

    move-object/from16 v15, v17

    move-object/from16 v5, v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_16
    move-object/from16 v19, v5

    move-object v3, v13

    move-object/from16 v17, v15

    move-object v7, v4

    move/from16 v20, v14

    const/4 v15, 0x1

    goto/16 :goto_11

    :cond_17
    move-object/from16 v19, v5

    move-object v14, v10

    move-object v2, v11

    :goto_b
    move-object v3, v13

    move-object/from16 v17, v15

    .line 170
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 171
    iget v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 172
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 173
    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeMenuComponent"

    .line 174
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 175
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    .line 176
    invoke-virtual {v0, v5, v1, v4, v13}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 177
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 179
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 180
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Object;

    .line 181
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const-string v9, "mode_%d"

    .line 182
    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_18
    const/4 v15, 0x1

    goto :goto_d

    :cond_19
    const/4 v15, 0x1

    const/4 v8, 0x0

    :goto_d
    const-string v4, "modeMenus.childs"

    .line 184
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v10, 0x0

    :cond_1a
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 186
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v6

    .line 187
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 188
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v6, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 189
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v9, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 190
    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 191
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v5, v10, 0x1

    move-object v6, v0

    move-object/from16 v18, v9

    move-object v9, v1

    move/from16 v20, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 192
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v10, v5

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    const/16 v20, 0x0

    .line 193
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    :cond_1c
    :goto_f
    const/4 v7, 0x0

    :goto_10
    const/4 v15, 0x1

    const/16 v20, 0x0

    goto :goto_11

    :cond_1d
    move-object v7, v4

    move-object/from16 v19, v5

    move/from16 v20, v14

    move-object/from16 v17, v15

    move v15, v3

    move-object v3, v13

    :goto_11
    move-object v13, v3

    move-object v4, v7

    move v3, v15

    move-object/from16 v15, v17

    move-object/from16 v5, v19

    move/from16 v14, v20

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object v7, v4

    move-object/from16 v19, v5

    .line 194
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 197
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
