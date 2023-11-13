.class public final enum Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
.super Ljava/lang/Enum;
.source "FsmContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/FsmContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubStateMachineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v1, "AUTO_FOCUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v3, "AUTO_FOCUS_TRACKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    new-instance v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v5, "DEBUG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 4
    new-instance v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v7, "ENV_INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 5
    new-instance v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v9, "EXPOSURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 6
    new-instance v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v11, "FACE_DETECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 7
    new-instance v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v13, "MCF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 8
    new-instance v13, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v15, "MCF_ML"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 9
    new-instance v15, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v14, "MULTI_CAMERA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 10
    new-instance v14, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v12, "MULTISHOT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 11
    new-instance v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v10, "ROI"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 12
    new-instance v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v8, "TORCH_CONTROL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 13
    new-instance v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v6, "ZOOM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    return-object v0
.end method
