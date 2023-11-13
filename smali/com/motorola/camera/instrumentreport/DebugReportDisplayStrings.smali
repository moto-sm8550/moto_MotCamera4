.class public final Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.super Ljava/lang/Object;
.source "DebugReportDisplayStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;,
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;,
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;
    }
.end annotation


# static fields
.field public static mDebugReportDisplayStrings:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# instance fields
.field public final mColdStartStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTranslateObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    .line 3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    .line 4
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v2, 0x7f1100a2

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v2, 0x7f11055e

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f11019a

    .line 8
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "HAL_FOCUS_CALLBACK"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "HAL_FOCUS_CALLBACK"

    .line 9
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f11019c

    .line 11
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "HAL_GET_PARAMS"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "HAL_GET_PARAMS"

    .line 12
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110329

    .line 14
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "HAL_SET_PARAMS"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "HAL_SET_PARAMS"

    .line 15
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f1103f0

    .line 17
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "HAL_SHUTTER_CALLBACK"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "HAL_SHUTTER_CALLBACK"

    .line 18
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f1101da

    .line 20
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "HAL_PICTURE_CALLBACK_JPEG"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "HAL_PICTURE_CALLBACK_JPEG"

    .line 21
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const-string v2, "PANORAMA_SAVE"

    const-string v3, "Panorama save time"

    move-object v0, v6

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "PANORAMA_SAVE"

    .line 24
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f11026f

    .line 26
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "MR_STOP"

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "MR_STOP"

    .line 27
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v1, 0x7f1103ee

    .line 29
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHOT_TO_SHOT_O"

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v1, 0x7f1103ef

    .line 32
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHOT_TO_SHOT_UI_O"

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v1, 0x7f1103f1

    .line 35
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHUTTER_LAG_O"

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f11041e

    .line 38
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "START_PREVIEW"

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "START_PREVIEW"

    .line 39
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110420

    .line 41
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "START_TO_HAL_OPEN"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "START_TO_HAL_OPEN"

    .line 42
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f11041f

    .line 44
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "STARTUP_PREVIEW_FRAME_O"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "STARTUP_PREVIEW_FRAME_O"

    .line 45
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f110086

    .line 48
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f1104df

    .line 49
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOGGLE_CAMERA_O"

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "TOGGLE_CAMERA_O"

    .line 50
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v11, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOGGLE_MODE_O"

    const/4 v6, 0x1

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string v0, "TOGGLE_MODE_O"

    .line 55
    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110084

    .line 57
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOTAL_STARTUP_O"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "TOTAL_STARTUP_O"

    .line 58
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110080

    .line 60
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOTAL_COLD_O"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "TOTAL_COLD_O"

    .line 61
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110085

    .line 63
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOTAL_STARTUP_W_CAF_O"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "TOTAL_STARTUP_W_CAF_O"

    .line 64
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f11055d

    .line 65
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 66
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f11054c

    .line 69
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 70
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 72
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110416

    .line 73
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    .line 74
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1102aa

    .line 77
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 78
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1102c0

    .line 81
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 82
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 84
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f11019e

    .line 85
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 86
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 88
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110547

    .line 90
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "VIDEO_COMPLETION"

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "VIDEO_COMPLETION"

    .line 91
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f1102a8

    .line 93
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "MULTI_SHOT_TO_SHOT"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "MULTI_SHOT_TO_SHOT"

    .line 94
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f1102a6

    .line 96
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "MULTI_SHOT_AVG"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "MULTI_SHOT_AVG"

    .line 97
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f1102a7

    .line 99
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "MULTI_SHOT_COUNT"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "MULTI_SHOT_COUNT"

    .line 100
    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v0, 0x7f110037

    .line 102
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "TOTAL_CAPTURE_TIME_O"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string v0, "TOTAL_CAPTURE_TIME_O"

    .line 103
    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
