.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;
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
    name = "EndDrag"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 2
    iget-wide v5, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    .line 3
    iget-wide v7, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    return-void
.end method
