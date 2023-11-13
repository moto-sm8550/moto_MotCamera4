.class public final enum Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum CONTROL_PANEL_ENTER_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum CONTROL_PANEL_EXIT_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum DUAL_CAPTURE_ZOOM:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

.field public static final enum SLIDER_BAR_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v1, "NONE_SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v3, "MENU_SWITCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v5, "NORMAL_CASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v7, "HIDE_MENU_CASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    .line 2
    new-instance v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v9, "CONTROL_PANEL_CHANGE_CASE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v11, "SLIDER_BAR_CHANGE_CASE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->SLIDER_BAR_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v11, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v13, "DUAL_CAPTURE_LAYOUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    .line 3
    new-instance v13, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v15, "DUAL_CAPTURE_CAMERA_GROUP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v15, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v14, "DUAL_CAPTURE_ZOOM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_ZOOM:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    new-instance v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v12, "CONTROL_PANEL_ENTER_HDR10"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    .line 4
    new-instance v12, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string v10, "CONTROL_PANEL_EXIT_HDR10"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_EXIT_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 5
    sput-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->$VALUES:[Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object v0
.end method
