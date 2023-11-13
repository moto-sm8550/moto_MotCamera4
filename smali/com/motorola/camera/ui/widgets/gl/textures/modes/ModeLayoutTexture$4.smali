.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ModeLayoutTexture.java"


# instance fields
.field public final synthetic val$rotation:I

.field public final synthetic val$textures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;->val$textures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;->val$rotation:I

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;->val$textures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;->val$rotation:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
