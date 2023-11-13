.class public final Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;
.super Ljava/lang/Object;
.source "CapturedImageMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternateShotData"
.end annotation


# instance fields
.field public mFilepath:Ljava/lang/String;

.field public mIsPrimary:Z

.field public mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mFilepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mUuid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mIsPrimary:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;->mFilepath:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "Uuid:%s, IsPrimary:%b, Filepath:%s"

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
