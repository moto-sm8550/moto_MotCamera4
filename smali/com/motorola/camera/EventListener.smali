.class public interface abstract Lcom/motorola/camera/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;


# virtual methods
.method public abstract dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
.end method

.method public abstract getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
.end method

.method public abstract getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
.end method

.method public abstract isCliDisplay()Z
.end method

.method public abstract onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract playHaptic(I)V
.end method

.method public abstract registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
.end method

.method public abstract registerStateChangeListener(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterStateChangeListener(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation
.end method
