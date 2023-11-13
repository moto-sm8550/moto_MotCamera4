.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
.super Ljava/lang/Enum;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

.field public static final enum DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

.field public static final enum LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

.field public static final enum RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

.field public static final enum UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

.field public static final enum UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v7, "UP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v9, "DOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object v0
.end method
