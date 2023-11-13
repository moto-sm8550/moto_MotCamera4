.class public final Lcom/motorola/camera/saving/XmpData$DepthFocus;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/XmpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthFocus"
.end annotation


# instance fields
.field public final mFocalPointType:Ljava/lang/String;

.field public final mFocalPointX:I

.field public final mFocalPointY:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointX:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointY:I

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/saving/XmpData$DepthFocus;->mFocalPointType:Ljava/lang/String;

    return-void
.end method
