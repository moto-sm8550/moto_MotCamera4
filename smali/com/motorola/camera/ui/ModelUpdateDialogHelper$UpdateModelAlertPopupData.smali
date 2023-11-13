.class public final Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;
.super Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;
.source "ModelUpdateDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/ModelUpdateDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateModelAlertPopupData"
.end annotation


# instance fields
.field public feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-void
.end method
