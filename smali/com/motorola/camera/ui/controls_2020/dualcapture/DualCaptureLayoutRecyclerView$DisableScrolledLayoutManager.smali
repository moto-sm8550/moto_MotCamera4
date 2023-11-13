.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$DisableScrolledLayoutManager;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;
.source "DualCaptureLayoutRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableScrolledLayoutManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$DisableScrolledLayoutManager;",
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;",
        "MotCamera4-v9.0.50.15_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
