.class public abstract Lcom/motorola/camera/ui/widgets/Popup;
.super Lcom/motorola/camera/ui/widgets/RotateLayout;
.source "Popup.java"


# instance fields
.field public mFadeIn:Landroid/view/animation/Animation;

.field public mFadeOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f010026

    .line 2
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/Popup;->mFadeIn:Landroid/view/animation/Animation;

    const p2, 0x7f010027

    .line 3
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/Popup;->mFadeOut:Landroid/view/animation/Animation;

    return-void
.end method
