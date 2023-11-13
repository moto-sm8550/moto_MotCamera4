.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$9;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$9;->val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$9;->val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    return-void
.end method
