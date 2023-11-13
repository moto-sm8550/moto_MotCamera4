.class public final enum Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;
.super Ljava/lang/Enum;
.source "RoiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

.field public static final enum ROI_ACTIVE:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

.field public static final enum ROI_ACTIVE_LOCK:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

.field public static final enum ROI_NOT_ACTIVE:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    const-string v1, "ROI_NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->ROI_NOT_ACTIVE:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    new-instance v1, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    const-string v3, "ROI_ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->ROI_ACTIVE:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    new-instance v3, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    const-string v5, "ROI_ACTIVE_LOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->ROI_ACTIVE_LOCK:Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;

    return-object v0
.end method
