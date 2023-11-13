.class public final enum Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
.super Ljava/lang/Enum;
.source "MediaCodecHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mediacodec/MediaCodecHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    .line 2
    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v3, "STOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    .line 3
    new-instance v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    .line 4
    new-instance v5, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v7, "RESUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    .line 5
    new-instance v7, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v9, "EOF_INPUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    .line 6
    new-instance v9, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v11, "EOF_OUTPUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    return-object v0
.end method
