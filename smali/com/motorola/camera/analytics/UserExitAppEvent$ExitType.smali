.class public final enum Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
.super Ljava/lang/Enum;
.source "UserExitAppEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/UserExitAppEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum LIVESTREAM:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;


# instance fields
.field public final mCheckinName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v1, "MISC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 2
    new-instance v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    new-instance v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v5, "GALLERY"

    const/4 v6, 0x2

    const-string v7, "GALRY"

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 4
    new-instance v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v7, "POWER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 5
    new-instance v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v9, "TIMEDOUT"

    const/4 v10, 0x4

    const-string v11, "TMOUT"

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 6
    new-instance v9, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v11, "USER_REQ"

    const/4 v12, 0x5

    const-string v13, "UREQ"

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    new-instance v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    const-string v15, "ERR"

    invoke-direct {v11, v13, v14, v15}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 8
    new-instance v13, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "SMART_CAM"

    const/4 v14, 0x7

    const-string v12, "SMRTCAM"

    invoke-direct {v13, v15, v14, v12}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    new-instance v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "LIVESTREAM"

    const/16 v14, 0x8

    const-string v10, "LIVE"

    invoke-direct {v12, v15, v14, v10}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->LIVESTREAM:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 10
    new-instance v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "YOUTUBE_LIVE"

    const/16 v14, 0x9

    const-string v8, "YTBLIVE"

    invoke-direct {v10, v15, v14, v8}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 11
    new-instance v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "VIDEO_PLAYER"

    const/16 v14, 0xa

    const-string v6, "VIDPL"

    invoke-direct {v8, v15, v14, v6}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 12
    new-instance v6, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "SETTINGS_LOCATION"

    const/16 v14, 0xb

    const-string v4, "SETSLOC"

    invoke-direct {v6, v15, v14, v4}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 13
    new-instance v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "MOTO_ACTIONS"

    const/16 v14, 0xc

    const-string v2, "MOTOACTS"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 14
    new-instance v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "GOOGLE_LENS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "LENS"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 15
    new-instance v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "CINEMAGRAPH"

    const/16 v14, 0xe

    invoke-direct {v4, v15, v14, v15}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 16
    new-instance v15, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v14, "OBJECT_DETECTION"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v2

    const-string v2, "OBJDET"

    invoke-direct {v15, v14, v4, v2}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 17
    new-instance v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v14, "PHOTOS_STABILIZE"

    const/16 v4, 0x10

    move-object/from16 v19, v15

    const-string v15, "PHSTB"

    invoke-direct {v2, v14, v4, v15}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 18
    new-instance v14, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "DND_PERMISSION_REQUEST"

    const/16 v4, 0x11

    move-object/from16 v20, v2

    const-string v2, "DNDPR"

    invoke-direct {v14, v15, v4, v2}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    .line 19
    new-instance v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v15, "MOTO_FEEDBACK"

    const/16 v4, 0x12

    move-object/from16 v21, v14

    const-string v14, "MOTFD"

    invoke-direct {v2, v15, v4, v14}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v12, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v8, v14, v0

    const/16 v0, 0xb

    aput-object v6, v14, v0

    const/16 v0, 0xc

    aput-object v16, v14, v0

    const/16 v0, 0xd

    aput-object v18, v14, v0

    const/16 v0, 0xe

    aput-object v17, v14, v0

    const/16 v0, 0xf

    aput-object v19, v14, v0

    const/16 v0, 0x10

    aput-object v20, v14, v0

    const/16 v0, 0x11

    aput-object v21, v14, v0

    aput-object v2, v14, v4

    .line 20
    sput-object v14, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-object p0
.end method
