.class public abstract Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;
.super Ljava/lang/Object;
.source "iAnimationTracker.kt"


# instance fields
.field public final nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public abstract addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/widgets/gl/animations/Animation<",
            "*>;I)V"
        }
    .end annotation
.end method

.method public abstract cancelAnimation(I)V
.end method

.method public abstract hasAnimation(I)Z
.end method

.method public final nextUniqueId()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method
