.class public final enum Lcom/motorola/camera/fsm/ChangeEvent$Type;
.super Ljava/lang/Enum;
.source "ChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/ChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/ChangeEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/ChangeEvent$Type;

.field public static final enum ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

.field public static final enum EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

.field public static final enum REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    const-string v1, "EXITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    new-instance v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    const-string v3, "ENTERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/ChangeEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    new-instance v3, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    const-string v5, "REENTERING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/ChangeEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/fsm/ChangeEvent$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/fsm/ChangeEvent$Type;->$VALUES:[Lcom/motorola/camera/fsm/ChangeEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/ChangeEvent$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/ChangeEvent$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->$VALUES:[Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/ChangeEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/ChangeEvent$Type;

    return-object v0
.end method
