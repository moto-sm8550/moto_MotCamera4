.class public final Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SequenceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/ui/widgets/gl/animations/Animation<",
        "Lcom/motorola/camera/ui/widgets/gl/textures/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public final mAnimationsFinishList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/motorola/camera/ui/widgets/gl/animations/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final mAnimationsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/motorola/camera/ui/widgets/gl/animations/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentCount:I

.field public mOrientation:I

.field public final mRepeatCount:I

.field public mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mRepeatCount:I

    return-void
.end method


# virtual methods
.method public final addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final animationUpdate([F)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    .line 7
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->animationUpdate([F)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mRepeatCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->restartSequence()V

    goto :goto_0

    .line 15
    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    if-lt v0, p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->restartSequence()V

    :cond_6
    :goto_0
    return v1
.end method

.method public final restartSequence()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 4
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startSequence([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method

.method public final startSequence([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method
