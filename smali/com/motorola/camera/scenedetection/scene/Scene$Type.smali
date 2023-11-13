.class public final enum Lcom/motorola/camera/scenedetection/scene/Scene$Type;
.super Ljava/lang/Enum;
.source "Scene.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/scenedetection/scene/Scene$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v3, "FOOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v7, "PET_STILL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v9, "PET_MOTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 2
    new-instance v9, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v11, "TODDLER_STILL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v13, "TODDLER_MOTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    new-instance v13, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v15, "PORTRAIT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v15, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v14, "NIGHT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v14, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v12, "HOLIDAY_LIGHTS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 4
    new-instance v12, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v10, "SUNRISE_SUNSET"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v10, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v8, "MOON"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v8, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v6, "FIREWORKS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v4, "MACRO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v2, "BLUE_SKY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v6, "FOCUS_TOO_FAR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v4, "GROUPSHOT"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v2, "MOTO_FLASH"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 5
    new-instance v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v6, "MOTO_MOTION"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v4, "FLOWER"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const-string v2, "GREENERY"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/16 v16, 0x0

    aput-object v0, v2, v16

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

    aput-object v4, v2, v6

    sput-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object v0
.end method
