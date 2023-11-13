.class public final enum Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
.super Ljava/lang/Enum;
.source "TouchKeepOutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMPONENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

.field public static final enum MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

.field public static final enum PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v1, "MODES_SLIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    .line 2
    new-instance v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v3, "FACE_BEAUTY_SLIDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v5, "LIVE_FILTER_BAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v5, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v7, "GALLERY_THUMBNAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v7, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v9, "PIP_PREVIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->$VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->$VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-virtual {v0}, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    return-object v0
.end method
