.class public final Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedScroller"
.end annotation


# instance fields
.field public mDeltaTime:J

.field public mEffectiveRampDown:I

.field public mRampDownDuration:I

.field public mRampUpDuration:I

.field public mStartTime:J

.field public mStopTime:J

.field public mStopValue:F

.field public mTargetVelocityX:F

.field public mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    return-void
.end method


# virtual methods
.method public final getValueAt(J)F
    .locals 8

    .line 1
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v2, :cond_2

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v4

    .line 3
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v1, v6, v0

    long-to-float p1, p1

    iget p0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    .line 4
    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    sub-long/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    long-to-float p1, p1

    .line 5
    iget p0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method
