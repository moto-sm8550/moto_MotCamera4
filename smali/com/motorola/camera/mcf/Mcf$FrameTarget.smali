.class public final enum Lcom/motorola/camera/mcf/Mcf$FrameTarget;
.super Ljava/lang/Enum;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$FrameTarget;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;


# instance fields
.field public final mIntValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v3, "APP_JPEG_REPROC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    .line 3
    new-instance v3, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v5, "MCF_NEW_FRAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    .line 4
    new-instance v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v7, "MCF_REPROC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->mIntValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$FrameTarget;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$FrameTarget;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-object v0
.end method
