.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
.super Ljava/lang/Enum;
.source "IgnoreResetListModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;


# instance fields
.field public final settingString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "ASPECT_RATIO.mName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ASPECT_RATIO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v4, "CTA_PERMISSION_CLICK.mName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "CTA_PERMISSION_CLICK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v6, "DUAL_CAMERA_MODE.mName"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "DUAL_CAMERA_MODE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v8, "PICTURE_SIZE.mName"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "PICTURE_SIZE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v10, "PICTURE_SIZE_FRONT.mName"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "PICTURE_SIZE_FRONT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v12, "PICTURE_SIZE_REAR.mName"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "PICTURE_SIZE_REAR"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v12, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v14, "PICTURE_SIZE_CLI.mName"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "PICTURE_SIZE_CLI"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v15, "VIDEO_RESOLUTION.mName"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "VIDEO_RESOLUTION"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    new-instance v14, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v13, "VIDEO_SLOW_MO_RESOLUTION.mName"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "VIDEO_SLOW_MO_RESOLUTION"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v11, "VIDEO_SIZE.mName"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "VIDEO_SIZE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v9, "VIDEO_SLOW_MO_SIZE.mName"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "VIDEO_SLOW_MO_SIZE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v7, "VIDEO_ASPECT_RATIO.mName"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "VIDEO_ASPECT_RATIO"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v5, "VIDEO_SLOW_MO_ASPECT_RATIO.mName"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "VIDEO_SLOW_MO_ASPECT_RATIO"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "VIDEO_FRAME_RATE.mName"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "VIDEO_FRAME_RATE"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v7, "VIDEO_SLOW_MO_FRAME_RATE.mName"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "VIDEO_SLOW_MO_FRAME_RATE"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v5, "VIDEO_STABILIZATION.mName"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "VIDEO_STABILIZATION"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "PHOTOS_APP_STABILIZATION.mName"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PHOTOS_APP_STABILIZATION"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v7, "TIPS_UNREAD_BADGE_COUNT.mName"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "TIPS_UNREAD_BADGE_COUNT"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v5, "TIPS_TO_SHOW_QUANTITY.mName"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "TIPS_TO_SHOW_QUANTITY"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "MTK_SMVR_MODE_AVAILABLE.mName"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MTK_SMVR_MODE_AVAILABLE"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v7, "FACE_BEAUTY_REGION_CONFIG.mName"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "FACE_BEAUTY_REGION_CONFIG"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v5, "GEO_LOCATION.mName"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "GEO_LOCATION"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "GEO_LOCATION_ALLOW.mName"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "GEO_LOCATION_ALLOW"

    move-object/from16 v25, v7

    const/16 v7, 0x16

    invoke-direct {v5, v3, v7, v15}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v15, "GEO_LOCATION_STATE.mName"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "GEO_LOCATION_STATE"

    move-object/from16 v26, v5

    const/16 v5, 0x17

    invoke-direct {v3, v15, v5, v7}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v5, 0x18

    new-array v5, v5, [Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v3, v5, v0

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->settingString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    return-object v0
.end method
