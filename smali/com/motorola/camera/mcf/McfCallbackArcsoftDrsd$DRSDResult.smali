.class public final Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;
.super Ljava/lang/Object;
.source "McfCallbackArcsoftDrsd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DRSDResult"
.end annotation


# instance fields
.field public countHist:I

.field public countHistThresh:I

.field public hdrMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    return-void
.end method
