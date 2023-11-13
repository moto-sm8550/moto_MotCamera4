.class public final enum Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
.super Ljava/lang/Enum;
.source "SuperSlowMotionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum SAVE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v1, "SKIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v3, "CANCEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v5, "SAVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SAVE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
    .locals 1

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    return-object v0
.end method
