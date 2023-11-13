.class public abstract Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/motorola/camera/ui/widgets/gl/textures/Texture;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

.field public mCanceled:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    return-void
.end method


# virtual methods
.method public abstract animationUpdate([F)Z
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    return-void
.end method

.method public final setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation
.end method
