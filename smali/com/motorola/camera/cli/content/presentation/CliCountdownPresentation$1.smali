.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;
.super Ljava/lang/Object;
.source "CliCountdownPresentation.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;-><init>(ILcom/motorola/camera/cli/CliEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
