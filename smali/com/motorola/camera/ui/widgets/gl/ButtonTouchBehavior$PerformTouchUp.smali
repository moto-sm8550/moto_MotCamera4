.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;
.super Ljava/lang/Object;
.source "ButtonTouchBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformTouchUp"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    .line 3
    iget-wide v2, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    .line 4
    iget-wide v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouchUp(Landroid/graphics/PointF;JJ)V

    return-void
.end method
