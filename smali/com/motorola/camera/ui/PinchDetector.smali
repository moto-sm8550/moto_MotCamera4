.class public final Lcom/motorola/camera/ui/PinchDetector;
.super Ljava/lang/Object;
.source "PinchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/PinchDetector$PinchListener;
    }
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/ui/PinchDetector$PinchListener;

.field public mPinchBegin:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/PinchDetector$PinchListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/PinchDetector;->mListener:Lcom/motorola/camera/ui/PinchDetector$PinchListener;

    return-void
.end method


# virtual methods
.method public final getSpan(Landroid/view/MotionEvent;)F
    .locals 3

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    float-to-double p0, p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
