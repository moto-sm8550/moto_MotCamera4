.class public final Lcom/motorola/camera/saving/XmpData$GImage;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/XmpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GImage"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mItemSemantic:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GImage;->mData:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GImage;->mItemSemantic:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GImage;->mData:Ljava/lang/String;

    const-string p1, "Segmentation"

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$GImage;->mItemSemantic:Ljava/lang/String;

    return-void
.end method
