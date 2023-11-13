.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ParentAnimatedButtonTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

.field public final synthetic val$displayOrientation:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3$1;->val$displayOrientation:I

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$3$1;->val$displayOrientation:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method
