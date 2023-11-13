.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
.super Ljava/lang/Enum;
.source "Trigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadsetPlugStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v3, "PLUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v5, "UNPLUG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-object v0
.end method
