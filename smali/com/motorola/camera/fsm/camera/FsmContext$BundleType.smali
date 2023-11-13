.class public final enum Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;
.super Ljava/lang/Enum;
.source "FsmContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/FsmContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum BOKEH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum SMART_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum WIFI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public static final enum ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v3, "BOKEH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->BOKEH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    new-instance v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "CINEMAGRAPH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 4
    new-instance v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v7, "EXP_COMP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 5
    new-instance v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v9, "ERROR_RETRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 6
    new-instance v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "FIRST_USE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    new-instance v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v13, "GALLERY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 8
    new-instance v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v15, "HISTORY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 9
    new-instance v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v14, "MODE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 10
    new-instance v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v12, "MULTI_SHOT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 11
    new-instance v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v10, "PANO_SHOT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 12
    new-instance v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v8, "PERMISSIONS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 13
    new-instance v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "PHOTO_ROLL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    .line 14
    new-instance v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v4, "ROI"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 15
    new-instance v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "SESSION"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 16
    new-instance v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "SETTINGS"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 17
    new-instance v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v4, "SINGLE_SHOT"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 18
    new-instance v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "SMART_CAMERA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SMART_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 19
    new-instance v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "TOP_BAR_TORCH_AUTO"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v4, "VIDEO"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 21
    new-instance v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "VIEWFINDER"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    .line 22
    new-instance v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v6, "ZOOM"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 23
    new-instance v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v4, "WIFI"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->WIFI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v4, 0x0

    aput-object v0, v2, v4

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

    aput-object v6, v2, v0

    .line 24
    sput-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    return-object v0
.end method
