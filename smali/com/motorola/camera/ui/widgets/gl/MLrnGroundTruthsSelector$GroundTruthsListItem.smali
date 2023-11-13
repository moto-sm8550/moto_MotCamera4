.class public final Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;
.super Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;
.source "MLrnGroundTruthsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroundTruthsListItem"
.end annotation


# instance fields
.field public mSelected:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    .line 2
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    return-void
.end method


# virtual methods
.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->setSelected(Z)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->access$000(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->setSelected(Z)V

    return-void
.end method
