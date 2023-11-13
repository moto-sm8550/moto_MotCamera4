.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "DocScanUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostView(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onSceneProperty(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/motorola/camera/mcf/McfDoc;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/motorola/camera/mcf/McfDoc;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfDoc;->getPosition()[Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-static {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->access$000(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 6
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->access$200(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;[Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method
