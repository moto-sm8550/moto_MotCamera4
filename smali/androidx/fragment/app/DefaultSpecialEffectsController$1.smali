.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$1;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->executeOperations(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field public final synthetic val$awaitingContainerChanges:Ljava/util/List;

.field public final synthetic val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 6
    iget p0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:I

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->_applyState(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
