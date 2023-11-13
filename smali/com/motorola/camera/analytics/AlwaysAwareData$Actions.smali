.class public final enum Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
.super Ljava/lang/Enum;
.source "AlwaysAwareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/AlwaysAwareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum BACK_BUTTON:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum CAMERA_TIMEOUT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SWIPE_TO_DISMISS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum TOUCH_OUTSIDE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;


# instance fields
.field public final checkInData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 2
    new-instance v1, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v3, "ADD_CONTACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 3
    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v5, "COPY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 4
    new-instance v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v7, "CALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 5
    new-instance v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v9, "EMAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 6
    new-instance v9, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v11, "ADD_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 7
    new-instance v11, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v13, "MAP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 8
    new-instance v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v15, "SHARE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 9
    new-instance v15, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v14, "SMS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 10
    new-instance v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v12, "WEB"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 11
    new-instance v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v10, "WIFI"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 12
    new-instance v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v8, "SEARCH"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 13
    new-instance v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "SWIPE_TO_DISMISS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SWIPE_TO_DISMISS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 14
    new-instance v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v4, "RETRY"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v2, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    .line 15
    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v2, "CANCEL"

    const/16 v8, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0x16

    invoke-direct {v4, v2, v8, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "BACK_BUTTON"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->BACK_BUTTON:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 17
    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "TOUCH_OUTSIDE"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->TOUCH_OUTSIDE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 18
    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "CAMERA_TIMEOUT"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CAMERA_TIMEOUT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 19
    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "MOTORDP"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 20
    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "MONOPOLY"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    .line 21
    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const-string v6, "MATTER"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

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

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v8

    .line 22
    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-object v0
.end method
