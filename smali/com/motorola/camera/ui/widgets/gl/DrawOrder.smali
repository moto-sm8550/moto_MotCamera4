.class public final enum Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
.super Ljava/lang/Enum;
.source "DrawOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/DrawOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v1, "TEXTURE_ATLAS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v3, "CAMERA_PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v5, "POST_CAPTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v7, "NAV_BAR_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v9, "FOCUS_INDICATOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v11, "COMPOSITION_GUIDE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 7
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "ALWAYS_AWARE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 8
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v15, "CALIBRATION_ERROR_MESSAGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 9
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v14, "FRONT_FLASH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 10
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v12, "TIMER_COUNTDOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 11
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v10, "SHUTTER_INDICATOR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 12
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v8, "HISTOGRAM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 13
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "DEBUG_ID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 14
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "HOLD_STILL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 15
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v2, "PANO_UI_COMPONENT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 16
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "GROUP_SELFIE_UI_COMPONENT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 17
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "MLRN_GROUND_TRUTHS_SELECTOR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 18
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v2, "MOTION_PHOTOS"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 19
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "CINEMAGRAPH"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 20
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "DOC_SCAN_UI"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 21
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v2, "ZOOM_INDICATOR"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 22
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "ZOOM_INDICATOR_FRONT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 23
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "ZOOM_INDICATOR_REAR_MASTER"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 24
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "ZOOM_INDICATOR_REAR_SLAVE"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 25
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "MODES_MENU"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 26
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "MODES_SLIDER"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 27
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "TOUCH_TO_EXPOSE"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 28
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "FACE_DETECT"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 29
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "MEDIA_CODEC"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 30
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "HELP_TOOLTIPS"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 31
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "SIMPLE_TOAST"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 32
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "PICTURE_REVIEW"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 33
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "UX_DUMP"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x21

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v4, v2, v0

    .line 34
    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-object v0
.end method
