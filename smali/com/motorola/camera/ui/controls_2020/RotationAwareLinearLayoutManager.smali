.class public Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "RotationAwareLinearLayoutManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "MotCamera4-v9.0.50.15_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public rotation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method
