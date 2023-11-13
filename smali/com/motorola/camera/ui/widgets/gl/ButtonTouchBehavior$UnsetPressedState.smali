.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;
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
    name = "UnsetPressedState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->updateDrawableState()V

    return-void
.end method
