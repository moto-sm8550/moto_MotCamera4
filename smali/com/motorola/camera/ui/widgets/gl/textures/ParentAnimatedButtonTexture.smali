.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;
.source "ParentAnimatedButtonTexture.java"


# static fields
.field public static final EPSILON_1:F


# instance fields
.field public mAction:I

.field public final mAnimFade:I

.field public final mAnimRotate:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

.field public mFadeAnimation:I

.field public final mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

.field public final mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->EPSILON_1:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    .line 7
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimFade:I

    .line 8
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimRotate:I

    return-void
.end method


# virtual methods
.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method
