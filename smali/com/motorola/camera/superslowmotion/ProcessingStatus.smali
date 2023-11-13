.class public final enum Lcom/motorola/camera/superslowmotion/ProcessingStatus;
.super Ljava/lang/Enum;
.source "ProcessingStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/superslowmotion/ProcessingStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum CANCELING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

.field public static final enum SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 2
    new-instance v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 3
    new-instance v3, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v5, "SETTING_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 4
    new-instance v5, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v7, "PROCESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 5
    new-instance v7, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v9, "CANCELING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->CANCELING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 6
    new-instance v9, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v11, "COMPLETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 7
    new-instance v11, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 8
    new-instance v13, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string v15, "DONE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->$VALUES:[Lcom/motorola/camera/superslowmotion/ProcessingStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/superslowmotion/ProcessingStatus;
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/superslowmotion/ProcessingStatus;
    .locals 1

    sget-object v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->$VALUES:[Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    return-object v0
.end method
