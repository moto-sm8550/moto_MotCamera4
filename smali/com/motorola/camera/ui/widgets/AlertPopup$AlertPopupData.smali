.class public Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;
.super Ljava/lang/Object;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertPopupData"
.end annotation


# instance fields
.field public backgroundColor:I

.field public keepOrientation:Z

.field public message:I

.field public messageHTML:Ljava/lang/String;

.field public messageText:Ljava/lang/String;

.field public negativeButtonText:I

.field public negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

.field public negativeOnCancel:Z

.field public positiveAllCaps:Z

.field public positiveButtonText:I

.field public positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

.field public title:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f0603a9

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    .line 12
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveAllCaps:Z

    return-void
.end method
