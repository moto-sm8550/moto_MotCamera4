.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/params/Face;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/params/Face;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/params/Face;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/params/Face;

    check-cast p1, Landroid/hardware/camera2/params/Face;

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
