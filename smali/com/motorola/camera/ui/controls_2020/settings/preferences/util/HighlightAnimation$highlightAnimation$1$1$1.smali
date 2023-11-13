.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HighlightAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation;->highlightAnimation(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $itemView:Landroid/view/View;

.field public final synthetic $originalBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;->$itemView:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;->$originalBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;->$itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/util/HighlightAnimation$highlightAnimation$1$1$1;->$originalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
