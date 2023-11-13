.class public final enum Lcom/motorola/camera/fsm/camera/Constants$UseCase;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Constants$UseCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public static final enum VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v1, "CAMERA_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v3, "CAMERA_SWITCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v5, "MODE_SWITCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 2
    new-instance v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v7, "MONO_SWITCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v9, "CONTROL_PANEL_CHANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v11, "CONTROL_PANEL_REOPEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 3
    new-instance v11, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v13, "SAME_FACING_SWITCH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v13, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v15, "CAMERA_AND_MODE_SWITCH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    new-instance v15, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const-string v14, "VIDEO_RESTART"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/fsm/camera/Constants$UseCase;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 4
    sput-object v14, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Constants$UseCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    return-object v0
.end method
