.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;
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
    name = "PerformTouchDown"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    .line 3
    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouchDown(Landroid/graphics/PointF;J)V

    return-void
.end method
