.class public final enum Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
.super Ljava/lang/Enum;
.source "SettingSoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/SettingSoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum CAMERA_WHEEL:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;


# instance fields
.field public final mPool:I

.field public final mRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const-string v1, "SHUTTER_CLICK"

    const/4 v2, 0x0

    const v3, 0x7f100004

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const-string v3, "CAMERA_WHEEL"

    const/4 v4, 0x1

    const v5, 0x7f100009

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->CAMERA_WHEEL:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const-string v5, "BEEP_ONCE"

    const/4 v6, 0x2

    const/high16 v7, 0x7f100000

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const-string v7, "BEEP_TWICE"

    const/4 v8, 0x3

    const v9, 0x7f100001

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mRes:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mPool:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object v0
.end method
