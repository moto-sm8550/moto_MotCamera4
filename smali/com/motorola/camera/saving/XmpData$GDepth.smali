.class public final Lcom/motorola/camera/saving/XmpData$GDepth;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/XmpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GDepth"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mFar:I

.field public mRoi:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/String;

    const/16 p1, 0xff

    .line 3
    iput p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Landroid/graphics/Rect;

    return-void
.end method
