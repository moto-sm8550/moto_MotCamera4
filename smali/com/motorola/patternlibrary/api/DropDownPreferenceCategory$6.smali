.class public final Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;
.super Ljava/lang/Object;
.source "DropDownPreferenceCategory.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideViewIcon(Landroid/view/View;IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$newHeight:I

.field public final synthetic val$rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;->val$rootView:Landroid/view/View;

    iput p2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;->val$newHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;->val$newHeight:I

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;->val$rootView:Landroid/view/View;

    const p1, 0x7f0a0216

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;->val$rootView:Landroid/view/View;

    const p1, 0x7f0a0216

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
