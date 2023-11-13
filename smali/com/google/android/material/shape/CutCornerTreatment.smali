.class public final Lcom/google/android/material/shape/CutCornerTreatment;
.super Lkotlinx/coroutines/EventLoop_commonKt;
.source "CutCornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoop_commonKt;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCornerPath(Lcom/google/android/material/shape/ShapePath;FF)V
    .locals 4

    mul-float p0, p3, p2

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    .line 1
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFF)V

    float-to-double v0, v1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p3

    mul-double/2addr v0, v2

    float-to-double p2, p2

    mul-double/2addr v0, p2

    double-to-float p0, v0

    const/4 v0, 0x0

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, p2

    double-to-float p2, v0

    .line 4
    invoke-virtual {p1, p0, p2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
