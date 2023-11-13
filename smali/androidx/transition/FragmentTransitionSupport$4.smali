.class public final Landroidx/transition/FragmentTransitionSupport$4;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic val$realTransition:Landroidx/transition/Transition;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/FragmentTransitionSupport$4;->val$realTransition:Landroidx/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Landroidx/transition/FragmentTransitionSupport$4;->val$realTransition:Landroidx/transition/Transition;

    invoke-virtual {p0}, Landroidx/transition/Transition;->cancel()V

    return-void
.end method
