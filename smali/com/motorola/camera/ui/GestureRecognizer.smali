.class public final Lcom/motorola/camera/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;,
        Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;,
        Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;,
        Lcom/motorola/camera/ui/GestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field public firstCancel:Z

.field public final mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

.field public final mPinchDetector:Lcom/motorola/camera/ui/PinchDetector;

.field public mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/GestureRecognizer$Listener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 4
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/DownUpDetector;

    new-instance p2, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/PinchDetector;

    new-instance p2, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/GestureRecognizer$MyPinchListener;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/PinchDetector;-><init>(Lcom/motorola/camera/ui/PinchDetector$PinchListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Lcom/motorola/camera/ui/PinchDetector;

    return-void
.end method
