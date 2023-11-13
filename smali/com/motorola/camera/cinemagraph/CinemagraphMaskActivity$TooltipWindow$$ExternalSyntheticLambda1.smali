.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;->f$2:I

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v0, v3, v1, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
