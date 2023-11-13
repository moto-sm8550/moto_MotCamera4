.class public final synthetic Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/LevelerView;->setDisplayOrientation(ILandroid/view/View;)V

    return-void
.end method
