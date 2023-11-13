.class public final enum Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
.super Ljava/lang/Enum;
.source "ShutterButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShutterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;


# instance fields
.field public final attr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v1, "CINEMAGRAPH"

    const/4 v2, 0x0

    const v3, 0x7f040445

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v3, "PHOTO"

    const/4 v4, 0x1

    const v5, 0x7f04044b

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v5, "PHOTO_CAPTURING"

    const/4 v6, 0x2

    const v7, 0x7f04044c

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v7, "PHOTO_PROCESSING"

    const/4 v8, 0x3

    const v9, 0x7f04044d

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v9, "TIMER"

    const/4 v10, 0x4

    const v11, 0x7f04044e

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v11, "VIDEO_IDLE"

    const/4 v12, 0x5

    const v13, 0x7f04044f

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 7
    new-instance v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v13, "VIDEO_PROCESSING"

    const/4 v14, 0x6

    const v15, 0x7f040450

    invoke-direct {v11, v13, v14, v15}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 8
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const-string v15, "VIDEO_RECORDING"

    const/4 v14, 0x7

    const v12, 0x7f040451

    invoke-direct {v13, v15, v14, v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->attr:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object v0
.end method
