.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;
.super Ljava/lang/Object;
.source "DualCaptureStateHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    return-object p0
.end method
