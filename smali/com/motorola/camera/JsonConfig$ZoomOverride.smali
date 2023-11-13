.class public final Lcom/motorola/camera/JsonConfig$ZoomOverride;
.super Ljava/lang/Object;
.source "JsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/JsonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomOverride"
.end annotation


# instance fields
.field public final mJob:I

.field public final mMax:F

.field public final mMin:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMin:F

    .line 3
    iput p2, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMax:F

    .line 4
    iput p3, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mJob:I

    return-void
.end method
