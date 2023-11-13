.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
.super Ljava/lang/Enum;
.source "Trigger.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v3, "MEDIA_CONTROL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v5, "SHUTTER_BTN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v7, "TOUCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v9, "VOICE_ASSISTANT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v9, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v11, "STYLUS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    return-object v0
.end method
