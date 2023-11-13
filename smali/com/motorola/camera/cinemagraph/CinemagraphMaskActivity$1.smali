.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;
.super Ljava/lang/Object;
.source "CinemagraphMaskActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->access$301(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    :goto_0
    return-void
.end method
