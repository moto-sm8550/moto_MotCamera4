.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CliCountdownPresentation.kt"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
