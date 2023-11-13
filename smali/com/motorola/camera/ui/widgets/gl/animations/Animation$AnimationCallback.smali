.class public interface abstract Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationCallback"
.end annotation


# virtual methods
.method public abstract onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
.end method

.method public abstract onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
.end method

.method public abstract onAnimationRepeat()V
.end method

.method public abstract onAnimationStart()V
.end method

.method public abstract onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
.end method
