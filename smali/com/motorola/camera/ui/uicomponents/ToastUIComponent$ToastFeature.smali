.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
.super Ljava/lang/Object;
.source "ToastUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastFeature"
.end annotation


# instance fields
.field public final mAlignment:I

.field public final mAutoHide:Z

.field public final mContentDescription:Ljava/lang/String;

.field public final mDismissOnCaptureStarts:Z

.field public final mIgnoreVisibilityRules:Z

.field public final mLandscapeAlignCenter:Z

.field public final mText:Ljava/lang/String;

.field public final mTextDescriptionStr:Ljava/lang/String;

.field public final mTextResource:I

.field public final mToastDuration:I

.field public final mToastStyle:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mVisible:Z

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    .line 6
    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    .line 7
    iput p5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:I

    .line 8
    iput-boolean p6, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    .line 9
    iput p7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    .line 10
    iput-object p8, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    .line 12
    iput-boolean p10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    .line 13
    iput-boolean p11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mDismissOnCaptureStarts:Z

    return-void
.end method
