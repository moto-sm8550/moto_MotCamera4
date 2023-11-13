.class public final Lcom/motorola/camera/mcf/McfPreview;
.super Ljava/lang/Object;
.source "McfPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;
    }
.end annotation


# instance fields
.field public volatile mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

.field public volatile mIsPreviewOpen:Z

.field public volatile mPreviewFormat:I

.field public volatile mPreviewHeight:I

.field public volatile mPreviewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    .line 6
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    return-void
.end method
