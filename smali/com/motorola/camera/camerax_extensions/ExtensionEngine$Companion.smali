.class public final Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;
.super Ljava/lang/Object;
.source "ExtensionEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/ExtensionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;
    .locals 10

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
