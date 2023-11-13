.class public final enum Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;
.super Ljava/lang/Enum;
.source "ShaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shaders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum BITMAP:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum BITMAP_OFFSCREEN:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum CAMERA_PREVIEW_ROUND_CORNER:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum CIRCLE:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum CIRCLE_SMOOTH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum CURVED_PROGRESS:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum DISPLAY_FLASH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum FRAME_1:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum FRAME_2:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum GRADIENT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum PREVIEW_STENCIL:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum RECTANGLE_SMOOTH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum RGB_BLUR:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum ROUNDED_RECT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum SECONDARY_GRADIENT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

.field public static final enum YUV:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;


# instance fields
.field public final mFshaderSourceId:I

.field public final mVshaderSourceId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v1, "CAMERA_PREVIEW"

    const/4 v2, 0x0

    const v3, 0x7f100006

    const v4, 0x7f100005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v3, "CAMERA_PREVIEW_ROUND_CORNER"

    const/4 v4, 0x1

    const v5, 0x7f100008

    const v6, 0x7f100007

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->CAMERA_PREVIEW_ROUND_CORNER:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v5, "FRAME_1"

    const/4 v6, 0x2

    const v7, 0x7f100011

    const v8, 0x7f100013

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->FRAME_1:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v9, "FRAME_2"

    const/4 v10, 0x3

    const v11, 0x7f100012

    invoke-direct {v5, v9, v10, v11, v8}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->FRAME_2:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 5
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v9, "BITMAP"

    const/4 v11, 0x4

    const v12, 0x7f100003

    const v13, 0x7f100002

    invoke-direct {v8, v9, v11, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->BITMAP:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v12, "BITMAP_OFFSCREEN"

    const/4 v13, 0x5

    const v14, 0x7f100019

    const v15, 0x7f100018

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->BITMAP_OFFSCREEN:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 7
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v14, "YUV"

    const/4 v15, 0x6

    const v13, 0x7f100026

    const v11, 0x7f100025

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->YUV:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 8
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "RGB_BLUR"

    const/4 v14, 0x7

    const v15, 0x7f10001e

    const v10, 0x7f10001d

    invoke-direct {v11, v13, v14, v15, v10}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->RGB_BLUR:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 9
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "GRADIENT"

    const/16 v15, 0x8

    const v14, 0x7f100015

    const v6, 0x7f100014

    invoke-direct {v10, v13, v15, v14, v6}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->GRADIENT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 10
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "SECONDARY_GRADIENT"

    const/16 v14, 0x9

    const v15, 0x7f100021

    const v4, 0x7f100020

    invoke-direct {v6, v13, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->SECONDARY_GRADIENT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 11
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "CURVED_PROGRESS"

    const/16 v15, 0xa

    const v14, 0x7f10000e

    const v2, 0x7f10000d

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->CURVED_PROGRESS:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 12
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "CIRCLE"

    const/16 v14, 0xb

    const v15, 0x7f100022

    const v7, 0x7f10000a

    invoke-direct {v2, v13, v14, v15, v7}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->CIRCLE:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 13
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "CIRCLE_SMOOTH"

    const/16 v14, 0xc

    move-object/from16 v16, v2

    const v2, 0x7f10000b

    invoke-direct {v7, v13, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->CIRCLE_SMOOTH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 14
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "ROUNDED_RECT"

    const/16 v14, 0xd

    move-object/from16 v17, v7

    const v7, 0x7f10001f

    invoke-direct {v2, v13, v14, v15, v7}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->ROUNDED_RECT:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 15
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "RECTANGLE_SMOOTH"

    const/16 v15, 0xe

    const v14, 0x7f10001c

    move-object/from16 v18, v2

    const v2, 0x7f10001b

    invoke-direct {v7, v13, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->RECTANGLE_SMOOTH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 16
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "DISPLAY_FLASH"

    const/16 v14, 0xf

    const v15, 0x7f100010

    move-object/from16 v19, v7

    const v7, 0x7f10000f

    invoke-direct {v2, v13, v14, v15, v7}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->DISPLAY_FLASH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    .line 17
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const-string v13, "PREVIEW_STENCIL"

    const/16 v15, 0x10

    const v14, 0x7f10001a

    move-object/from16 v20, v2

    const v2, 0x7f100011

    invoke-direct {v7, v13, v15, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->PREVIEW_STENCIL:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v11, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v6, v2, v0

    const/16 v0, 0xa

    aput-object v4, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    aput-object v7, v2, v15

    .line 18
    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->mVshaderSourceId:I

    .line 3
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->mFshaderSourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    return-object v0
.end method
