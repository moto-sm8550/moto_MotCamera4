.class public final enum Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
.super Ljava/lang/Enum;
.source "SurfaceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/SurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v3, "MINI_PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v5, "CAPTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v9, "FULL_YUV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v11, "GAIN_DETECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 2
    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v13, "RAW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v15, "SUB_PREVIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->$VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->$VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-object v0
.end method
